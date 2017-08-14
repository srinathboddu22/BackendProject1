package com.springproject.hbconfig;



import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.springproject.dao.CategoryDAO;
import com.springproject.dao.CategoryDAOImpl;
import com.springproject.dao.UserDAO;
import com.springproject.dao.UserDAOImpl;
import com.springproject.model.Category;
import com.springproject.model.Product;
import com.springproject.model.Supplier;
import com.springproject.model.Users;

@Configuration
@ComponentScan("com.springproject")
@EnableTransactionManagement
public class HbConfig {

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword(""); 
		System.out.println("Datasource");
		return dataSource;

	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		/*properties.put("hbm2ddl.auto", "create");*/
		properties.put("hibernate.hbm2ddl.auto", "update");
		System.out.println("Hibernate Properties");
		return properties;

	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		//sessionBuilder.scanPackages("com.springproject");
		sessionBuilder.addAnnotatedClasses(Users.class);
		sessionBuilder.addAnnotatedClasses(Category.class);
		sessionBuilder.addAnnotatedClasses(Product.class);
		sessionBuilder.addAnnotatedClasses(Supplier.class);
		System.out.println("Session");
		
		return sessionBuilder.buildSessionFactory();
		
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		System.out.println("Transaction");
		return transactionManager;
	}

/*	@Autowired
	@Bean(name = "userDAO")
	public UserDAO getUserDetailsDAO(SessionFactory sessionFactory) {
			return new UserDAOImpl(sessionFactory);
	}
	
	

	@Autowired
	@Bean(name = "categoryDAO")
	public CategoryDAO getcategoryDetailsDAO(SessionFactory sessionFactory) {
			return new CategoryDAOImpl(sessionFactory);
	}
	
	
	*/
	
}