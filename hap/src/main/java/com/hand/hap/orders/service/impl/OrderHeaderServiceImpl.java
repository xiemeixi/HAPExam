package com.hand.hap.orders.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.orders.dto.OrderHeader;
import com.hand.hap.orders.dto.OrderLine;
import com.hand.hap.orders.mapper.OrderHeaderMapper;
import com.hand.hap.orders.mapper.OrderLineMapper;
import com.hand.hap.orders.service.IOrderHeaderService;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class OrderHeaderServiceImpl extends BaseServiceImpl<OrderHeader> implements IOrderHeaderService {
	@Autowired
	private OrderHeaderMapper orderHeaderMapper;
	
	@Autowired
	private OrderLineMapper orderLineMapper;
	
	/**
     * 批量操作快码行数据.
     *
     * @param code
     *            头行数据
     */
    private void processOrderLines(OrderHeader orderHeader) {
        for (OrderLine orderLine : orderHeader.getOrderLines()) {
            if (orderLine.getHeaderId() == null) {
            	orderLine.setHeaderId(orderHeader.getHeaderId()); // 设置头ID跟行ID一致
            	orderLineMapper.insertOrderLine(orderLine);
            } else if (orderLine.getHeaderId() != null) {
            	orderLineMapper.updateOrderLineMain(orderLine);
            	//orderLineMapper.updateByPrimaryKeySelective(orderLine);
            }
        }
    }
    
    @Override
    public OrderHeader updateOrderHeader(OrderHeader orderHeader) {
    	// 更新头行
        orderHeaderMapper.updateByPrimaryKeySelective(orderHeader);
        // 判断如果行不为空，则迭代循环更新
        if (orderHeader.getOrderLines()!= null) {
        	processOrderLines(orderHeader);
        }
        return orderHeader;
    }
    
    @Override
    public OrderHeader createOrderHeader(OrderHeader orderHeader) {
        // 插入头行
        //orderHeaderMapper.insertSelective(orderHeader);
        orderHeaderMapper.insert(orderHeader);
        // 判断如果行不为空，则迭代循环插入
        if (orderHeader.getOrderLines()!= null) {
        	processOrderLines(orderHeader);
        }
        return orderHeader;
    }
    
    @Override
    public List<OrderHeader> batchUpdate(IRequest request, List<OrderHeader> orderHeaders) {
        for (OrderHeader orderHeader : orderHeaders) {
            if (orderHeader.getHeaderId() == -12345l) {
        		orderHeader.setHeaderId(new Date().getTime());
        		try {
					Thread.sleep(5);
				} catch (InterruptedException e) {
					e.printStackTrace();//吞没异常
				}
                self().createOrderHeader(orderHeader);
            } else if (orderHeader.getHeaderId() != null) {
                self().updateOrderHeader(orderHeader);
            }
        }
        return orderHeaders;
    }
    
    @Override
	public List<OrderHeader> selectByOrderHeader(IRequest requestContext, OrderHeader orderHeader, int page, int pagesize) {
    	PageHelper.startPage(page, pagesize);
    	return orderHeaderMapper.selectByOrderHeader(orderHeader);
	}

	@Override
	public int updateOrderHeaderStatus(OrderHeader orderHeader) {
		// TODO Auto-generated method stub
		return orderHeaderMapper.updateOrderHeaderStatus(orderHeader);
	}
}
