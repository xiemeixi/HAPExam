/*
 * #{copyright}#
 */
package com.hand.hap.mail.mapper;

import java.util.List;

import com.hand.hap.mail.dto.MessageEmailConfig;


/**
 * @author Clerifen Li
 */
public interface MessageEmailConfigMapper {
    int deleteByPrimaryKey(Long configId);

    int insert(MessageEmailConfig record);

    int insertSelective(MessageEmailConfig record);

    MessageEmailConfig selectByPrimaryKey(Long configId);
    
    List<MessageEmailConfig> selectMessageEmailConfigs(MessageEmailConfig record);

    int updateByPrimaryKeySelective(MessageEmailConfig record);

    int updateByPrimaryKey(MessageEmailConfig record);
    
    Integer queryMsgConfigQuanties();
}