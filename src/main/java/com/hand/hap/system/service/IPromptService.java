/*
 * #{copyright}#
 */
package com.hand.hap.system.service;

import java.util.List;

import com.hand.hap.system.dto.Prompt;
import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface IPromptService extends IBaseService<Prompt>, ProxySelf<IPromptService> {

    /**
     * 批量增删.
     * 
     * @param request
     *            请求上下文
     * @param prompts
     *            数据
     * @return 新的数据
     */
    List<Prompt> batchUpdate(IRequest request, @StdWho List<Prompt> prompts);

    /**
     * 批量删除.
     * 
     * @param prompts
     *            待删数据
     */
    void batchDelete(List<Prompt> prompts);

}
