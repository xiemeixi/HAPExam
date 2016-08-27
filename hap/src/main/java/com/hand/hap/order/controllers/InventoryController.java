/*
 * #{copyright}#
 */

package com.hand.hap.order.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.Inventory;
import com.hand.hap.order.service.IInventoryService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

/**
 * PhoneSupplier控制器.
 * 
 * @author gaokuo.dai@hand-china.com
 */
@Controller
 public class InventoryController extends BaseController {

    @Autowired
    private IInventoryService inventoryService;
    
    /**
     * 任务分配查询.
     * 
     * @param phone
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @param request
     *            HttpServletRequest
     * @return ResponseData
     */
    @RequestMapping(value = "/xqy/order/inventory/query")
    @ResponseBody
    public ResponseData getTasks(Inventory inventory, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(inventoryService.selectByInventory(requestContext, inventory, page, pagesize));
    }
    
}
