package com.fh.dao;

import java.util.List;

import com.fh.model.Permission;
import com.fh.model.Role;

public interface PermissionDao {
	List<Permission> queryPermissionList();
	List<Permission> queryPermissionListByRoleId(Role role);
}
