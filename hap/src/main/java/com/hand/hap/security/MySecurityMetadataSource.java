package com.hand.hap.security;


import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.service.IRoleService;
import com.hand.hap.account.service.IUserService;
import com.hand.hap.function.service.IResourceService;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;


/**
 * @author shengyang.zhou@hand-china.com
 */
public class MySecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
    private static LinkedHashMap<RequestMatcher, Collection<ConfigAttribute>> resourceMap = null;

    private IUserService userService;

    private IRoleService roleService;


    private IResourceService resourceService;


    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    public IRoleService getRoleService() {
        return roleService;
    }

    public void setRoleService(IRoleService roleService) {
        this.roleService = roleService;
    }

    public IResourceService getResourceService() {
        return resourceService;
    }

    public void setResourceService(IResourceService resourceService) {
        this.resourceService = resourceService;
    }

    public Collection<ConfigAttribute> getAllConfigAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}
	//加载所有资源与权限的关系
	private Map<String, String> getResource() {
		Map<String, String> resourceMap = new HashMap<String, String>();
		List<User> users = userService.selectAll();
		for(User user:users){


		}
		return resourceMap;
		
	}
	
	private void loadResourceDefine(){
		resourceMap = new LinkedHashMap<>();
		Map<String, String> resource = getResource();
		for(Map.Entry<String, String> entry:resource.entrySet()){
			Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();
			configAttributes.add(new SecurityConfig(entry.getValue()));
			resourceMap.put(new AntPathRequestMatcher(entry.getKey()), configAttributes);
		}
		
	}
	
	
	//返回所请求资源所需要的权限
	public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
		
		HttpServletRequest request = ((FilterInvocation) object).getRequest();
		if(null==resourceMap){
			System.out.println("请求地址 " + ((FilterInvocation) object).getRequestUrl());
			loadResourceDefine();
			System.out.println("我需要的认证："+resourceMap.toString());
		}
		for (Map.Entry<RequestMatcher, Collection<ConfigAttribute>> entry : resourceMap.entrySet()) {
            if (entry.getKey().matches(request)) {
                return entry.getValue();
            }
        }
		return null;
	}

}
