/*
 * #{copyright}#
 */

package com.hand.hap.account.mapper;

import com.hand.hap.account.dto.UserRole;
import tk.mybatis.mapper.common.Mapper;

/**
 * 角色分配功能Mapper.
 * 
 * @author xiawang.liu@hand-china.com
 */
public interface UserRoleMapper extends Mapper<UserRole> {

    int deleteByUserId(Long userId);

}