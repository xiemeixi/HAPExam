package com.hand.hap.order.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.order.dto.Customer;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface ICustomerService extends IBaseService<Customer>, ProxySelf<ICustomerService> {
	 List<Customer> selectByCustomer(IRequest requestContext, Customer customer, int page, int pagesize);
}
