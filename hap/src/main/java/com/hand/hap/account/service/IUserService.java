/*
 * #{copyright}#
 */
package com.hand.hap.account.service;

import java.util.Date;
import java.util.List;

import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.exception.UserException;
import com.hand.hap.system.service.IBaseService;

/**
 * HAP中此接口实现默认都是按照USER类型处理. 其他类型可自行实现此接口逻辑.
 * 
 * @author njq.niu@hand-china.com
 *
 *         2016年1月28日
 */
public interface IUserService extends IBaseService<User>, ProxySelf<IUserService> {

    /**
     * 批量更新.
     * 
     * @param request
     *            session信息
     * @param users
     *            用户列表
     * @return 用户列表
     */
    List<User> batchUpdate(IRequest request, @StdWho List<User> users);

    /**
     * 批量删除.
     * 
     * @param users
     *            用户列表
     */
    void batchDelete(List<User> users);

    /**
     * do login ,return the user in db.
     * 
     * @param user
     * @return
     */
    User login(User user) throws UserException;

    User selectByUserName(String userName);

    void updatePassword(Long userId, String password, Date date);
}
