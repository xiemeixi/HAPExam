package com.hand.hap.orders.service;


import java.util.List;

import com.hand.hap.core.ProxySelf;
import com.hand.hap.orders.dto.Customer;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface ICustomerService extends ProxySelf<ICustomerService> {

	/**
	 * 
	 * @param customer 放置查询条件的实体
	 * @param page 页数
	 * @param pagesize 页大小
	 * @return 所有符合条件的实体列表
	 */
    List<Customer> selectByCustomer(Customer customer, int page, int pagesize);
}
