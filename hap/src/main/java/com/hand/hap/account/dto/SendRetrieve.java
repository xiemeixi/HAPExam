/*
 * #{copyright}#
 */
package com.hand.hap.account.dto;

import com.hand.hap.system.dto.BaseDTO;

import java.util.Date;

/**
 * 发送次数限制dto.
 * @author Zhao
 *
 */
public class SendRetrieve extends BaseDTO {
    private Long userId;

    private String retrieveType;

    private Date retrieveDate;
    
    private String email;
    
    private String phoneNo;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getRetrieveType() {
        return retrieveType;
    }

    public void setRetrieveType(String retrieveType) {
        this.retrieveType = retrieveType == null ? null : retrieveType.trim();
    }

    public Date getRetrieveDate() {
        return retrieveDate;
    }

    public void setRetrieveDate(Date retrieveDate) {
        this.retrieveDate = retrieveDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }
    
}