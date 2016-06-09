/*
 * #{copyright}#
 */
package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.SysPreferences;

/**
 * 系统首选项Mapper.
 * 
 * @author zhangYang
 */
public interface SysPreferencesMapper {
    int deleteByPrimaryKey(Long preferencesId);

    int insert(SysPreferences record);

    int insertSelective(SysPreferences record);

    SysPreferences selectByPrimaryKey(Long preferencesId);

    int updateByPrimaryKeySelective(SysPreferences record);

    int updateByPrimaryKey(SysPreferences record);
    
    List<SysPreferences> selectPreferences(SysPreferences record);
    
    SysPreferences selectPreferLine(SysPreferences record);
    
    int updatePreferLine(SysPreferences record);
}