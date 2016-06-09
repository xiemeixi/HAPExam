package com.hand.hap.system.service;

import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.core.IRequest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface IBaseService<T> {

    List<T> select(IRequest request, T condition, int pageNum, int pageSize);

    T insert(IRequest request, @StdWho T record);

    T insertSelective(IRequest request, @StdWho T record);

    T updateByPrimaryKey(IRequest request, @StdWho T record);

    @Transactional(rollbackFor = Exception.class)
    T updateByPrimaryKeySelective(IRequest request, @StdWho T record);

    T selectByPrimaryKey(IRequest request, T record);

    int deleteByPrimaryKey(T record);
}
