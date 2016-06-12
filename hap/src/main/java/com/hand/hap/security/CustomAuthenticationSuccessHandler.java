package com.hand.hap.security;

import com.hand.hap.account.dto.User;
import com.hand.hap.account.exception.UserException;
import com.hand.hap.account.service.IUserService;
import com.hand.hap.core.BaseConstants;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.util.TimeZoneUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Locale;
import java.util.TimeZone;

/**
 * Created by hailor on 16/6/12.
 */
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    @Autowired
    IUserService userService;
    // 跳转
    protected static final String REDIRECT = "redirect:";

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        Locale locale = RequestContextUtils.getLocale(request);
        handle(request, response, authentication);
        clearAuthenticationAttributes(request);
        CustomUserDetails userDetails = (CustomUserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.selectByUserName(userDetails.getUsername());
        HttpSession session = request.getSession(true);
        session.setAttribute(User.FIELD_USER_ID, user.getUserId());
        session.setAttribute(User.FIELD_USER_NAME, user.getUserName());
        session.setAttribute(IRequest.FIELD_LOCALE, locale.toString());
        setTimeZoneFromPreference(session, user.getUserId());
        generateSecurityKey(session);

    }


    private void setTimeZoneFromPreference(HttpSession session, Long accountId) {
//        SysPreferences para = new SysPreferences();
//        para.setUserId(accountId);
//        para.setPreferencesLevel(10L);
//        para.setPreferences(BaseConstants.TIME_ZONE);
//        SysPreferences pref = preferencesService.querySysPreferencesLine(RequestHelper.newEmptyRequest(), para);
//        String tz = pref == null ? null : pref.getPreferencesValue();
        String tz = "GMT+0800";
        if (StringUtils.isBlank(tz)) {
            tz = TimeZoneUtil.toGMTFormat(TimeZone.getDefault());
        }
        session.setAttribute(BaseConstants.TIME_ZONE, tz);
    }


    private String generateSecurityKey(HttpSession session) {
        return TokenUtils.setSecurityKey(session);
    }




}
