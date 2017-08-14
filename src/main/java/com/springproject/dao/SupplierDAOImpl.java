package com.springproject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.model.Category;
import com.springproject.model.Supplier;
@Repository
public class SupplierDAOImpl implements SupplierDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public boolean saveSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
	}

	public void add(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(supplier);
	}

	public void edit(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(supplier);
	}

	public void delete(int Supid) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getSupplier(Supid));
	}

	public Supplier getSupplier(int Supid) {
		// TODO Auto-generated method stub
		return (Supplier)sessionFactory.getCurrentSession().get(Supplier.class, Supid);
	}

	public List getAllSupplier() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}

	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession()
				.createQuery("from Supplier").list();
       return listSupplier;
	
}
}
	
