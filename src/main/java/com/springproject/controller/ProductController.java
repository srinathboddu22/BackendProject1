package com.springproject.controller;

import java.nio.file.Paths;
import java.util.Map;
import java.io.File;
import java.nio.file.Path;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.springproject.dao.CategoryDAO;
import com.springproject.dao.ProductDAO;
import com.springproject.dao.SupplierDAO;
import com.springproject.model.Product;
import com.springproject.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;
	
	private Path path;
	

/*	@RequestMapping(value="/productsave",method=RequestMethod.GET)
	public String getProductPage(@ModelAttribute("product") Product product,Model model)
	
	{
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		model.addAttribute("product",new Product());
		return "ProductSave";
		
	}
	
	
	
	@RequestMapping(value="/saveProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,Model model)
	{
		productDAO.saveProduct(product);
		return "redirect:/productsave";
	   }
	*/
	
	@Autowired
	private ProductService productService;
	
	
	   @RequestMapping(value="/product")
		public String setupForm(Map<String, Object> map,Model model)
		{
		   Product product = new Product();
			map.put("product", product);
			map.put("productList",productService.getAllProduct());
			model.addAttribute("categoryList", categoryDAO.list());
			model.addAttribute("supplierList", supplierDAO.list());
			return "Product";
		}
	
	
	@RequestMapping(value="/product.do", method=RequestMethod.POST)
	public String doActions(RedirectAttributes attributes,HttpServletRequest request,@ModelAttribute Product product, BindingResult result, @RequestParam String action, Map<String, Object> map,Model model,
			@RequestParam("file") MultipartFile file)
            		throws Exception
	{
		Product productResult = new Product();
		 if (action.equals("Add"))
		 {
			 productResult = product;
        product.setImage(file.getBytes());
		        productService.add(product);
		 }
			 
		 if (action.equals("Edit"))
				 {
			 productService.edit(product);
			 productResult = product;
			
		 }
		 if (action.equals("Delete")){
			 productService.delete(product.getProductid());
			 productResult = new Product();
			
		 }
		 if (action.equals("Search")){
			 Product searchedProduct = productService.getProduct(product.getProductid());
			 productResult = searchedProduct!=null ? searchedProduct : new Product();
			
		}
		map.put("product", productResult);
		map.put("productList", productService.getAllProduct());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "Product";
	}
	}