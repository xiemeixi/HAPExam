package com.hand.hap.system.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.annotation.StdWho;

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

    List<T> selectAll();

    List<T> batchUpdate(IRequest request, List<T> list);

    void batchDelete(List<T> list);
}
