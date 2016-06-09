/*
 * #{copyright}#
 */
package com.hand.hap.mail.mapper;

import java.util.List;

import com.hand.hap.mail.dto.MessageEmailAccount;
import com.hand.hap.mail.dto.MessageEmailAccountVo;
import org.apache.ibatis.annotations.Param;


/**
 * @author Clerifen Li
 */
public interface MessageEmailAccountMapper {
    
    int deleteByPrimaryKey(Long accountId);

    int deleteByConfigId(Long configId);
    
    int insert(MessageEmailAccount record);

    int insertSelective(MessageEmailAccount record);

    MessageEmailAccount selectByPrimaryKey(Long accountId);

    List<MessageEmailAccountVo> selectMessageEmailAccounts(MessageEmailAccount record);

    List<MessageEmailAccount> selectMessageEmailAccountPassword(MessageEmailAccount record);
    
    int updateByPrimaryKeySelective(MessageEmailAccount record);

    int updateByPrimaryKey(MessageEmailAccount record);

    MessageEmailAccount selectByMarketId(Long marketId);

    MessageEmailAccount selectByAccountCode(String accountCode);
    
    MessageEmailAccount getMsgEmailAccountByCodeAndMarketId(@Param("accountId") Long accountId, 
            @Param("accountCode") String accountCode, @Param("marketId") Long marketId);
}