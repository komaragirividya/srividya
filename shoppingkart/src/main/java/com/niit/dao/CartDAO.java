package com.niit.dao;


import java.util.List;

import com.niit.model.Cart;


public interface CartDAO 
	{
		public void addCart(Cart cart);
		public void deleteCart(int id);
		public Cart getCart(String proid);
		public List<Cart> list();
		
	
}
