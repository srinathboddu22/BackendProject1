package com.springproject.model;

import java.io.Serializable; 
import java.util.HashSet; 
import java.util.Set; 
import javax.persistence.Column; 
import javax.persistence.Entity; 
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id; 
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component; 



@SuppressWarnings("unused")
@Entity
@Component
@Table(name="Category")
public class Category {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Catid")
	private int categoryId;
	private String categoryName;
	private String categorydescription; 
	@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="category")
	private Set<Product> products = new HashSet<Product>(0); 
	
	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategorydescription() {
		return categorydescription;
	}

	public void setCategorydescription(String categorydescription) {
		this.categorydescription = categorydescription;
	}

	public Set<Product> getProducts() {
		return products;
	}
	
	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
	
}