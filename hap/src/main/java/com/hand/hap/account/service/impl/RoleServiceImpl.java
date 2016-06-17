package com.hand.hap.account.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.exception.RoleException;
import com.hand.hap.account.mapper.RoleMapper;
import com.hand.hap.account.service.IRoleService;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author shengyang.zhou@hand-china.com
 */
@Service
public class RoleServiceImpl extends BaseServiceImpl<Role> implements IRoleService {

    @Autowired
    private RoleMapper roleMapper;

    /**
     * 查询被角色分配的功能以外的所有功能.D
     *
     * @author xiawang.liu@hand-china.com
     */
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> selectRoleNotUserRoles(IRequest request, User user, int page, int pagesize) {
        PageHelper.startPage(page, pagesize);
        return roleMapper.selectRoleNotUserRoles(user.getUserId());
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
