package com.springproject.controller;


import java.security.Principal;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dao.CategoryDAO;
import com.springproject.dao.ProductDAO;
import com.springproject.dao.SupplierDAO;
import com.springproject.dao.UserDAO;
import com.springproject.model.Product;
import com.springproject.model.Users;

@Controller
public class AdminController {

	
	/* @RequestMapping(value="/admin",method=RequestMethod.GET)
	public String CategoryPage(Model model)
	{
 		
		return "Admin";
	
	
	}*/
	
	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
    CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;
	
	 @RequestMapping("/login")
	    public String login(@RequestParam(value="error",required=false) String error,
	    		@RequestParam(value="logout",required=false) String logout,
	    		Model model){
	    	if(error!=null)
	    		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	    	if(logout!=null)
	    		model.addAttribute("logout","Loggedout successfully");
	    		model.addAttribute("LoginPageClicked", true);
	    	return "login";
	    	
	    }
	    @SuppressWarnings("unchecked")
		@RequestMapping(value = "/login_session_attributes")
		public String login_session_attributes(HttpSession session,Model model) {
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			Users user = userDAO.get(email);
			session.setAttribute("userid", user.getId());
			session.setAttribute("name", user.getEmail());
			session.setAttribute("LoggedIn", "true");

			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
			.getAuthentication().getAuthorities();
			String role="ROLE_USER";
			for (GrantedAuthority authority : authorities) 
			{
			  
			     if (authority.getAuthority().equals(role)) 
			     {
			    	 session.setAttribute("UserLoggedIn", "true");
			    	 /*session.setAttribute("cartsize",cartDAO.cartsize((Integer)session.getAttribute("userid")));*/
			    	 return "redirect:/";
			     }
			     else 
			     {
			    	 session.setAttribute("Administrator", "true");
			    	 model.addAttribute("product",  new Product());
			    	 model.addAttribute("ProductPageClicked", "true");
			    	 model.addAttribute("supplierList",supplierDAO.list());
			    	 model.addAttribute("categoryList",categoryDAO.list());
				 return "Admin";
			     }
		}
			return "index";
		
	}
}  
	
	
	
	
    

