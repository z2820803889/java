package com.fh.service.impl;

import com.fh.dao.RoleDao;
import com.fh.model.Role;
import com.fh.model.User;
import com.fh.service.IRoleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class RoleServiceImpl implements IRoleService {
    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> queryRoleList() {
        return roleDao.queryRoleList();
    }

    @Override
    public List<Role> queryRoleByUserId(User user) {
        return roleDao.queryRoleByUserId(user);
    }

    @Override
    @Transactional
    public void deleteRole(Role role) {
        roleDao.deleteRole(role);
    }

    @Override
    @Transactional
    public void updateRolePermission(Role role) {
        roleDao.deleteRolePermissionByRoleId(role);
        if(StringUtils.isNotBlank(role.getPermissionIds())){
            roleDao.addRolePermission(role,role.getPermissionIds().split(","));
        };
    }

    @Override
    @Transactional
    public void deleteRolePermissionByRoleId(Role role) {
        roleDao.deleteRolePermissionByRoleId(role);
    }

    @Override
    public Role queryRoleByRoleName(Role role) {
        return roleDao.queryRoleByRoleName(role);
    }

    @Override
    @Transactional
    public void addRole(Role role) {
        roleDao.addRole(role);
    }
}
