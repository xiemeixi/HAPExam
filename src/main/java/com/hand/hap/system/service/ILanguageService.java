/*
 * #{copyright}#
 */

package com.hand.hap.system.service;

import java.util.List;

import com.hand.hap.system.dto.Language;
import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;

/**
 * @author shengyang.zhou@hand-china.com
 */
public interface ILanguageService extends IBaseService<Language>, ProxySelf<ILanguageService> {


    /**
     * 查询所有支持语言
     * @return
     */
    List<Language> selectAll();

    /**
     * 批量 增改.
     * 
     * @param request
     *            request context
     * @param languageList
     *            datas
     * @return the datas passed in
     */
    List<Language> batchUpdate(IRequest request, @StdWho List<Language> languageList);

    /**
     * 批量删除.
     * 
     * @param languageList
     *            data to delete
     */
    void batchDelete(List<Language> languageList);
}
