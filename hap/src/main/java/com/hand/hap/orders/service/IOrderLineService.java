package com.hand.hap.orders.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.orders.dto.OrderLine;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface IOrderLineService extends IBaseService<OrderLine>, ProxySelf<IOrderLineService> {
	List<OrderLine> selectByOrderLine(IRequest requestContext, OrderLine orderLine, int page, int pagesize);
	
	int insertMain(OrderLine orderLine );
	
	int insertOrUpdateOrderLineOther(OrderLine orderLine);
	
	/**
	 * 自己写了才好使的行删除
	 * @param orderLine orderLine
	 * @return 被删除的行数
	 */
	int deleteOrderLine(OrderLine orderLine);
}
