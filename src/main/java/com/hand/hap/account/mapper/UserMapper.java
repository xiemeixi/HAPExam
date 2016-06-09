/*
 * #{copyright}#
 */

package com.hand.hap.account.mapper;

import java.util.List;

import com.hand.hap.account.dto.User;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author wuyichu
 */
public interface UserMapper extends Mapper<User> {

    User selectByUserName(String userName);

    List<User> selectByIdList(List<Long> userIds);
}