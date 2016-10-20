package com.niit.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Category;
import com.niit.model.User;
@Controller
public class HomeController 
{
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String onLoad(Model model)
	{
		System.out.println("onLoad");
		model.addAttribute("category",category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String login(@RequestParam(value="error",required = false) String error,@RequestParam(value="logout", required = false) String logout,Model model)
	{ if(error!=null)
	{
		System.out.println("Error......");
		model.addAttribute("loginerror","...invalid username and password");
	}
	if(logout!=null)
	{
		System.out.println("Logout called......");
		model.addAttribute("loginmsg","...you have been logged out");
	}
	
		return "login";
	}
	
	
	@RequestMapping(value="/user")
	public String getUser()
	{
		return "login";
	}
	
	
	@RequestMapping("/admin")
	public String getAdmin()
	{
		return "adminHome";
	}
	
	@RequestMapping("/register")
	public ModelAndView register(Model m)
	{
		m.addAttribute("user",new User());
		ModelAndView model=new ModelAndView("signUp");
		return model;
	}
	
	@RequestMapping(value="register/add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("user") User user, BindingResult result)
	{
		user.setRole("ROLE_USER");
		
		userDAO.addUser(user);
		ModelAndView mv=new ModelAndView("/");
		mv.addObject("success","registered successfully");
		return "redirect:/";
	}
	
	

}