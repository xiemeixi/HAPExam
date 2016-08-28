package com.hand.hap.orders.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.orders.dto.Inventory;
import com.hand.hap.orders.mapper.InventoryMapper;
import com.hand.hap.orders.service.IInventoryService;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class InventoryServiceImpl implements IInventoryService {

    @Autowired
    private InventoryMapper inventoryMapper;
    
	@Override
	public List<Inventory> selectByInventory(Inventory inventory, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return inventoryMapper.selectByInventory(inventory);
	}
}
