/*
 * #{copyright}#
 */

package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.Code;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface CodeMapper {
    int deleteByPrimaryKey(Code record);

    int insert(Code record);

    Code selectByPrimaryKey(Code example);

    List<Code> selectCodes(Code record);

    int updateByPrimaryKeySelective(Code record);

    int updateByPrimaryKey(Code record);
}