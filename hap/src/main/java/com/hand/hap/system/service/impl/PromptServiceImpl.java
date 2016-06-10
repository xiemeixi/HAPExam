/*
 * #{copyright}#
 */
package com.hand.hap.system.service.impl;

import java.util.List;

import com.hand.hap.cache.CacheDelete;
import com.hand.hap.cache.CacheSet;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.Prompt;
import com.hand.hap.system.mapper.PromptMapper;
import com.hand.hap.system.service.IPromptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author shengyang.zhou@hand-china.com
 */
@Service
public class PromptServiceImpl extends BaseServiceImpl<Prompt> implements IPromptService {

    @Autowired
    private PromptMapper promptMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<Prompt> batchUpdate(IRequest request, List<Prompt> prompts) {
        for (Prompt p : prompts) {
            if (p.getPromptId() == null) {
                self().insertSelective(request, p);
            } else {
                self().updateByPrimaryKeySelective(request, p);
            }
        }
        return prompts;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void batchDelete(List<Prompt> prompts) {
        prompts.forEach(self()::deleteByPrimaryKey);
    }

    @Override
    @CacheSet(cache = "prompt")
    public Prompt insertSelective(IRequest request, Prompt prompt) {
        super.insertSelective(request, prompt);
        return prompt;
    }

    @Override
    @CacheDelete(cache = "prompt")
    public int deleteByPrimaryKey(Prompt prompt) {
        return super.deleteByPrimaryKey(prompt);
    }

    @Override
    @CacheSet(cache = "prompt")
    public Prompt updateByPrimaryKeySelective(IRequest request, Prompt prompt) {
        super.updateByPrimaryKeySelective(request, prompt);
        return prompt;
    }
}
