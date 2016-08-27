package com.hand.hap.order.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.hand.hap.system.dto.BaseDTO;

/**
 * 
 */

@Table(name = "hap_ar_customers")
public class Customer extends BaseDTO{
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
	private Long customerId;
   
    @Column
	private String customerNumber;
    
    @Column
	private String customerName;
    
    @Column
	private String enabledFlag;
    
    @Column
	private Long createdBy;
   
    @Column
	private Date creationDate;
    
    @Column
	private Long lastUpdatedBy;
    
    @Column
	private Date lastUpdateDate;

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

	public String getEnabledFlag() {
		return enabledFlag;
	}

	public void setEnabledFlag(String enabledFlag) {
		this.enabledFlag = enabledFlag;
	}

	public Long getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public Long getLastUpdatedBy() {
		return lastUpdatedBy;
	}

	public void setLastUpdatedBy(Long lastUpdatedBy) {
		this.lastUpdatedBy = lastUpdatedBy;
	}

	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
    
}
