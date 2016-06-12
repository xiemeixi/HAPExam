package com.hand.hap.security.service;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.security.access.AccessDecisionVoter;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.vote.AbstractAccessDecisionManager;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

import com.hand.hap.security.dto.CustomUserDetails;

public class DefaultAccessDecisionManager extends AbstractAccessDecisionManager {

    protected DefaultAccessDecisionManager(List<AccessDecisionVoter<? extends Object>> decisionVoters) {
        super(decisionVoters);
    }

    public void decide(Authentication authentication, Object object,
                       Collection<ConfigAttribute> configAttributes)
		throws AccessDeniedException, InsufficientAuthenticationException {
		
		CustomUserDetails user = (CustomUserDetails)authentication.getPrincipal();
		logger.info("访问资源的用户为"+user.getUsername());
		
		//如果访问资源不需要任何权限则直接通过
		if( configAttributes == null ) {
			return ;
		}
		
		Iterator<ConfigAttribute> ite = configAttributes.iterator();
		//遍历configAttributes看用户是否有访问资源的权限
		while( ite.hasNext()){
			
			ConfigAttribute ca = ite.next();
			String needRole = ca.getAttribute();
			
			//ga 为用户所被赋予的权限。 needRole 为访问相应的资源应该具有的权限。
			for( GrantedAuthority ga: authentication.getAuthorities()){
				
				if(needRole.trim().equals(ga.getAuthority().trim())){

					return;
				}
				
			}
			
		}
		
		throw new AccessDeniedException("");
		
	}
}