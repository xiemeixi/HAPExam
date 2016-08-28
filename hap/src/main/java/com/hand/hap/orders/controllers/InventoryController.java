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

import com.hand.hap.orders.dto.Inventory;
import com.hand.hap.orders.service.IInventoryService;
import com.hand.hap.system.dto.ResponseData;

/**
 * Company控制器.
 * 
 * @author qingyun.xie@hand-china.com
 */
@Controller
public class InventoryController{
	protected static final String DEFAULT_PAGE = "1";
	
    protected static final String DEFAULT_PAGE_SIZE = "10";

    protected static final String SYS_VALIDATION_PREFIX = "hap.validation.";

    protected static final String DEFAULT_VIEW_HOME = "";
	
    @Autowired
    private IInventoryService inventoryService;
    
    /**
     * 任务分配查询.
     * 
     * @param inventory
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @return ResponseData
     *            Json对象
     */
    @RequestMapping(value = "/xqy/inventory/query")
    @ResponseBody
    public ResponseData getTasks(Inventory inventory, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
    	return new ResponseData(inventoryService.selectByInventory(inventory, page, pagesize));
    }
}
