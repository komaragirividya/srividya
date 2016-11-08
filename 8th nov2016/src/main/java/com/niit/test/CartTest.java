package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDAO;
import com.niit.model.Cart;

public class CartTest 
{

	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		CartDAO cartDAO = (CartDAO) context.getBean("cartDAO");
		System.out.println("success");
		Cart cart=(Cart) context.getBean("cart");
		
		cart.setId(01);
		cart.setProId("nagar");
		cart.setProName("bmw");
		cart.setUserId("U_89");
		cart.setPrice(500000);
		cart.setQuantity("9");
		cart.setStatus("bought");
		
		cartDAO.addCart(cart);
		
			

	}

}
