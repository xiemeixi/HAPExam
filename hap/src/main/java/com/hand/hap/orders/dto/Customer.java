package com.hand.hap.orders.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Table(name = "hap_ar_customers")
public class Customer implements Serializable{

	private static final long serialVersionUID = 1L;

	public static final String FIELD_SUPPLIER_ID = "customerId";

    @Id
    @Column
    private Long customerId;

    @Column
    private String customerNumber;

    @Column
    private String customerName;
    
    @Column
    private Long companyId;

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getCustomerNumber() {
		return customerNumber;
	}

	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}
}
