/*
 * #{copyright}#
 */

package com.hand.hap.orders.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.exception.BaseException;
import com.hand.hap.orders.dto.OrderHeader;
import com.hand.hap.orders.dto.OrderLine;
import com.hand.hap.orders.service.IOrderHeaderService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

/**
 * PhoneSupplier控制器.
 * 
 * @author qingyun.xie@hand-china.com
 */
@Controller
public class OrderHeaderController extends BaseController {

    @Autowired
    private IOrderHeaderService orderHeaderService;
    
    /**
     * 任务分配查询.
     * 
     * @param orderHeader
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @param request
     *            HttpServletRequest
     * @return ResponseData
     */
    @RequestMapping(value = "/xqy/orderHeader/query")
    @ResponseBody
    public ResponseData getTasks(OrderHeader orderHeader, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(orderHeaderService.self().selectByOrderHeader(requestContext, orderHeader, page, pagesize));
    }
    
    /**
     * 保存手机.
     * 
     * @param orderHeader
     *            phones
     * @param result
     *            BindingResult
     * @param request
     *            HttpServletRequest
     * @return ResponseData ResponseData
     * @throws BaseException
     *             BaseException
     */
    @RequestMapping(value = "/xqy/orderHeader/submit", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData submitOrderHeader(@RequestBody List<OrderHeader> orderHeaders, BindingResult result, HttpServletRequest request)
            throws BaseException{
    	for(OrderHeader orderHeader:orderHeaders){
    		if(orderHeader.getHeaderId()==null){
    			orderHeader.setHeaderId(-12345l);
    		}
    		for(OrderLine orderline:orderHeader.getOrderLines()){
    			if(orderline.getQuantityUom()==null||orderline.getQuantityUom().equals("")){
    				orderline.setQuantityUom("份");
    			}
    		}
    	}
        getValidator().validate(orderHeaders, result);
        if (result.hasErrors()) {
            ResponseData rd = new ResponseData(false);
            rd.setMessage(getErrorMessage(result, request));
            return rd;
        }
        IRequest requestContext = createRequestContext(request);
        orderHeaderService.batchUpdate(requestContext, orderHeaders);
        return new ResponseData(orderHeaders);
    }
    
    @RequestMapping(value = "/xqy/orderHeader/insert", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData insertOrderHeader(OrderHeader orderHeader, BindingResult result, HttpServletRequest request)
            throws BaseException {
    	List<OrderHeader> orderheaders=new ArrayList<OrderHeader>();
    	orderheaders.add(orderHeader);
        getValidator().validate(orderheaders, result);
        if (result.hasErrors()) {
            ResponseData rd = new ResponseData(false);
            rd.setMessage(getErrorMessage(result, request));
            return rd;
        }
        IRequest requestContext = createRequestContext(request);
        orderHeaderService.insert(requestContext, orderHeader);
        return new ResponseData(orderheaders);
    }
    
    @RequestMapping(value = "/xqy/orderHeader/changestatus", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData changeOrderHeaderStatus(@RequestParam(value="headerId",required=true)Long headerId,
    		@RequestParam(value="newStatus",required=true)String newStatus)
            throws BaseException {
    	OrderHeader orderHeader=new OrderHeader();
    	orderHeader.setHeaderId(headerId);
    	orderHeader.setOrderStatus(newStatus);
    	orderHeaderService.updateOrderHeaderStatus(orderHeader);
        return new ResponseData(true);
    }
    
}
