package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.Company;
import com.hand.hap.order.mapper.CompanyMapper;
import com.hand.hap.order.service.ICompanyService;
import com.hand.hap.system.service.impl.BaseServiceImpl;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Service
public class CompanyServiceImpl extends BaseServiceImpl<Company> implements ICompanyService {


    @Autowired
    private CompanyMapper companyMapper;
    
	@Override
	public List<Company> selectByCompany(IRequest requestContext, Company company, int page, int pagesize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pagesize);
		return companyMapper.selectByCompany(company);
	}
}
