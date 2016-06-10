/*
 * #{copyright}#
 */
package com.hand.hap.adaptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hand.hap.account.dto.Role;
import com.hand.hap.system.dto.ResponseData;
import com.hand.hap.core.exception.BaseException;
import com.hand.hap.account.exception.RoleException;
import org.springframework.web.servlet.ModelAndView;

import com.hand.hap.account.dto.User;

/**
 * 登陆代理接口类.
 * 
 * @author njq.niu@hand-china.com
 * @author xiawang.liu@hand-china.com 2016年1月19日
 */
public interface ILoginAdaptor {

   
    /**
     * 登陆逻辑.
     * 
     * @param account
     *            登陆账号对象
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view
     */
    ModelAndView doLogin(User account, HttpServletRequest request, HttpServletResponse response);
    
    
    /**
     * 超时登陆逻辑.
     * 
     * @param account
     *            登陆账号对象
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return ResponseData
     * @throws BaseException
     */
    ResponseData sessionExpiredLogin(User account, HttpServletRequest request, HttpServletResponse response)
            throws RoleException;

    /**
     * 登出逻辑.
     *
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view
     */
    ModelAndView doLogout(HttpServletRequest request, HttpServletResponse response);

    /**
     * 
     * 角色选择逻辑.
     * 
     * @param role
     *            角色对象
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view
     * @throws RoleException
     */
    ModelAndView doSelectRole(Role role, HttpServletRequest request, HttpServletResponse response) throws RoleException;

    /**
     * 显示主界面.
     *
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view
     */
    ModelAndView indexView(HttpServletRequest request, HttpServletResponse response);

    /**
     * 登陆界面.
     * 
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view
     */
    ModelAndView loginView(HttpServletRequest request, HttpServletResponse response);

    /**
     * 显示角色选择界面.
     * 
     * @param request
     *            HttpServletRequest
     * @param response
     *            HttpServletResponse
     * @return view viewModel
     * 
     * @throws BaseException
     *             BaseException
     */
    ModelAndView roleView(HttpServletRequest request, HttpServletResponse response) throws BaseException;
}
