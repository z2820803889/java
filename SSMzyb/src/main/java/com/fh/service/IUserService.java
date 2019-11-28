package com.fh.service;

import java.util.List;

import com.fh.model.Permission;
import com.fh.model.User;
import com.fh.model.UserQuery;

public interface IUserService {
	User getByUserName(User user);
	List<Permission> getPermissionTreeByUserId(User user);
	User queryUserList(User user,UserQuery userQuery);
	void updateUserRole(User user);
	List<User> queryAllUserList();
	void addUser(User user);
	List<User> getUserByRoleId(Integer roleId);
}
