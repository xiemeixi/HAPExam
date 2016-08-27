package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.Customer;
import com.hand.hap.order.mapper.CustomerMapper;
import com.hand.hap.order.service.ICustomerService;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class CustomerServiceImpl extends BaseServiceImpl<Customer> implements ICustomerService {


    @Autowired
    private CustomerMapper customerMapper;
    
	@Override
	public List<Customer> selectByCustomer(IRequest requestContext, Customer customer, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return customerMapper.selectByCustomer(customer);
	}
}
