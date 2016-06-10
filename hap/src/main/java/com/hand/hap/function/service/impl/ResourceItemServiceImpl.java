/*
 * #{copyright}#
 */
package com.hand.hap.function.service.impl;

import java.util.List;

import com.hand.hap.function.dto.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hand.hap.core.IRequest;
import com.hand.hap.function.dto.ResourceItem;
import com.hand.hap.function.mapper.ResourceItemMapper;
import com.hand.hap.function.mapper.RoleResourceItemMapper;
import com.hand.hap.function.service.IResourceItemService;

/**
 * @author njq.niu@hand-china.com
 *
 * 2016年4月7日
 * 
 * TODO:缓存处理
 */
@Transactional
@Service
public class ResourceItemServiceImpl implements IResourceItemService {

    @Autowired
    private ResourceItemMapper resourceItemMapper;
    
    @Autowired
    private RoleResourceItemMapper roleResourceItemMapper;
    
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<ResourceItem> selectResourceItems(IRequest requestContext, Resource resource) {
        return resourceItemMapper.selectResourceItemsByResourceId(resource);
    }

    @Override
    public List<ResourceItem> batchUpdate(IRequest requestContext, List<ResourceItem> resourceItems)  {
        for (ResourceItem resourceItem : resourceItems) {
            if (resourceItem.getResourceItemId() != null) {
                update(resourceItem);
            } else {
                create(resourceItem);
            }
        }
        return resourceItems;
    }
    
    private ResourceItem create(ResourceItem resourceItem) {
        resourceItemMapper.insert(resourceItem);
        return resourceItem;
    }

    
    private ResourceItem update(ResourceItem resourceItem) {
        resourceItemMapper.updateByPrimaryKey(resourceItem);
        return resourceItem;
    }

    private void delete(ResourceItem resourceItem) {
        if (resourceItem == null || resourceItem.getResourceItemId() == null) {
            return;
        }
        resourceItemMapper.deleteByPrimaryKey(resourceItem.getResourceItemId());
        roleResourceItemMapper.deleteByResourceItemId(resourceItem.getResourceItemId());
    }

    @Override
    public void batchDelete(IRequest requestContext, List<ResourceItem> resourceItems)  {
        if (resourceItems == null || resourceItems.isEmpty()) {
            return;
        }
        for (ResourceItem resourceItem : resourceItems) {
            delete(resourceItem);
        }
    }
    
    @Override
    public ResourceItem selectResourceItemByResourceIdAndItemId(ResourceItem resourceItem) {
        return resourceItemMapper.selectResourceItemByResourceIdAndItemId(resourceItem);
    }

}
