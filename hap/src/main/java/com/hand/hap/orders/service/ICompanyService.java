package com.hand.hap.orders.service;


import java.util.List;

import com.hand.hap.core.ProxySelf;
import com.hand.hap.orders.dto.Company;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface ICompanyService extends ProxySelf<ICompanyService> {

	/**
	 * 
	 * @param company 放置查询条件的实体
	 * @param page 页数
	 * @param pagesize 页大小
	 * @return 所有符合条件的实体列表
	 */
    List<Company> selectByCompany(Company company, int page, int pagesize);
}
