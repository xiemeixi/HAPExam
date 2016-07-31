/*
 * #{copyright}#
 */
package com.hand.hap.adaptor.impl;

import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.util.WebUtils;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.dto.User;
import com.hand.hap.account.exception.RoleException;
import com.hand.hap.account.exception.UserException;
import com.hand.hap.account.service.IRoleService;
import com.hand.hap.account.service.IUserService;
import com.hand.hap.adaptor.ILoginAdaptor;
import com.hand.hap.core.BaseConstants;
import com.hand.hap.core.ILanguageProvider;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.exception.BaseException;
import com.hand.hap.core.impl.RequestHelper;
import com.hand.hap.core.util.TimeZoneUtil;
import com.hand.hap.security.TokenUtils;
import com.hand.hap.security.captcha.ICaptchaManager;
import com.hand.hap.system.dto.Language;
import com.hand.hap.system.dto.ResponseData;
import com.hand.hap.system.service.ISysPreferencesService;

/**
 * 默认登陆代理类.
 *
 * @author njq.niu@hand-china.com
 * @author xiawang.liu@hand-china.com 2016年1月19日 TODO:URL和页面分开
 */
@Component
public class DefaultLoginAdaptor implements ILoginAdaptor {

    // TODO:验证码改成可配置
    private static final boolean VALIDATE_CAPTCHA = true;

    // 跳转
    protected static final String REDIRECT = "redirect:";

    // 校验码
    private static final String KEY_VERIFICODE = "verifiCode";

    // 默认主页
    private static final String VIEW_INDEX = "/";

    // 默认的登录页
    private static final String VIEW_LOGIN = "/login";

    // 默认角色选择路径
    private static final String VIEW_ROLE_SELECT = "/role";

    @Autowired
    private ICaptchaManager captchaManager;

    @Autowired
    private ILanguageProvider languageProvider;

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IUserService userService;

    @Autowired
    private ISysPreferencesService preferencesService;

    public ModelAndView doLogin(User user, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView view = new ModelAndView();
        Locale locale = RequestContextUtils.getLocale(request);

        view.setViewName(getLoginView(request));
        fillContextLanguagesData(view);

        try {
            beforeLogin(view, user, request, response);
            checkCaptcha(view, user, request, response);
            user = userService.login(user);
            HttpSession session = request.getSession(true);
            session.setAttribute(User.FIELD_USER_ID, user.getUserId());
            session.setAttribute(User.FIELD_USER_NAME, user.getUserName());
            session.setAttribute(IRequest.FIELD_LOCALE, locale.toString());
            setTimeZoneFromPreference(session, user.getUserId());
            generateSecurityKey(session);
            afterLogin(view, user, request, response);
        } catch (UserException e) {
            view.addObject("msg", messageSource.getMessage(e.getCode(), e.getParameters(), locale));
            view.addObject("code", e.getCode());
            processLoginException(view, user, e, request, response);
        }
        return view;
    }

    private void setTimeZoneFromPreference(HttpSession session, Long accountId) {
        // SysPreferences para = new SysPreferences();
        // para.setUserId(accountId);
        // para.setPreferencesLevel(10L);
        // para.setPreferences(BaseConstants.TIME_ZONE);
        // SysPreferences pref =
        // preferencesService.querySysPreferencesLine(RequestHelper.newEmptyRequest(),
        // para);
        // String tz = pref == null ? null : pref.getPreferencesValue();
        String tz = "GMT+0800";
        if (StringUtils.isBlank(tz)) {
            tz = TimeZoneUtil.toGMTFormat(TimeZone.getDefault());
        }
        session.setAttribute(BaseConstants.TIME_ZONE, tz);
    }

    private String generateSecurityKey(HttpSession session) {
        return TokenUtils.setSecurityKey(session);
    }

    /**
     * 登陆前逻辑.
     *
     * @param view
     *            视图
     * @param account
     *            账号
     * @param request
     *            请求
     * @param response
     *            响应
     * @throws UserException
     *             异常
     */
    protected void beforeLogin(ModelAndView view, User account, HttpServletRequest request,
            HttpServletResponse response) throws UserException {

    }

    /**
     * 处理登陆异常.
     *
     * @param view
     * @param account
     * @param e
     * @param request
     * @param response
     */
    protected void processLoginException(ModelAndView view, User account, UserException e, HttpServletRequest request,
            HttpServletResponse response) {

    }

    /**
     * 校验验证码是否正确.
     *
     * @param view
     *            视图
     * @param user
     *            账号
     * @param request
     *            请求
     * @param response
     *            响应
     * @throws UserException
     *             异常
     */
    private void checkCaptcha(ModelAndView view, User user, HttpServletRequest request, HttpServletResponse response)
            throws UserException {
        if (VALIDATE_CAPTCHA) {
            Cookie cookie = WebUtils.getCookie(request, captchaManager.getCaptchaKeyName());
            String captchaCode = request.getParameter(KEY_VERIFICODE);
            if (cookie == null || StringUtils.isEmpty(captchaCode)
                    || !captchaManager.checkCaptcha(cookie.getValue(), captchaCode)) {
                // view.addObject("_password", user.getPassword());
                throw new UserException(UserException.ERROR_INVALID_CAPTCHA, UserException.ERROR_INVALID_CAPTCHA,
                        null);
            }
        }
    }

    /**
     * 账号登陆成功后处理逻辑.
     *
     * @param view
     *            视图
     * @param user
     *            账号
     * @param request
     *            请求
     * @param response
     *            响应
     * @throws UserException
     *             异常
     */
    protected void afterLogin(ModelAndView view, User user, HttpServletRequest request, HttpServletResponse response)
            throws UserException {
        view.setViewName(REDIRECT + getRoleView(request));
        Cookie cookie = new Cookie(User.FIELD_USER_NAME, user.getUserName());
        cookie.setPath(StringUtils.defaultIfEmpty(request.getContextPath(), "/"));
        cookie.setMaxAge(-1);
        response.addCookie(cookie);
    }

    @Override
    public ModelAndView doSelectRole(Role role, HttpServletRequest request, HttpServletResponse response)
            throws RoleException {
        ModelAndView result = new ModelAndView();
        // 选择角色
        HttpSession session = request.getSession(false);
        if (session != null && role != null && role.getRoleId() != null) {
            Long userId = (Long) session.getAttribute(User.FIELD_USER_ID);
            roleService.checkUserRoleExists(userId, role.getRoleId());
            session.setAttribute(Role.FIELD_ROLE_ID, role.getRoleId());
            result.setViewName(REDIRECT + getIndexView(request));
        } else {
            result.setViewName(REDIRECT + getLoginView(request));
        }
        return result;
    }

    /**
     * 填充系统语言数据.
     * 
     * @param view
     */
    protected void fillContextLanguagesData(ModelAndView view) {
        List<Language> languages = languageProvider.getSupportedLanguages();
        view.addObject("languages", languages);
    }

    /**
     * 获取主界面.
     * 
     * @param request
     * @return 视图
     */
    protected String getIndexView(HttpServletRequest request) {
        return VIEW_INDEX;
    }

    /**
     * 获取登陆界面.
     * 
     * @param request
     * @return 视图
     */
    protected String getLoginView(HttpServletRequest request) {
        return VIEW_LOGIN;
    }

    /**
     * 获取角色选择界面.
     * 
     * @param request
     * @return 视图
     */
    protected String getRoleView(HttpServletRequest request) {
        return VIEW_ROLE_SELECT;
    }

    /**
     * 集成类中可扩展此方法实现不同的userService.
     * 
     * @return IUserService
     */
    public IUserService getUserService() {
        return userService;
    }

    @Override
    public ModelAndView indexView(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            Long roleId = (Long) session.getAttribute(Role.FIELD_ROLE_ID);
            if (roleId == null) {
                return new ModelAndView(REDIRECT + getRoleView(request));
            }
        }

        ModelAndView view = indexModelAndView(request, response);
        fillContextLanguagesData(view);
        return view;
    }

    /**
     * 默认登陆页面.
     * 
     * @param request
     * @param response
     * @return 视图
     */
    public ModelAndView indexModelAndView(HttpServletRequest request, HttpServletResponse response) {
        return new ModelAndView("index");
    }

    @Override
    public ModelAndView loginView(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView view = new ModelAndView(getLoginView(request));
        Boolean error = (Boolean) request.getAttribute("error");
        Throwable exception = (Exception) request.getAttribute("exception");

        while (exception != null && exception.getCause() != null) {
            exception = exception.getCause();
        }
        String code = UserException.ERROR_USER_PASSWORD;
        if (exception instanceof BaseException) {
            code = ((BaseException) exception).getDescriptionKey();
        }

        if (error != null && error) {
            String msg = null;
            Locale locale = RequestContextUtils.getLocale(request);
            msg = messageSource.getMessage(code, null, locale);
            view.addObject("msg", msg);
        }
        fillContextLanguagesData(view);
        return view;
    }

    @Override
    public ModelAndView roleView(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView(getRoleView(request));
        HttpSession session = request.getSession(false);
        if (session != null) {
            // 获取user
            Long userId = (Long) session.getAttribute(User.FIELD_USER_ID);
            if (userId != null) {
                User user = new User();
                user.setUserId(userId);
                session.setAttribute(User.FIELD_USER_ID, userId);
                addCookie(User.FIELD_USER_ID, userId.toString(), request, response);
                List<Role> roles = roleService.selectRolesByUser(RequestHelper.createServiceRequest(request), user);
                mv.addObject("roles", roles);
            }
        }
        return mv;
    }

    protected void addCookie(String cookieName, String cookieValue, HttpServletRequest request,
            HttpServletResponse response) {
        Cookie cookie = new Cookie(cookieName, cookieValue);
        cookie.setPath(StringUtils.defaultIfEmpty(request.getContextPath(), "/"));
        cookie.setMaxAge(-1);
        response.addCookie(cookie);
    }

    @Override
    public ResponseData sessionExpiredLogin(User account, HttpServletRequest request, HttpServletResponse response)
            throws RoleException {
        ResponseData data = new ResponseData();
        ModelAndView view = this.doLogin(account, request, response);
        ModelMap mm = view.getModelMap();
        if (mm.containsAttribute("code")) {
            data.setSuccess(false);
            data.setCode((String) mm.get("code"));
            data.setMessage((String) mm.get("msg"));
        } else {
            Object userIdObj = request.getParameter(User.FIELD_USER_ID);
            Object roleIdObj = request.getParameter(Role.FIELD_ROLE_ID);
            if (userIdObj != null && roleIdObj != null) {
                Long userId = Long.valueOf(userIdObj.toString()), roleId = Long.valueOf(roleIdObj.toString());
                roleService.checkUserRoleExists(userId, roleId);
                HttpSession session = request.getSession();
                session.setAttribute(User.FIELD_USER_ID, userId);
                session.setAttribute(Role.FIELD_ROLE_ID, roleId);
            }
        }
        return data;
    }
}