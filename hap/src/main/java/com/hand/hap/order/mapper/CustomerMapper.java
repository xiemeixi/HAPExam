package com.hand.hap.order.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.order.dto.Customer;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface CustomerMapper extends Mapper<Customer> {
	List<Customer> selectByCustomer(Customer customer);
}
