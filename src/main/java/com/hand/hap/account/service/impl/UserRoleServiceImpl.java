/*
 * #{copyright}#
 */
package com.hand.hap.account.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.mapper.RoleMapper;
import com.hand.hap.system.service.impl.BaseServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.DTOStatus;
import com.hand.hap.account.dto.UserRole;
import com.hand.hap.account.mapper.UserRoleMapper;
import com.hand.hap.account.service.IUserRoleService;

/**
 * 角色分配功能ServiceImpl.
 * 
 * @author xiawang.liu@hand-china.com
 */
@Transactional
@Service
public class UserRoleServiceImpl extends BaseServiceImpl<UserRole> implements IUserRoleService {

    private Logger logger = LoggerFactory.getLogger(UserRoleServiceImpl.class);

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> selectUserRoles(IRequest requestContext, Role role) {
        List<Role> selectUserRoles = roleMapper.selectUserRoles(role);
        return selectUserRoles;
    }

    @Override
    public List<UserRole> processBatchUserRole(IRequest requestContext, List<UserRole> UserRoles) {
        List<UserRole> result = new ArrayList<>();
        for (UserRole userRole : UserRoles) {
            if (DTOStatus.ADD.equals(userRole.get__status())) {
                self().insertSelective(requestContext, userRole);
                result.add(userRole);
            } else if (DTOStatus.DELETE.equals(userRole.get__status())) {
                self().deleteByPrimaryKey(userRole);
            } else if (DTOStatus.UPDATE.equals(userRole.get__status())) {
                self().updateByPrimaryKeySelective(requestContext, userRole);
            }
        }
        return result;
    }

}