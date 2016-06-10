/*
 * #{copyright}#
 */
package com.hand.hap.attachment.mapper;

import java.util.List;
import java.util.Map;

import com.hand.hap.attachment.dto.Attachment;

/**
 * Created by xiaohua on 16/2/1.
 * @author hua.xiao@hand-china.com
 */
public interface AttachmentMapper {

    /**
     * 返回附件列表.
     * 
     * @param attachment Attachment参数对象
     * @return List Attachment列表
     */
    List<Attachment> selectAttachments(Attachment attachment);

    /**
     * 插入一条附件.
     * 
     * @param record Attachment对象
     * @return int 插入成功条数
     */
    int insert(Attachment record);

    /**
     * 根据Attachment对象查找单个Attachment.
     * 
     * @param attachment Attachment对象
     * @return  Attachment Attachment对象
     */
    Attachment selectAttachment(Attachment attachment);
    
    /**
     * 删除.
     * 
     * @param record
     * @return
     */
    int delete(Attachment record);
    
    /**
     * 更新来源主键.
     * 
     * @param param 参数
     */
    int upgradeSourceKey(Map<String, Object> param);

}
