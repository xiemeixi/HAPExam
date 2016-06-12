package com.hand.hap.security;

import java.util.Arrays;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDecisionVoter;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.FilterInvocation;

import com.hand.hap.account.dto.Role;
import com.hand.hap.cache.Cache;
import com.hand.hap.cache.CacheManager;
import com.hand.hap.cache.impl.RoleResourceCache;
import com.hand.hap.core.BaseConstants;
import com.hand.hap.function.dto.Resource;

/**
 * Created by hailor on 16/6/12.
 */
public class PermissionVoter implements AccessDecisionVoter<FilterInvocation> {
    private static final Logger logger = LoggerFactory.getLogger(PermissionVoter.class);

    @Autowired
    private RoleResourceCache roleResourceCache;

    @Autowired
    private CacheManager cacheManager;

    @Override
    public boolean supports(ConfigAttribute attribute) {
        return false;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }

    @Override
    public int vote(Authentication authentication, FilterInvocation fi, Collection<ConfigAttribute> attributes) {
        int result = ACCESS_ABSTAIN;
        assert authentication != null;
        assert fi != null;
        assert attributes != null;
        HttpServletRequest request = fi.getRequest();
        String uri = StringUtils.substringAfter(request.getRequestURI(), request.getContextPath());
        if (uri.startsWith("/")) {
            uri = uri.substring(1);
        }
        if ("".equalsIgnoreCase(uri)) {
            return ACCESS_ABSTAIN;
        }
        Cache<Resource> cache = cacheManager.getCache(BaseConstants.CACHE_RESOURCE_URL);
        Resource resource = cache.getValue(uri);
        if (resource == null) {
            // logger.warn("url:'{}' is not registered", uri);
            return ACCESS_ABSTAIN;
            // return ACCESS_DENIED;
        }
        if (!BaseConstants.YES.equalsIgnoreCase(resource.getLoginRequire())) {
            if (logger.isDebugEnabled()) {
                logger.debug("url :'{}' does not require login.", uri);
            }
            return ACCESS_ABSTAIN;
        }
        if (!BaseConstants.YES.equalsIgnoreCase(resource.getAccessCheck())) {
            if (logger.isDebugEnabled()) {
                logger.debug("url :'{}' need no access control.", uri);
            }
            return ACCESS_ABSTAIN;
        }

        HttpSession session = request.getSession();
        if (session == null) {
            return ACCESS_DENIED;
        }
        Long roleId = (Long) session.getAttribute(Role.FIELD_ROLE_ID);
        if (roleId == null) {
            return ACCESS_DENIED;
        }

        Long[] accessible = roleResourceCache.getValue(String.valueOf(roleId));
        if (accessible == null || !Arrays.asList(accessible).contains(resource.getResourceId())) {
            logger.warn("access to uri :'{}' denied.", uri);
            return ACCESS_DENIED;
        }
        // 取得当前的Request
        // result = ACCESS_DENIED;
        result = ACCESS_ABSTAIN;

        return result;
    }
}
