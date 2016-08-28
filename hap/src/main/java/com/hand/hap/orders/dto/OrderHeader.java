package com.hand.hap.orders.dto;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import com.hand.hap.core.annotation.Children;
import com.hand.hap.system.dto.BaseDTO;

/**
 * @author gaokuo.dai@hand-china.com
 */
@Table(name = "hap_om_order_headers")
public class OrderHeader extends BaseDTO {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String FIELD_SUPPLIER_ID = "headerId";

    @Id
    @Column
    @NotNull
    @GeneratedValue(generator = GENERATOR_TYPE)
    private Long headerId;

    @Column
    @NotNull
    private String orderNumber;
    
    @Column
    @NotNull
    private Long companyId;
    
    @Column
    @NotNull
    private Date orderDate;

    @Column
    private String orderStatus;
    
    @Column
    @NotNull
    private Long customerId;
    
    @Children
    @Transient
    private List<OrderLine> orderLines;

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

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}

	
}
