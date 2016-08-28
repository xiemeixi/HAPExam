package com.hand.hap.orders.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.orders.dto.OrderHeader;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface IOrderHeaderService extends IBaseService<OrderHeader>, ProxySelf<IOrderHeaderService> {
	OrderHeader updateOrderHeader(OrderHeader orderHeader);
	List<OrderHeader> batchUpdate(IRequest request, List<OrderHeader> orderHeaders);
	OrderHeader createOrderHeader(OrderHeader orderHeader) ;
	List<OrderHeader> selectByOrderHeader(IRequest requestContext, OrderHeader orderHeader, int page, int pagesize);
	int updateOrderHeaderStatus(OrderHeader orderHeader);
}
