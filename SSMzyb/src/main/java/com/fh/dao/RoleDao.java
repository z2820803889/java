package com.fh.dao;

import com.fh.model.Permission;
import com.fh.model.Role;
import com.fh.model.User;
import com.fh.model.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleDao {
	List<Role> queryRoleList();
	List<Role> queryRoleByUserId(User user);
	void deleteRole(Role role);
	void deleteRolePermissionByRoleId(Role role);
	void addRolePermission(@Param("role") Role role,@Param("permissionIdArr") String[] permissionIdArr);
	Role queryRoleByRoleName(Role role);
	void addRole(Role role);
}
