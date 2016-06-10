/*
 * #{copyright}#
 */
package com.hand.hap.mail.mapper;

import java.util.List;

import com.hand.hap.mail.dto.Message;

/**
 * @author Clerifen Li
 * @author xiawang.liu@hand-china.com
 */
public interface MessageMapper {
    int deleteByPrimaryKey(Long messageId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Long messageId);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKeyWithBLOBs(Message record);

    int updateByPrimaryKey(Message record);
    
    /*
     * 根据功能条件查询功能.
     * 
     */
    List<Message> selectMessages(Message message);
    
    /*
     * 没有发出的sms列表,普通队列
     */
    List<Message> selectSmsToSend();
    
    /*
     * 没有发出的sms列表,优先队列
     */
    List<Message> selectVipSmsToSend();
    
    /*
     * 没有发出的邮件列表,普通队列
     */
    List<Message> selectEmailToSend();
    
    /*
     * 没有发出的邮件列表,优先队列
     */
    List<Message> selectVipEmailToSend();
    
    /*
     * 根据subject查询消息
     */
    List<Message> selectMessagesBySubject(Message message);
}