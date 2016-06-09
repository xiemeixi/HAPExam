/*
 * #{copyright}#
 */

package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.CodeValue;
import org.apache.ibatis.annotations.Param;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface CodeValueMapper {

    int deleteByPrimaryKey(CodeValue key);

    int deleteByCodeValueId(CodeValue key);

    int deleteByCodeId(CodeValue key);

    int deleteTlByCodeId(CodeValue key);

    int insert(CodeValue record);

    CodeValue selectByPrimaryKey(CodeValue key);

    List<CodeValue> selectCodeValues(CodeValue record);
    
    List<CodeValue> selectCodeValuesByCodeName(String codeName);

    int updateByPrimaryKey(CodeValue record);
    
    List<CodeValue> queryMsgTemCodeLov(@Param("value") String value, @Param("meaning") String meaning);
    
    List<CodeValue> queryEmlAccountCodeLov(@Param("value") String value, @Param("meaning") String meaning);
}