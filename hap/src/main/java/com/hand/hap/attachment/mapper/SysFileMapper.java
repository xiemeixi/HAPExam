/*
 * #{copyright}#
 */
package com.hand.hap.attachment.mapper;

import java.util.List;

import com.hand.hap.attachment.dto.SysFile;
import org.apache.ibatis.annotations.Param;

/**
 * Created by xiaohua on 16/2/1.
 * 
 * @author hua.xiao@hand-china.com
 */
public interface SysFileMapper {

    /**
     * 根据主健查找文件对象.
     * @param fileId 文件对象id
     * @return  SysFile 文件对象
     */
    SysFile selectByPrimaryKey(Long fileId);

    /**
     * 插入.
     * 
     * @param sysFile SysFile对象
     * @return int 插入成功条数
     */
    int insert(SysFile sysFile);

    /**
     * 删除文件.
     * 
     * @param file SysFile对象
     * @return 返回删除成功条数
     */
    int delete(SysFile file);

    /**
     * 返回文件 列表.
     * 
     * @param file SysFile对象
     * @return List SysFile列表
     */
    List<SysFile> selectSysFiles(SysFile file);
    
    /**
     * 根据attachmentId SysFile 参数查找Sysfile列表.
     * 
     * @param attachmentIds
     *            attachmentId列表
     * @param file
     *            SysFile参数
     * @return List SysFile列表
     */
    List<SysFile> selectFilesByAttachIds(@Param("attachmentIds") List<Long> attachmentIds,
            @Param("sysFile") SysFile file);
    
    /**
     * 更新SysFile对象.
     * @param file SysFile
     * @return int 返回成功数量
     */
    int updateByPrimaryKeySelective(SysFile file);

    /**
     * 根据id列表查找出所属文件对象集合.
     * @param fileIds List
     * @return List SysFile对象列表
     */
    List<SysFile> selectFilesByIds(@Param("fileIds")List<String> fileIds);

}
