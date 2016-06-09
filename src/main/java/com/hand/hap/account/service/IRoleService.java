package com.hand.hap.account.service;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.account.exception.RoleException;
import com.hand.hap.system.service.IBaseService;

import java.util.List;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface IRoleService extends IBaseService<Role>, ProxySelf<IRoleService> {

    /**
     * 查询,不属于当前用户角色的数据.
     *
     * @param requestContext
     *            请求上下文
     * @param role
     *            条件,至少包含 userId
     * @param page
     *            起始页
     * @param pagesize
     *            页大小
     * @return 查询结果
     */
    List<Role> selectRoleNotUserRoles(IRequest requestContext, Role role, int page, int pagesize);

    /**
     * 批量增删改.
     *
     * @param requestContext
     *            请求上下文
     * @param roles
     *            数据
     * @return 原样返回
     */
    List<Role> batchUpdate(IRequest requestContext, @StdWho List<Role> roles);

    /**
     * 批量删除.
     *
     * @param roles
     *            待删数据
     */
    void batchDelete(List<Role> roles);

    /**
     * 查询用户的所有角色.
     *
     * @param requestContext
     *            请求上下文
     * @param user
     *            包含 userId
     * @return 查询结果
     */
    List<Role> selectRolesByUser(IRequest requestContext, User user);

    /**
     * 判断用户角色是否存在.
     *
     * @param userId
     * @param roleId
     * @throws RoleException
     */
    void checkUserRoleExists(Long userId, Long roleId) throws RoleException;

}
