package com.nenu.dao;

import com.nenu.model.UserRole;


public interface UserRoleDao {
	
	void deleteById(Integer id);
	
	void insert(UserRole record);
	
	int insertSelective(UserRole record);
	
	UserRole selectById(Integer id);
	
	UserRole selectByUserId(Integer userId);
	
	int updateByIdSelective(UserRole record);
	
	int updateById(UserRole record);
	
}
