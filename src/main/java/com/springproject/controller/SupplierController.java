package com.springproject.controller;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.springproject.dao.SupplierDAO;
import com.springproject.model.Supplier;
import com.springproject.service.SupplierService;
@Controller
public class SupplierController {

	@Autowired
	SupplierDAO supplierDAO;

	
	@RequestMapping(value="/supplier",method=RequestMethod.GET)
	public String CategoryPage(Model model)
	{
 		model.addAttribute("supplier", new Supplier());
		return "Supplier";
		
	}
	 
/*	@RequestMapping(value="/saveSupplier",method = RequestMethod.POST)
public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model model)
{         
		    supplierDAO.saveSupplier(supplier);
			return "redirect:/supplier";
		
			}

*/
	@Autowired
	private SupplierService supplierService;
	
	   @RequestMapping(value="/supplier")
		public String setupForm(Map<String, Object> map,Model model)
		{
		   Supplier supplier = new Supplier();
			map.put("supplier", supplier);
			map.put("supplierList",supplierService.getAllSupplier());
			return "Supplier";
		}
	
	
	@RequestMapping(value="/supplier.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Supplier supplier, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Supplier supplierResult = new Supplier();
			//only in Java7 you can put String in switch
		 if (action.equals("Add"))
		 {
			 supplierService.add(supplier);
			 supplierResult = supplier;
			
		 }
		 if (action.equals("Edit"))
				 {
			 supplierService.edit(supplier);
			 supplierResult = supplier;
			
		 }
		 if (action.equals("Delete")){
			 supplierService.delete(supplier.getSupplierid());
			 supplierResult = new Supplier();
			
		 }
		 if (action.equals("Search")){
			 Supplier searchedSupplier = supplierService.getSupplier(supplier.getSupplierid());
			 supplierResult = searchedSupplier!=null ? searchedSupplier : new Supplier();
			
		}
		map.put("supplier", supplierResult);
		map.put("supplierList", supplierService.getAllSupplier());
		return "Supplier";
	}
	
	
	}


