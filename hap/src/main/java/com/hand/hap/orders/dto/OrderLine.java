package com.hand.hap.orders.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.hand.hap.system.dto.BaseDTO;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Table(name = "hap_om_order_headers")
public class OrderLine extends BaseDTO {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String FIELD_SUPPLIER_ID = "lineId";

    @Id
    @Column
    @NotNull
    @GeneratedValue(generator = GENERATOR_TYPE)
    private Long lineId;
    
    @Column
    private Long headerId;
    
    @Column
    @NotNull
    private Long lineNumber;
    
    @Column
    @NotNull
    private Long inventoryId;
    
    @Column
    @NotNull
    private Long orderQuantity;

    @Column
    @NotNull
    private String quantityUom;
    
    @Column
    @NotNull
    private Long unitSellingPrice;

    @Column
    private String description;
    
    @Column
    @NotNull
    private Long companyId;
    
    @Column
    private String addition1;
    
    @Column
    private String addition2;
    
    @Column
    private String addition3;
    
    @Column
    private String addition4;
    
    @Column
    private String addition5;

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

	public Long getInventoryId() {
		return inventoryId;
	}

	public void setInventoryId(Long inventoryId) {
		this.inventoryId = inventoryId;
	}

	public Long getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(Long orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public String getQuantityUom() {
		return quantityUom;
	}

	public void setQuantityUom(String quantityUom) {
		this.quantityUom = quantityUom;
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

	public String getAddition1() {
		return addition1;
	}

	public void setAddition1(String addition1) {
		this.addition1 = addition1;
	}

	public String getAddition2() {
		return addition2;
	}

	public void setAddition2(String addition2) {
		this.addition2 = addition2;
	}

	public String getAddition3() {
		return addition3;
	}

	public void setAddition3(String addition3) {
		this.addition3 = addition3;
	}

	public String getAddition4() {
		return addition4;
	}

	public void setAddition4(String addition4) {
		this.addition4 = addition4;
	}

	public String getAddition5() {
		return addition5;
	}

	public void setAddition5(String addition5) {
		this.addition5 = addition5;
	}
}
