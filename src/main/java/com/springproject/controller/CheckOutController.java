package com.springproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.dao.CardDAO;
import com.springproject.dao.CartDAO;
import com.springproject.dao.CheckOutDAO;
import com.springproject.dao.UserDAO;
import com.springproject.model.Card;
import com.springproject.model.Cart;
import com.springproject.model.Users;
import com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.Binding;

@Controller
public class CheckOutController {

	@Autowired
	CheckOutDAO checkOutDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CardDAO cardDAO;
	
	@RequestMapping("/{userid}")
	public String CheckoutPage(@ModelAttribute ("card") Card card,@PathVariable("userid") int userid, Model model){
		/*card.setCard_userid(userid);*/
		/*Cart cart = new Cart();
		model.addAttribute("cart", cart);*/
		model.addAttribute("total", checkOutDAO.getTotal(userid));
		/*cardDAO.saveCard(card);*/
		return "CheckOut";
		
	}

	
	/*@RequestMapping(value="/cardPay/invoice" , method=RequestMethod.POST)
	public String InvoicePage(HttpSession session,Model model){
		int userId = (Integer) session.getAttribute("userid");
    	model.addAttribute("user", userDAO.getUserById(userId));
    	model.addAttribute("cd", cartDAO.getCart(userId));
    	model.addAttribute("total", checkOutDAO.getTotal(userId));
		
		return "Invoice";*/
		
		
	
	
	@RequestMapping(value="/invoice",method=RequestMethod.POST)
	public String InvoicePage(@ModelAttribute ("card") Card card,HttpSession session, Model model){
		//Card cardPay = new Card();
		int userId = (Integer) session.getAttribute("userid");
		card.setCard_userid(userId);
		cardDAO.saveCard(card);
		model.addAttribute("user", userDAO.getUser(userId));
    	model.addAttribute("cd", cartDAO.getCartByUser(userId));
    	model.addAttribute("total", checkOutDAO.getTotal(userId));
		
		
		return "Invoice";
	
	
	}
	
	/*@RequestMapping(value="/invoice", method=RequestMethod.POST)
	public void Page(Model model){
		
	}*/
	
}
