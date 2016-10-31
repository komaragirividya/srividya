package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;

//
@EnableTransactionManagement

//to connect to database by taking all attributes from pojo class
@Repository("cartDAO")
public class CartDAOImpl implements CartDAO
{
	  @Autowired    
	   private SessionFactory sessionfactory;

	  
	   public CartDAOImpl(SessionFactory sessionfactory)
	   {
		   this.sessionfactory=sessionfactory;
	   }
	   
	   //used for transaction from model to DAO class
	   @Transactional
	   public void addCart(Cart cart)
	   {
		  sessionfactory.getCurrentSession().saveOrUpdate(cart);
	   }
	   
	   @Transactional
	   public void deleteCart(int id)
	   {
		   Cart cart=new Cart();
		   cart.setId(id);
			sessionfactory.getCurrentSession().delete(cart);
	   }
	   
	   @Transactional
	   public Cart getCart(String p_id)
	   {
		   String hql="from Cart where u_id="+"'"+p_id+"'";
			Query query=sessionfactory.getCurrentSession().createQuery(hql);
			List<Cart> list=(List<Cart>) query.list();
			if(list!=null&& !list.isEmpty())
			{
				return list.get(0);
			}
			return null;
	   }
	   @Transactional
	   public List<Cart> list()
	   {
		   List<Cart> list= (List<Cart>) sessionfactory.getCurrentSession().createCriteria(Cart.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return list;
	   }
}