/*
 * #{copyright}#
 */

package com.hand.hap.function.mapper;

import java.util.List;

import com.hand.hap.function.dto.Function;
import com.hand.hap.function.dto.Resource;
import tk.mybatis.mapper.common.Mapper;

/**
 * 资源mapper.
 * 
 * @author wuyichu
 */
public interface ResourceMapper extends Mapper<Resource> {

    Resource selectResourceByUrl(String url);
    
    List<Resource> selectResourcesByFunction(Function function);
}