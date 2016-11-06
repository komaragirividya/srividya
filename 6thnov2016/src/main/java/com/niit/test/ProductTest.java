package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

public class ProductTest
{
	public static void main(String[]args)
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		ProductDAO productDAO=(ProductDAO) context.getBean("productDAO");
		System.out.println("success");
		
		Product product=(Product)context.getBean("product");
		
		
		product.setId("01");
		product.setName("tmh");
		product.setPrice(200);
		product.setDescription("900");
				
		productDAO.addProduct(product);
	}
}