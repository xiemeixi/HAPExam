package com.hand.hap.orders.mapper;

import java.util.List;

import com.hand.hap.orders.dto.Company;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface CompanyMapper {

    List<Company> selectByCompany(Company company);
}
