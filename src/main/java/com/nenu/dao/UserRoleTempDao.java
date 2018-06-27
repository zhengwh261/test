package com.nenu.dao;

import com.nenu.model.UserRoleTemp;

public interface UserRoleTempDao {

	UserRoleTemp getByUserId(Integer userId);
	
}
