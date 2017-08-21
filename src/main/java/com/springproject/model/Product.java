package com.springproject.model;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile; 

@Entity
@Component
@Table(name="Product_details")



public class Product implements Serializable
{
	private static final long serialVersionUID = 1L; 
	@Id
	@GeneratedValue
	private int productid; 
	private String productName;
	private String productDescription;
	@Transient
	private MultipartFile image;
	private int Catid;
	private int Supid ;
	private int price;
	private int stock;
	

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="Catid", updatable=false, insertable=false ,nullable=false )
	private Category category;
	
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="Supid",updatable=false, insertable=false ,nullable=false  )
    private Supplier supplier;
    

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getCatid() {
		return Catid;
	}

	public void setCatid(int catid) {
		Catid = catid;
	}

	public int getSupid() {
		return Supid;
	}

	public void setSupid(int supid) {
		Supid = supid;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	
	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}