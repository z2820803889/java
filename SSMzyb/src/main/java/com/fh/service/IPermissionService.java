package com.fh.service;

import java.util.List;

import com.fh.model.Permission;
import com.fh.model.Role;

public interface IPermissionService {
	List<Permission> queryPermissionList();
	List<Permission> queryPermissionListByRoleId(Role role);
}
