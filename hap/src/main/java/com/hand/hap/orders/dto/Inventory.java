package com.hand.hap.orders.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Table(name = "hap_inv_inventory_items")
public class Inventory implements Serializable{

	private static final long serialVersionUID = 1L;

	public static final String FIELD_SUPPLIER_ID = "inventoryId";

    @Id
    @NotNull
    @Column
    private Long inventoryId;

    @Column
    @NotNull
    private String itemCode;

    @Column
    @NotNull
    private String itemDescription;

	public Long getInventoryId() {
		return inventoryId;
	}

	public void setInventoryId(Long inventoryId) {
		this.inventoryId = inventoryId;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}
}
