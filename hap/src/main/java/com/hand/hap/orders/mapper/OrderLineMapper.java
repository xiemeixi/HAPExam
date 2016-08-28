package com.hand.hap.orders.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.orders.dto.OrderLine;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface OrderLineMapper extends Mapper<OrderLine> {
	List<OrderLine> selectByOrderLine(OrderLine orderLine);
	/**
	 * 插入行表的Main部分
	 * @param orderLine orderLine
	 * @return 被操作的行数
	 */
	int insertOrderLine(OrderLine orderLine);
    
	/**
	 * 修改行表Other部分
	 * @param orderLine orderLine
	 * @return 被操作的行数
	 */
    int updateOrderLineOther(OrderLine orderLine);
    
    /**
	 * 修改行表Main部分
	 * @param orderLine orderLine
	 * @return 被操作的行数
	 */
    int updateOrderLineMain(OrderLine orderLine);
    
    /**
	 * 删除行表
	 * @param orderLine orderLine
	 * @return 被操作的行数
	 */
    int deleteOrderLine(OrderLine orderLine);
}
