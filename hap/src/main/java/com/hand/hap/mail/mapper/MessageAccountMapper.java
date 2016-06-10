/*
 * #{copyright}#
 */

package com.hand.hap.mail.mapper;

import java.math.BigDecimal;
import java.util.List;

import com.hand.hap.mail.dto.MessageAccount;

public interface MessageAccountMapper {
    int deleteByPrimaryKey(BigDecimal accountId);

    int insert(MessageAccount record);

    int insertSelective(MessageAccount record);

    MessageAccount selectByPrimaryKey(BigDecimal accountId);

    MessageAccount selectByUniqueCode(String accountCode);
    
    int updateByPrimaryKeySelective(MessageAccount record);

    int updateByPrimaryKey(MessageAccount record);

    List<MessageAccount> selectMessageAccounts(MessageAccount example);
    
    List<MessageAccount> selectMessageAccountPassword(MessageAccount example);
}