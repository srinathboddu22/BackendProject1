
package com.springproject.model;

import java.io.Serializable; 
import java.util.HashSet; 
import java.util.Set; 
import javax.persistence.Column; 
import javax.persistence.Entity; 
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id; 
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component; 


@SuppressWarnings("unused")
@Entity
@Component
@Table(name="Supplier")
public class Supplier {
@Id
@GeneratedValue
@Column(name="Supid")
private int supplierid;
private String supplierName;

@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="supplier")
private Set<Product> products = new HashSet<Product>(0); 

public Set<Product> getProducts() {
	return products;
}
public void setProducts(Set<Product> products) {
	this.products = products;
}

public int getSupplierid() {
	return supplierid;
}
public void setSupplierid(int supplierid) {
	this.supplierid = supplierid;
}
public String getSupplierName() {
	return supplierName;
}
public void setSupplierName(String supplierName) {
	this.supplierName = supplierName;
}




}