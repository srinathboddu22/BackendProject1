package com.springproject.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.dao.ProductDAO;
import com.springproject.dao.UserDAO;
import com.springproject.model.Category;
import com.springproject.model.Product;
import com.springproject.service.CategoryService;
import com.springproject.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	@RequestMapping(value="/product{categoryId}",method=RequestMethod.GET)
	public String categoryList(@PathVariable ("categoryId") int categoryId,Map<String, Object> map,Model model)
	{ Product product = new Product();
	map.put("product", product);
	map.put("Listpro",productDAO.getProductByCategory(categoryId));
		return "Productlist";
	}
	
}