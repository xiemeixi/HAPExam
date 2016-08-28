package com.hand.hap.orders.mapper;

import java.util.List;

import com.hand.hap.orders.dto.Customer;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface CustomerMapper {

    List<Customer> selectByCustomer(Customer customer);
}
