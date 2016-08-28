package com.hand.hap.orders.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.orders.dto.Customer;
import com.hand.hap.orders.mapper.CustomerMapper;
import com.hand.hap.orders.service.ICustomerService;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class CustomerServiceImpl implements ICustomerService {

    @Autowired
    private CustomerMapper customerMapper;

	@Override
	public List<Customer> selectByCustomer(Customer customer, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return customerMapper.selectByCustomer(customer);
	}
}
