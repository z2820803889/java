package com.fh.service.impl;

import java.util.List;

import com.fh.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.PermissionDao;
import com.fh.model.Permission;
import com.fh.service.IPermissionService;
@Service
public class PermissionServiceImpl implements IPermissionService{
	@Autowired	
	private PermissionDao permissionDao;
	
	@Override
	public List<Permission> queryPermissionList() {
		// TODO Auto-generated method stub
		return permissionDao.queryPermissionList();
	}

	@Override
	public List<Permission> queryPermissionListByRoleId(Role role) {
		return permissionDao.queryPermissionListByRoleId(role);
	}


}
