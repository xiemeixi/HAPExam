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

import com.hand.hap.core.IRequest;
import com.hand.hap.orders.dto.OrderLine;
import com.hand.hap.orders.service.IOrderLineService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

/**
 * OrderLine控制器.
 * 
 * @author qingyun.xie@hand-china.com
 */
@Controller
public class OrderLineController extends BaseController {

    @Autowired
    private IOrderLineService orderLineService;
    
    /**
     * 任务分配查询.
     * 
     * @param orderLine
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @param request
     *            HttpServletRequest
     * @return ResponseData
     */
    @RequestMapping(value = "/xqy/orderLine/query")
    @ResponseBody
    public ResponseData getTasks(OrderLine orderLine, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        //return new ResponseData(orderLineService.self().select(requestContext, orderLine, page, pagesize));
        return new ResponseData(orderLineService.selectByOrderLine(requestContext, orderLine, page, pagesize));
    }
 
    
}
