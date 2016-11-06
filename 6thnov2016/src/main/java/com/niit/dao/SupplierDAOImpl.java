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
import com.niit.model.Supplier;
@EnableTransactionManagement
//connects to DB by taking attributes from POJO class
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO
{  //IT WILL CREATE AN OBJECT WITHOUT HELP OF NEW OPERATOER
	@Autowired
	private SessionFactory sessionfactory;
	
	public SupplierDAOImpl(SessionFactory sessionfactory)
	{
		this.sessionfactory=sessionfactory;
	}
	//used to transaction from model to dao class
	@Transactional
	public void addSupplier(Supplier supplier)
	{
		sessionfactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	@Transactional
	public void delete(String id)
	{
		Supplier supplier =new Supplier();
		supplier.setId(id);
		sessionfactory.getCurrentSession().delete(supplier);
		
	}
	@Transactional
	public Supplier getSupplier(String id)
	{
		String hql= "from Supplier where id = " +"'" + id +"'";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		List<Supplier> listSupplier= (List<Supplier>)query.list();
		if (listSupplier != null && !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return  null;
	}
	
	@Transactional
	public Supplier getByName(String name)
	{
		String hql= "from Supplier where name = " +"'" + name +"'";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		List<Supplier> listSupplier= (List<Supplier>)query.list();
		if (listSupplier != null && !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return  null;
	}
	@Transactional
	public List<Supplier> list()
	{
		List<Supplier> listSupplier = (List<Supplier>)sessionfactory.getCurrentSession().createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	     return listSupplier;
	}
}
