package com.nenu.service;

import com.nenu.model.UserRole;


public interface UserRoleService {

	UserRole selectByUserId(Integer userId);
	
	void insert(UserRole record);
	
	void deleteById(Integer id);
	
}
