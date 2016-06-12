package com.hand.hap.security.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.service.IRoleService;
import com.hand.hap.account.service.IUserService;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.impl.RequestHelper;
import com.hand.hap.security.dto.CustomUserDetails;

/**
 * (register manual).
 * 
 * @author shengyang.zhou@hand-china.com
 */
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userService.selectByUserName(username);
        if (user == null) {
            throw new UsernameNotFoundException("Can not find user by name:" + username);
        }
        CustomUserDetails userDetails = new CustomUserDetails();
        userDetails.setUsername(user.getUserName());
        userDetails.setPassword(user.getPasswordEncrypted());
        Date endActiveDate = user.getEndActiveDate();
        userDetails.setAccountExpired(endActiveDate != null && endActiveDate.getTime() < System.currentTimeMillis());
        userDetails.setAccountLocked(User.STATUS_LOCK.equalsIgnoreCase(user.getStatus()));

        Collection<GrantedAuthority> authorities = new ArrayList<>();

        IRequest iRequest = RequestHelper.newEmptyRequest();
        List<Role> roles = roleService.selectRolesByUser(iRequest, user);
        for (Role role : roles) {
            authorities.add(new SimpleGrantedAuthority(role.getRoleCode()));
        }
        userDetails.setAuthorities(authorities);
        return userDetails;
    }
}
