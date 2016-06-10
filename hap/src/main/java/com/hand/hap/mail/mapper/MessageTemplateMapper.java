/*
 * #{copyright}#
 */

package com.hand.hap.mail.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hand.hap.mail.dto.MessageTemplate;

public interface MessageTemplateMapper {
    int deleteByPrimaryKey(Long templateId);

    int insert(MessageTemplate record);

    int insertSelective(MessageTemplate record);

    MessageTemplate selectByPrimaryKey(Long templateId);
    
    MessageTemplate selectByCode(String templateCode);

    List<MessageTemplate> selectMessageTemplates(MessageTemplate record);
    
    int updateByPrimaryKeySelective(MessageTemplate record);

    int updateByPrimaryKeyWithBLOBs(MessageTemplate record);

    int updateByPrimaryKey(MessageTemplate record);
    
    MessageTemplate getMsgTemByCode(@Param("templateId") Long templateId,
                                    @Param("templateCode") String templateCode);
}