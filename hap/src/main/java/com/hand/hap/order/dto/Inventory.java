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

@Table(name = "hap_inv_inventory_items")
public class Inventory extends BaseDTO{
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
	private Long inventoryItemId;
   
    @Column
	private String itemCode;
    
    @Column
	private String itemUom;
    
    @Column
	private String itemDescription;
    
    @Column
	private String orderFlag; 
    
    @Column
	private String startActiveDate;
    
    @Column
	private String endActiveDate;
    
    @Column
	private String enabledFlag;
    
    @Column
	private Long createdBy;
   
    @Column
	private Date creationDate;
    
    @Column
	private Long lastUpdatedBy;
    
    @Column
	private Date LastUpdateDate;

	public Long getInventoryItemId() {
		return inventoryItemId;
	}

	public void setInventoryItemId(Long inventoryItemId) {
		this.inventoryItemId = inventoryItemId;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemUom() {
		return itemUom;
	}

	public void setItemUom(String itemUom) {
		this.itemUom = itemUom;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public String getOrderFlag() {
		return orderFlag;
	}

	public void setOrderFlag(String orderFlag) {
		this.orderFlag = orderFlag;
	}

	public String getStartActiveDate() {
		return startActiveDate;
	}

	public void setStartActiveDate(String startActiveDate) {
		this.startActiveDate = startActiveDate;
	}

	public String getEndActiveDate() {
		return endActiveDate;
	}

	public void setEndActiveDate(String endActiveDate) {
		this.endActiveDate = endActiveDate;
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
		return LastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		LastUpdateDate = lastUpdateDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
    

}
