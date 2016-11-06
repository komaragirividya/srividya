package com.niit.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.shoppingkartfront.util.FileUtil;
import com.niit.shoppingkartfront.util.Util;

@Controller
public class ProductController 
{
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	
	@Autowired
	Supplier supplier;

	
	@Autowired
	SupplierDAO supplierDAO;
	
	private Path path;
	
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,HttpServletRequest request)
	{

		Util util = new Util();
		String id=  util.replace(product.getId(), ",", "");
		product.setId(id);
		
		Category category=categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.addCategory(category);
		
		Supplier supplier=supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.addSupplier(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		productDAO.addProduct(product);

		MultipartFile file =product.getImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getId()+".jpg");
		
		if(file!=null && !file.isEmpty())
		{
			try{
				file.transferTo(new File(path.toString()));
				System.out.println("image uploaded....");
			}
			catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("image saving failed",e);
				//System.out.println("image uploaded.... : "+e);
			}
			
		}
		
		
		
		
		/*FileUtil.upload(path.toString(), file,product.getId()+".jpg");*/
		System.out.println("image uploaded.... : "+product.getId());
		return "redirect:/product";
		//return "product";
	}
	
	@RequestMapping("product/remove/{id}")
	public String deleteProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e)
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	

	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) 
	{
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("listProduct", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "product";
	}
	

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model)
	{
		model.addAttribute("product",new Product());
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("category",new Category());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "product";
	}
	
	@RequestMapping(value="product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id,Model model,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.getProduct(id));
		return "redirect:/backToHome";		
	}

	@RequestMapping(value="/backToHome",method=RequestMethod.GET)
	public String backToHome (@ModelAttribute("selectedProduct")
	final Product selectedProduct,final Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		return "index";
	}
	
}
