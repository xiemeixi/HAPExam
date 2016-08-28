package com.hand.hap.orders.mapper;

import java.util.List;

import com.hand.hap.orders.dto.Inventory;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface InventoryMapper{

    List<Inventory> selectByInventory(Inventory inventory);
}
