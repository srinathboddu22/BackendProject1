package com.springproject.dao;




import java.util.List;

import com.springproject.model.Category;




public interface CategoryDAO {
	
	public boolean saveCategory(Category category);
	public void add(Category category);
	public void edit(Category category);
	public void delete(int Catid);
	public Category getCategory(int Catid);
	public List getAllCategory();

	public List<Category> list();
}