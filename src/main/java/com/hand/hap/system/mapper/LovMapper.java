/*
 * #{copyright}#
 */
package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.Lov;
import tk.mybatis.mapper.common.Mapper;

/**
 * 
 * @author njq.niu@hand-china.com
 *
 * 2016年2月1日
 */
public interface LovMapper extends Mapper<Lov> {

    Lov selectByCode(String code);

}