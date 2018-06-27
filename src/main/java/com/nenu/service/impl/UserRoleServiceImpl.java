package com.nenu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nenu.dao.UserRoleDao;
import com.nenu.model.UserRole;
import com.nenu.service.UserRoleService;


@Service
public class UserRoleServiceImpl implements UserRoleService{

	@Autowired
	private UserRoleDao userRoleDao;
	
	@Override
	public UserRole selectByUserId(Integer userId) {
		UserRole userRole = userRoleDao.selectByUserId(userId);
		return userRole;
	}

	@Override
	public void insert(UserRole record) {
		userRoleDao.insert(record);
	}

	@Override
	public void deleteById(Integer id) {
		userRoleDao.deleteById(id);
		
	}

}
