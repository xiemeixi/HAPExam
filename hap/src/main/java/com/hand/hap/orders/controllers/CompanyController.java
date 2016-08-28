/*
 * #{copyright}#
 */

package com.hand.hap.orders.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hand.hap.orders.dto.Company;
import com.hand.hap.orders.service.ICompanyService;
import com.hand.hap.system.dto.ResponseData;

/**
 * Company控制器.
 * 
 * @author qingyun.xie@hand-china.com
 */
@Controller
public class CompanyController{
	protected static final String DEFAULT_PAGE = "1";
	
    protected static final String DEFAULT_PAGE_SIZE = "10";

    protected static final String SYS_VALIDATION_PREFIX = "hap.validation.";

    protected static final String DEFAULT_VIEW_HOME = "";
	
    @Autowired
    private ICompanyService companyService;
    
    /**
     * 任务分配查询.
     * 
     * @param company
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @return ResponseData
     *            Json对象
     */
    @RequestMapping(value = "/xqy/company/query")
    @ResponseBody
    public ResponseData getTasks(Company company, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
    	return new ResponseData(companyService.selectByCompany(company, page, pagesize));
    }
}
