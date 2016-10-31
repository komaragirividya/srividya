package com.niit.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.User;
import com.niit.shoppingkartfront.util.Util;

@Controller
public class CartController 
{
	@Autowired(required=true)
	private CartDAO cartDAO;
	@Autowired(required=true)
	private Cart cart;
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	@Autowired(required=true)
	private ProductDAO productDAO;
	@Autowired(required=true)
	private Product product;
	@Autowired(required=true)
	private User user;
	
	
	@RequestMapping(value="/myCart", method=RequestMethod.GET)
	public String listCart(Model model){
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList",this.cartDAO.list());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("displayCart","true");
		return "cart";
	}
	@RequestMapping(value="/cart/add/{id}", method=RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id,HttpServletRequest request)
	{
		Product product=productDAO.getProduct(id);
		//User user = userDAO.getUser(id);
		Cart cart=new Cart();
		cart.setPrice(product.getPrice());
		cart.setProId(product.getId());
		cart.setProName(product.getName());	
		cart.setQuantity("1");
		cart.setUserId(1);
		cart.setStatus("N");
		
		cartDAO.addCart(cart);
		
		return "redirect:/";
	}
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model)
	{
		int i,j=0;
		int s=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list().get(i).getPrice();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.list());
		
		return "/checkout";
	    
	}
	@RequestMapping("/cart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id,Model model)
	{
		cartDAO.deleteCart(id);
		return "redirect:/myCart";
	}
	
	
	
	@RequestMapping("/payment")
	public String getPayment()
	{
		return "payment";
	}
	
	@RequestMapping("/thanks")
	public String getThanks()
	{
		return "thanks";
	}
	
}
