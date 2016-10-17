package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.model.User;

public class UserTest 
{

	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		System.out.println("success");
		User user=(User) context.getBean("user");
		
		user.setName("sri");
		user.setAddress("nagar");
		user.setEmail("kragiri@gmail.com");
		user.setPassword("sividya1");
		user.setPhone("94594819");
		
		userDAO.addUser(user);

	}

}
