package com.fh.dao;

import java.util.List;

import com.fh.model.Permission;
import com.fh.model.Role;
import com.fh.model.User;
import com.fh.model.UserQuery;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
	User getByUserName(User user);
	List<Permission> getPermissionByUserId(User user);
	int queryCount(UserQuery userQuery);
	List<User> queryUserList(@Param("user") User user, @Param("userQuery") UserQuery userQuery);
	List<User> queryAllUserList();
	void addUser(User user);
	void deleteUserRoleByUserId(User user);
	void addUserRole(User user);
	List<User> getUserByRoleId(Integer roleId);
}
