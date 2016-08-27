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

@Table(name = "hap_om_order_headers")
public class Header extends BaseDTO{
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
	private Long headerId;
   
    @Column
	private String orderNumber;
    
    @Column
	private Long companyId;
    
    @Column
	private Date orderDate;
    
    @Column
	private String orderStatus;
    
    @Column
	private Long customerId;
    
    @Column
	private Long requestId;
    
    @Column
	private Long programId;
    
    @Column
	private Long createdBy;
   
    @Column
	private Date creationDate;
    
    @Column
	private Long lastUpdatedBy;
    
    @Column
	private Date LastUpdateDate;
    
    @Column
	private Long LastUpdateLogin;

	public Long getHeaderId() {
		return headerId;
	}

	public void setHeaderId(Long headerId) {
		this.headerId = headerId;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public Long getRequestId() {
		return requestId;
	}

	public void setRequestId(Long requestId) {
		this.requestId = requestId;
	}

	public Long getProgramId() {
		return programId;
	}

	public void setProgramId(Long programId) {
		this.programId = programId;
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
		return LastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		LastUpdateDate = lastUpdateDate;
	}

	public Long getLastUpdateLogin() {
		return LastUpdateLogin;
	}

	public void setLastUpdateLogin(Long lastUpdateLogin) {
		LastUpdateLogin = lastUpdateLogin;
	}

    

}
