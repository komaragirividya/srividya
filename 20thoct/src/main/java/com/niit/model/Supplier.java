package com.niit.model;

import javax.persistence.Entity;

import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

//  replica of table 
@Entity 
@Table(name="Supplier")
//attributes of this class are passed to dao
@Component
public class Supplier 
   {
	@Id
	 @NotEmpty(message=" please enter id")
     private String id;
     @NotEmpty(message=" please enter name")
     private String name;
     @NotEmpty(message=" please enter address")
     private String address;
     @NotEmpty(message=" Phone required")
     private String phone;
     
     
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
   
     
  
     
     
    }
