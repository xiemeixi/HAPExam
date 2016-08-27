package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.Inventory;
import com.hand.hap.order.mapper.InventoryMapper;
import com.hand.hap.order.service.IInventoryService;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class InventoryServiceImpl extends BaseServiceImpl<Inventory> implements IInventoryService {


    @Autowired
    private InventoryMapper inventoryMapper;
    
	@Override
	public List<Inventory> selectByInventory(IRequest requestContext, Inventory inventory, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return inventoryMapper.selectByInventory(inventory);
	}
}
