package com.nenu.service.impl;

import org.springframework.stereotype.Service;

import com.nenu.dao.RolePermissionTempDao;
import com.nenu.model.RolePermissionTemp;
import com.nenu.service.RolePermissionTempService;

@Service
public class RolePermissionTempServiceImpl implements RolePermissionTempService {

	private RolePermissionTempDao rolePermissionTemp;

	@Override
	public RolePermissionTemp getByRoleId(Integer roleId) {
		
		return  rolePermissionTemp.getByRoleId(roleId);
	}

}
