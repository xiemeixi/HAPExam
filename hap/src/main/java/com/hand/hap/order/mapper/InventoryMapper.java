package com.hand.hap.order.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.order.dto.Inventory;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface InventoryMapper extends Mapper<Inventory> {
	List<Inventory> selectByInventory(Inventory inventory);
}
