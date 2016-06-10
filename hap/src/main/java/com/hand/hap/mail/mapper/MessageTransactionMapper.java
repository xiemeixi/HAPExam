/*
 * #{copyright}#
 */

package com.hand.hap.mail.mapper;

import com.hand.hap.mail.dto.MessageTransaction;

/**
 * @author chuangsheng.zhang
 */
public interface MessageTransactionMapper {
    int deleteByPrimaryKey(Long transactionId);

    int deleteByMessageId(Long messageId);
    
    int insert(MessageTransaction record);

    int insertSelective(MessageTransaction record);

    MessageTransaction selectByPrimaryKey(Long transactionId);

    int updateByPrimaryKeySelective(MessageTransaction record);

    int updateByPrimaryKeyWithBLOBs(MessageTransaction record);

    int updateByPrimaryKey(MessageTransaction record);
    
    long selectSuccessCountByMessageId(Long messageId);
}