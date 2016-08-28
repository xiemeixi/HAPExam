package com.hand.hap.orders.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.orders.dto.Company;
import com.hand.hap.orders.mapper.CompanyMapper;
import com.hand.hap.orders.service.ICompanyService;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class CompanyServiceImpl implements ICompanyService {

    @Autowired
    private CompanyMapper companyMapper;
    
	@Override
	public List<Company> selectByCompany(Company company, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return companyMapper.selectByCompany(company);
	}
}
