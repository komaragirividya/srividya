package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;
import com.niit.shoppingkartfront.util.Util;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	@RequestMapping(value="/supplier/add", method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
	{

		Util util = new Util();
		String id=  util.replace(supplier.getId(), ",", "");
		supplier.setId(id);
		supplierDAO.addSupplier(supplier);

		return "redirect:/supplier";
		//return "supplier";
	}
	@RequestMapping("supplier/remove/{id}")
	public String deleteSupplier(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e)
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/supplier";
	}
	

	@RequestMapping("supplier/edit/{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) 
	{
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierDAO.getSupplier(id));
		model.addAttribute("listSupplier", this.supplierDAO.list());
		return "supplier";
	}
	

	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String listSuppliers(Model model)
	{
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "supplier";
	}
}
