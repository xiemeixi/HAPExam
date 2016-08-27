package com.hand.hap.order.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.order.dto.Company;

/**
 * @author gaokuo.dai@hand-china.com
 */
public interface CompanyMapper extends Mapper<Company> {
	List<Company> selectByCompany(Company company);
}
