package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

//replica of table
@Entity

//it is used to represent table name 
@Table(name="Product")

//it has to pass atributes(variables)  to DAO
@Component
public class Product 
   {
	@Id
	 @NotEmpty(message=" please enter id")
     private String id;
	
     @NotEmpty(message=" please enter name")
     private String name;
    
     @NotEmpty(message=" please enter price")
     private int price;
     
     @NotEmpty(message=" DESCRIPTION required")
     private String description;
     
     private String category_id;
     private String supplier_id;
     
     @ManyToOne
     @JoinColumn(name="category_id",nullable= false, updatable=false, insertable=false)
     private Category category;
     
     @ManyToOne
     @JoinColumn(name="supplier_id",nullable= false, updatable=false, insertable=false)
     private Supplier supplier;
    
     //initializing many to one//
     
     
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	@Transient
	private MultipartFile image;

	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	
     
  
     
     
    }
