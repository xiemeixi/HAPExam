/*
 * #{copyright}#
 */
package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.DemoUser;
/**
 * 
 * @author njq.niu@hand-china.com
 *
 * 2016年1月26日
 */
public interface DemoUserMapper {
    
    int insert(DemoUser record);

    void delete(Long id);
    
    int update(DemoUser record);
    
    List select();
}