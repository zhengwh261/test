package com.nenu.dao;

import com.nenu.model.Permission;


public interface PermissionDao {

	int deleteById(Integer id);
	
	int insert(Permission record);
	
	int insertSelective(Permission record);
	
	Permission selectById(Integer id);
	
	int updateByIdSelective(Permission record);
	
	int updateById(Permission record);
	
}
