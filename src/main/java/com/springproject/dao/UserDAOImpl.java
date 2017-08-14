package com.springproject.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.model.Product;
import com.springproject.model.Users;
@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory; 
		
	}
	
	@Transactional
	public boolean saveUser(Users users) {
		
		
		sessionFactory.getCurrentSession().saveOrUpdate(users);
		
		return true;
	}

	public Users getUserById(int id) {
		
		return null;
	}

	public void removeUserById(int id) {
		
		
}
	
	
	@Transactional
	public Users get(String email) {
		@SuppressWarnings("deprecation")
		Criteria c = sessionFactory.getCurrentSession().createCriteria(Users.class);
		c.add(Restrictions.eq("email", email));

		@SuppressWarnings("unchecked")
		List<Users> listUser = (List<Users>) c.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		} else {
			return null;
		}

}
	@Transactional
	public List<Users> list() {
	List<Users>users=	(List<Users>)sessionFactory.getCurrentSession().createQuery("from Users").list();
		return users;
	}
	
	
}