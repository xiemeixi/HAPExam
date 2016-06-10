/*
 * #{copyright}#
 */
package com.hand.hap.core.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hand.hap.system.service.IAccessService;
import com.hand.hap.system.service.ILovService;
import org.springframework.beans.BeansException;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import freemarker.template.SimpleHash;

/**
 * @author njq.niu@hand-china.com
 *
 *         2016年1月31日
 */
public class DefaultFreeMarkerView extends FreeMarkerView {

    private ILovService lovService;
    private IAccessService accessService;

    protected FreeMarkerConfig autodetectConfiguration() throws BeansException {
        lovService = getApplicationContext().getBean(ILovService.class);
        accessService = getApplicationContext().getBean(IAccessService.class);
        return super.autodetectConfiguration();
    }

    protected SimpleHash buildTemplateModel(Map<String, Object> model, HttpServletRequest request,
            HttpServletResponse response) {
        SimpleHash fmModel = super.buildTemplateModel(model, request, response);
        accessService.setRequest(request);
        fmModel.put("lovService", lovService);
        fmModel.put("accessService", accessService);
        return fmModel;
    }
}
