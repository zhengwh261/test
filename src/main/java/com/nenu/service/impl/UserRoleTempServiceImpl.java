package com.nenu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nenu.dao.UserRoleTempDao;
import com.nenu.model.UserRoleTemp;
import com.nenu.service.UserRoleTempService;

@Service
public class UserRoleTempServiceImpl implements UserRoleTempService{

	@Autowired
	private UserRoleTempDao userRoleTempDao;
	
	@Override
	public UserRoleTemp getByUserId(Integer userId) {
		return userRoleTempDao.getByUserId(userId);
	}

}
