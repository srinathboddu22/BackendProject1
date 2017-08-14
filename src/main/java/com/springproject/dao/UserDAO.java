package com.springproject.dao;


import java.util.List;

import com.springproject.model.Users;

public interface UserDAO {
	
	public boolean saveUser(Users users);
	public List<Users> list();
	  public Users getUserById(int id);
public void removeUserById(int id);
	 public Users get(String email);

} 