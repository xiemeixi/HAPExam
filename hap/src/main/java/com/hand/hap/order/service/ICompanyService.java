package com.hand.hap.order.service;


import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.order.dto.Company;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by gaokuo.dai@hand-china.com on 16/8/23.
 */
public interface ICompanyService extends IBaseService<Company>, ProxySelf<ICompanyService> {
	 List<Company> selectByCompany(IRequest requestContext, Company company, int page, int pagesize);
}
