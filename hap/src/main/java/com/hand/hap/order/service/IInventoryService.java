package com.hand.hap.order.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.order.dto.Inventory;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface IInventoryService extends IBaseService<Inventory>, ProxySelf<IInventoryService> {
	 List<Inventory> selectByInventory(IRequest requestContext, Inventory inventory, int page, int pagesize);
}
