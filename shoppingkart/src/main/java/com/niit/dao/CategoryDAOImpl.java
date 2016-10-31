package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
@EnableTransactionManagement
@SuppressWarnings("deprecation")
//connects to DB by taking attributes from POJO class
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO
{  //IT WILL CREATE AN OBJECT WITHOUT HELP OF NEW OPERATOER
	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	//used to transaction from model to dao class
	@Transactional
	public void addCategory(Category category)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	
	@Transactional
	public void delete(String id)
	{
		Category category =new Category();
		category.setId(id);
		sessionFactory.getCurrentSession().delete(category);
		
	}
	@Transactional
	public Category getCategory(String id)
	{
		String hql= "from Category where id = " +"'" + id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Category> listCategory= (List<Category>)query.list();
		if (listCategory != null && !listCategory.isEmpty())
		{
			return listCategory.get(0);
		}
		return  null;
	}
	
	@Transactional
	public Category getByName(String name)
	{
		String hql= "from Category where name = " +"'" + name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Category> listCategory= (List<Category>)query.list();
		if (listCategory != null && !listCategory.isEmpty())
		{
			return listCategory.get(0);
		}
		return  null;
	}
	@Transactional
	public List<Category> list()
	{
		List<Category> listCategory = (List<Category>)sessionFactory.getCurrentSession().createCriteria(Category.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	     return listCategory;
	}
}
