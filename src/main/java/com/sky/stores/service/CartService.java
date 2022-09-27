package com.sky.stores.service;

import java.util.List;

import com.sky.stores.entity.Cart;
import com.sky.stores.entity.Customer;

public interface CartService {

	void saveCartItems(List<Cart> cartsItems);
	void saveCart(Cart cart);
	List<Cart> getCartItemsByCustomerId(Customer customer);
	void removeCartItems(Customer customer, Long id);
	void removeCartItem(Long id);
}
