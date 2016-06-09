package com.hand.hap.account.mapper;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.mybatis.common.Mapper;

import java.util.List;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface RoleMapper extends Mapper<Role> {

    List<Role> selectUserRoles(Role role);

    List<Role> selectRoleNotUserRoles(Role example);

    List<Role> selectByUser(User user);

    List<Role> selectRolesByUserWithoutLang(User user);

    int selectUserRoleCount(Long userId, Long roleId);
}
