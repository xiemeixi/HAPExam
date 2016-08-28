package com.hand.hap.orders.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.orders.dto.OrderLine;
import com.hand.hap.orders.mapper.OrderLineMapper;
import com.hand.hap.orders.service.IOrderLineService;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class OrderLineServiceImpl extends BaseServiceImpl<OrderLine> implements IOrderLineService {

	@Autowired
    private OrderLineMapper orderLineMapper;
	
	@Override
	public int insertMain(OrderLine orderLine) {
		// TODO Auto-generated method stub
		return orderLineMapper.insertOrderLine(orderLine);
	}

	@Override
	public int insertOrUpdateOrderLineOther(OrderLine orderLine) {
		// TODO Auto-generated method stub
		return orderLineMapper.updateOrderLineOther(orderLine);
	}

	@Override
	public List<OrderLine> selectByOrderLine(IRequest requestContext, OrderLine orderLine, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return orderLineMapper.selectByOrderLine(orderLine);
	}

	@Override
	public int deleteOrderLine(OrderLine orderLine) {
		// TODO Auto-generated method stub
		return orderLineMapper.deleteOrderLine(orderLine);
		
	}
}
