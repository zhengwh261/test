package com.nenu.dao;

import java.util.List;

import com.nenu.model.User;

public interface UserExtendDao {

	User selectByUsername(String username);
	
	List<String> getRoles(String username);
	
	List<String> getPermissions(String username);
	
}
