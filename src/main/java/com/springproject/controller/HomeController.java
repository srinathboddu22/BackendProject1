package com.springproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.dao.CartDAO;
import com.springproject.dao.CartDAOImpl;
import com.springproject.dao.ProductDAO;
import com.springproject.model.Cart;
import com.springproject.model.Product;

import com.springproject.service.CategoryService;
import com.springproject.service.ProductService;


@Controller
public class HomeController {
 
	@Autowired
	ProductDAO productDAO;
	/*@Autowired
	CartDAO cartDAO;
	
	@Autowired
	SessionFactory 	sessionFactory;*/
	
	@RequestMapping(value="/product{Categoryid}", method=RequestMethod.GET)
	public String categoryList(@PathVariable ("Categoryid") int Categoryid , Map<String,Object> map , Model model)
	{
		Product product = new Product();
		map.put("product", product);
		map.put("Listpro", productDAO.getProductByCategory(Categoryid));
		return "Productlist";
	}
	@RequestMapping("/index")
	public String Homepage()
	{
		return "redirect:/";
	}
}