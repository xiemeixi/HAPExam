package com.hand.hap.orders.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Table(name = "hap_org_companys")
public class Company implements Serializable{

	private static final long serialVersionUID = 1L;

	public static final String FIELD_SUPPLIER_ID = "companyId";

    @Id
    @Column
    private Long companyId;

    @Column
    private String companyNumber;

    @Column
    private String companyName;

	public Long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
}
