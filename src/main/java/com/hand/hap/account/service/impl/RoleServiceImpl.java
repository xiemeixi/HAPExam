package com.hand.hap.account.service.impl;

import com.github.pagehelper.PageHelper;
import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.mapper.RoleMapper;
import com.hand.hap.account.service.IRoleService;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.DTOStatus;
import com.hand.hap.account.exception.RoleException;
import com.hand.hap.system.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shengyang.zhou@hand-china.com
 */
@Service
public class RoleServiceImpl extends BaseServiceImpl<Role> implements IRoleService {

    @Autowired
    private RoleMapper roleMapper;

    /**
     * 查询被角色分配的功能以外的所有功能.
     *
     * @author xiawang.liu@hand-china.com
     */
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> selectRoleNotUserRoles(IRequest request, Role role, int page, int pagesize) {
        PageHelper.startPage(page, pagesize);
        return roleMapper.selectRoleNotUserRoles(role);
    }

    @Override
    public List<Role> batchUpdate(IRequest requestContext, List<Role> roles) {
        for (Role role : roles) {
            if (role.get__status() != null) {
                switch (role.get__status()) {
                case DTOStatus.ADD:
                    self().insertSelective(requestContext, role);
                    break;
                case DTOStatus.UPDATE:
                    self().updateByPrimaryKeySelective(requestContext, role);
                    break;
                case DTOStatus.DELETE:
                    self().deleteByPrimaryKey(role);
                    break;
                default:
                    break;
                }
            }
        }
        return roles;
    }

    @Override
    public void batchDelete(List<Role> roles) {
        for (Role role : roles) {
            if (role.getRoleId() != null) {
                self().deleteByPrimaryKey(role);
            }
        }
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> selectRolesByUser(IRequest requestContext, User user) {
        List<Role> rootRoles = roleMapper.selectByUser(user);
        return rootRoles;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public void checkUserRoleExists(Long userId, Long roleId) throws RoleException {
        if (roleMapper.selectUserRoleCount(userId, roleId) != 1) {
            throw new RoleException(RoleException.MSG_INVALID_USER_ROLE, RoleException.MSG_INVALID_USER_ROLE, null);
        }
    }
}
