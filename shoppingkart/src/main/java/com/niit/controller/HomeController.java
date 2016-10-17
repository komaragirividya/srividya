package com.niit.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.niit.dao.UserDAO;

import com.niit.model.User;
@Controller
public class HomeController 
{
	@Autowired
	UserDAO userDAO;
	@RequestMapping("/")
	public String getLanding()
	{
		return "index";
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
		userDAO.addUser(user);
		ModelAndView mv=new ModelAndView("/");
		mv.addObject("success","registered successfully");
		return "redirect:/";
	}
	
	

}