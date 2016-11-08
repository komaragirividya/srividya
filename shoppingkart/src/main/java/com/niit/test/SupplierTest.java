package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierTest 
{

	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		System.out.println("success");
		Supplier supplier=(Supplier) context.getBean("supplier");
		
		supplier.setId("001");
		supplier.setName("nagar");
		supplier.setAddress("kragiri@gmail.com");
		supplier.setPhone("kragiri@gmail.com");
		supplierDAO.addSupplier(supplier);
	}

}
