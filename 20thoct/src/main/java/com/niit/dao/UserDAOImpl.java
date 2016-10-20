package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;
@EnableTransactionManagement
//connects to DB by taking attributes from POJO class
@Repository("userDAO")
public class UserDAOImpl implements UserDAO
{  //IT WILL CREATE AN OBJECT WITHOUT HELP OF NEW OPERATOER
	@Autowired
	private SessionFactory sessionfactory;
	
	public UserDAOImpl(SessionFactory sessionfactory)
	{
		this.sessionfactory=sessionfactory;
	}
	//used to transaction from model to dao class
	@Transactional
	public void addUser(User user)
	{
		sessionfactory.getCurrentSession().saveOrUpdate(user);
	}
}
