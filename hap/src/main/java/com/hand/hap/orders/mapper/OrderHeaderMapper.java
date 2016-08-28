package com.hand.hap.orders.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.orders.dto.OrderHeader;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface OrderHeaderMapper extends Mapper<OrderHeader> {
	List<OrderHeader> selectByOrderHeader(OrderHeader orderHeader);
	
	int updateOrderHeaderStatus(OrderHeader orderHeader);
}
