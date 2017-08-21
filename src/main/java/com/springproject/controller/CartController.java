package com.springproject.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dao.CartDAO;
import com.springproject.dao.ProductDAO;
import com.springproject.model.Cart;
import com.springproject.model.Product;
import com.springproject.service.ProductService;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	 
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	ProductService productService;
	
	
	Cart cart;

	
	
    @RequestMapping(value="addToCart/{id}")
    public String addProductToCart(@PathVariable("id") int id, HttpSession session,Model model)
    {
    	int userId = (Integer) session.getAttribute("userid");
    	int q=1;
    	if (cartDAO.getitem(id, userId) != null) {
			Cart item = cartDAO.getitem(id, userId);
			item.setQuantity(item.getQuantity() + q);
			Product p = productDAO.getProduct(id);
			System.out.println(item);
			item.setProductprice(p.getPrice());
			model.addAttribute("message", p.getProductName() +"is already exist");
			item.setSubTotal(item.getProductprice() + (q*p.getPrice()));
			cartDAO.saveProductToCart(item);
			return "ProductList";
		} else {
			Cart item = new Cart();
			Product p = productDAO.getProduct(id);
			item.setProductid(p.getProductid());
			item.setProductname(p.getProductName());
			item.setUserid(userId);
			item.setQuantity(q);
			item.setSubTotal(q * p.getPrice());
			item.setProductprice(p.getPrice());
			cartDAO.saveProductToCart(item);
			return "redirect:/";
		}
    
    	
    	
    }

	@RequestMapping("/cart")
    public String CartDetails(Model model)   {
		Cart cd = new Cart();
		
		model.addAttribute("cartList", cartDAO.getAllCartDetails());
		return "CartDetails";
    	
    }
}

