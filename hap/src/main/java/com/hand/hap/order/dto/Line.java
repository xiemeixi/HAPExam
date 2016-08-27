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

@Table(name = "hap_om_order_lines")
public class Line extends BaseDTO{
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
	private Long lineId;
   
	@Column
	private Long headerId;
	
	@Column
	private Long lineNumber;
	
	@Column
	private Long inventoryItemId;
	
	@Column
	private Long orderdQuantity;
	
	@Column
	private String orderQuantityUom;
	
	@Column
	private Long unitSellingPrice;
    
    @Column
	private String description;
    
    @Column
	private Long companyId;
    
    @Column
	private String addtion1;
    
    @Column
	private String addtion2;
    
    @Column
	private String addtion3;
    
    @Column
	private String addtion4;
    
    @Column
	private String addtion5;
   
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

	public Long getLineId() {
		return lineId;
	}

	public void setLineId(Long lineId) {
		this.lineId = lineId;
	}

	public Long getHeaderId() {
		return headerId;
	}

	public void setHeaderId(Long headerId) {
		this.headerId = headerId;
	}

	public Long getLineNumber() {
		return lineNumber;
	}

	public void setLineNumber(Long lineNumber) {
		this.lineNumber = lineNumber;
	}

	public Long getInventoryItemId() {
		return inventoryItemId;
	}

	public void setInventoryItemId(Long inventoryItemId) {
		this.inventoryItemId = inventoryItemId;
	}

	public Long getOrderdQuantity() {
		return orderdQuantity;
	}

	public void setOrderdQuantity(Long orderdQuantity) {
		this.orderdQuantity = orderdQuantity;
	}

	public String getOrderQuantityUom() {
		return orderQuantityUom;
	}

	public void setOrderQuantityUom(String orderQuantityUom) {
		this.orderQuantityUom = orderQuantityUom;
	}

	public Long getUnitSellingPrice() {
		return unitSellingPrice;
	}

	public void setUnitSellingPrice(Long unitSellingPrice) {
		this.unitSellingPrice = unitSellingPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}

	public String getAddtion1() {
		return addtion1;
	}

	public void setAddtion1(String addtion1) {
		this.addtion1 = addtion1;
	}

	public String getAddtion2() {
		return addtion2;
	}

	public void setAddtion2(String addtion2) {
		this.addtion2 = addtion2;
	}

	public String getAddtion3() {
		return addtion3;
	}

	public void setAddtion3(String addtion3) {
		this.addtion3 = addtion3;
	}

	public String getAddtion4() {
		return addtion4;
	}

	public void setAddtion4(String addtion4) {
		this.addtion4 = addtion4;
	}

	public String getAddtion5() {
		return addtion5;
	}

	public void setAddtion5(String addtion5) {
		this.addtion5 = addtion5;
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
