package com.springproject.Test;

import static org.junit.Assert.assertEquals;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.springproject.dao.CategoryDAO;
import com.springproject.model.Category;

@ComponentScan("com.springproject")
public class TestCategoryDAO {

	@Autowired
	private static Category category;

	@Autowired
	private static CategoryDAO categoryDAO;
	

@SuppressWarnings("resource")
@BeforeClass
public static void initialize()
{
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.springproject.*");
	context.refresh();
	
	category = (Category) context.getBean("category");
	categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
}


@Test
public void createCategory()
{
	//Category category=new Category();
	category.setCategoryName("Muffins");
	category.setCategorydescription("small");
	categoryDAO.add(category);
	int catno = categoryDAO.list().size();
	assertEquals(5 , catno);

}


	@Test
	public void editCategory(){
		category.setCategoryId(912);
		category.setCategoryName("dessert");
		category.setCategorydescription("cool");
		categoryDAO.edit(category);
		int catno = categoryDAO.list().size();
		assertEquals(5,catno);
}
	@Test
	public void deleteCategory()
	{
		categoryDAO.delete(912);
		int catno = categoryDAO.list().size();
		assertEquals(4, catno);
	}


}
