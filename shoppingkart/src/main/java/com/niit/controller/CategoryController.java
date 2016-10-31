package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.shoppingkartfront.util.Util;

@Controller
public class CategoryController
{
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;
	
	
	@RequestMapping(value="/category/add", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category){

		categoryDAO.addCategory(category);
		Util util = new Util();
		String id=  util.replace(category.getId(), ",", "");
		category.setId(id);
		return "redirect:/category";
		//return "category";
		
	}
	
	
	@RequestMapping("category/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception 
	{
		try {
			categoryDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/category";
	}
	

	@RequestMapping("category/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("editCategory");
		
		model.addAttribute("category", this.categoryDAO.getCategory(id));
		model.addAttribute("listCategory", this.categoryDAO.list());
		return "category";
	}
	
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String listCategories(Model model){
		model.addAttribute("category", category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "category";
	}
	
	
}