package com.springproject.dao;

import java.util.List;

import com.springproject.model.Cart;

public interface CheckOutDAO {

	public List<Cart> getTotal(int uid);
}
