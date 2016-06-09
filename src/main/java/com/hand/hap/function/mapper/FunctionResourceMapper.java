/*
 * #{copyright}#
 */

package com.hand.hap.function.mapper;

import com.hand.hap.function.dto.FunctionResource;
import com.hand.hap.function.dto.Resource;
import tk.mybatis.mapper.common.Mapper;

/**
 * 功能资源mapper.
 * 
 * @author wuyichu
 */
public interface FunctionResourceMapper extends Mapper<FunctionResource> {

    int deleteByResource(Resource resource);

    int deleteByFunctionId(Long functionId);
}