/*
 * #{copyright}#
 */
package com.hand.hap.security.interceptor;

import java.io.Writer;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hand.hap.core.BaseConstants;
import com.hand.hap.core.util.RequestUtil;
import com.hand.hap.core.util.TimeZoneUtil;
import com.hand.hap.security.DefaultConfiguration;

/**
 * @author njq.niu@hand-china.com
 *
 *         2016年1月21日
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {

    public static final String SESSION_INTERCEPTOR_TOKEN = "_SESSION_INTERCEPTOR_TOKEN";

    // TODO:待优化
    private static final String DEFAULT_AJAX_RESPONSE = "{\"success\":false,\"code\":\"session_expired\"}";

    @Autowired
    private DefaultConfiguration defaultPageManager;

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        request.setAttribute(SESSION_INTERCEPTOR_TOKEN, true);
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();
        if (session == null) {
            if (RequestUtil.isAjaxRequest(request)) {
                try (Writer writer = response.getWriter()) {
                    writer.write(DEFAULT_AJAX_RESPONSE);
                }
            } else {
//                String referer = request.getHeader("Referer");
//                if (StringUtils.isEmpty(referer)) {
//                    request.getRequestDispatcher("/login").forward(request, response);
//                } else {
//                    response.sendRedirect(contextPath + defaultPageManager.getPageLogin());
//                }
                // response.sendRedirect(contextPath + "/timeout.html");
            }
            return false;
        } else {
            String tz = (String) session.getAttribute(BaseConstants.TIME_ZONE);
            if (StringUtils.isNotEmpty(tz)) {
                TimeZoneUtil.setTimeZone(TimeZone.getTimeZone(tz));
            }
        }
        return true;
    }

}
