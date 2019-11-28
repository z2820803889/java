package com.fh.service;

import com.fh.model.Role;
import com.fh.model.User;

import java.util.List;

public interface IRoleService {
    List<Role> queryRoleList();
    List<Role> queryRoleByUserId(User user);
    void deleteRole(Role role);
    void updateRolePermission(Role role);
    void deleteRolePermissionByRoleId(Role role);
    Role queryRoleByRoleName(Role role);
    void addRole(Role role);
}
