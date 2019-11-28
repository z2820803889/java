package com.fh.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.fh.model.UserQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.UserDao;
import com.fh.model.Permission;
import com.fh.model.User;
import com.fh.service.IUserService;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	private UserDao userDao;
	
	
	@Override
	public User getByUserName(User user) {
		// TODO Auto-generated method stub
		return userDao.getByUserName(user);
	}


	@Override
	public List<Permission> getPermissionTreeByUserId(User user) {
		// TODO Auto-generated method stub
		List<Permission> list = userDao.getPermissionByUserId(user);
		List treeList = sonTree(list, null);
		return treeList;
	}

	@Override
	public User queryUserList(User user, UserQuery userQuery) {
		user.setTotal(userDao.queryCount(userQuery));
		List<User> list = userDao.queryUserList(user, userQuery);
		user.setList(list);
		return user;
	}

	@Override
	@Transactional
	public void updateUserRole(User user) {
		userDao.deleteUserRoleByUserId(user);
		if(user.getRoleIds()!=null){
			userDao.addUserRole(user);
		};

	}

	@Override
	public List<User> queryAllUserList() {
		return userDao.queryAllUserList();
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public List<User> getUserByRoleId(Integer roleId) {
		return userDao.getUserByRoleId(roleId);
	}



	public List sonTree(List<Permission> list,Integer pid){
		List<Permission> temp = new ArrayList();
		for (Permission permission : list) {
			if(permission.getPid()==pid){
				temp.add(permission);
				List sonTree = sonTree(list,permission.getId());
				permission.setSonList(sonTree);
			};
		}
		return temp;
	};

}
