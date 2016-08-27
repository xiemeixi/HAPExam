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

@Table(name = "hap_org_companys")
public class Company extends BaseDTO{
    

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
	private Long companyId;
   
    @Column
	private String companyNumber;
    
    @Column
	private String companyName;
    
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
    

}
