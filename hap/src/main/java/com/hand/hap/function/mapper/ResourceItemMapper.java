/*
 * #{copyright}#
 */

package com.hand.hap.function.mapper;

import java.util.List;

import com.hand.hap.function.dto.Function;
import com.hand.hap.function.dto.Resource;
import com.hand.hap.function.dto.ResourceItem;

public interface ResourceItemMapper {
    
    int deleteByPrimaryKey(Long resourceItemId);

    int insert(ResourceItem record);

    ResourceItem selectByPrimaryKey(Long resourceItemId);

    int updateByPrimaryKey(ResourceItem record);
    
    List<ResourceItem> selectResourceItemsByResourceId(Resource resource);
    
    List<ResourceItem> selectResourceItemsByFunctionId(Function function);
    
    
    ResourceItem selectResourceItemByResourceIdAndItemId(ResourceItem record);
    
}