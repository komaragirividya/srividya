package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

//  replica of table 
@Entity 
@Table(name="User")
//attributes of this class are passed to dao
@Component
public class User 
   {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
     private int id;
     @NotEmpty(message=" please enter name")
     private String name;
     @NotEmpty(message=" please enter address")
     private String address;
     @NotEmpty(message=" Email required")
     private String email;
     @NotEmpty(message=" Phone required")
     private String phone;
     @NotEmpty(message=" Password required")
     private String password;
     
     private String role;
	
     
     
     
     public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
     
     
    }
