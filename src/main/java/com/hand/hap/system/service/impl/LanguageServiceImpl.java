/*
 * #{copyright}#
 */
package com.hand.hap.system.service.impl;

import java.util.List;

import com.hand.hap.cache.CacheDelete;
import com.hand.hap.system.dto.Language;
import com.hand.hap.system.mapper.LanguageMapper;
import com.hand.hap.system.service.ILanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.cache.CacheSet;
import com.hand.hap.cache.impl.HashStringRedisCache;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.DTOStatus;

/**
 * @author shengyang.zhou@hand-china.com
 */
@Service
public class LanguageServiceImpl extends BaseServiceImpl<Language> implements ILanguageService {

    @Autowired
    private LanguageMapper languageMapper;

    @Autowired
    @Qualifier("languageCache")
    private HashStringRedisCache<Language> languageCache;

    @Override
    @CacheSet(cache = "language")
    public Language insertSelective(IRequest request, Language lang) {
        return  super.insertSelective(request, lang);
    }

    @Override
    @CacheSet(cache = "language")
    public Language updateByPrimaryKeySelective(IRequest request, Language lang) {
        return super.updateByPrimaryKeySelective(request, lang);
    }

    @Override
    @CacheDelete(cache = "language")
    public int deleteByPrimaryKey(Language lang) {
        // sys_lang 暂时没有多语言支持的必要,删除时可以用主键直接删除
        return super.deleteByPrimaryKey(lang);
    }

    @Override
    public List<Language> selectAll() {
        return languageCache.getAll();
    }

    @Override
    public List<Language> select(IRequest request, Language example, int page, int pagesize) {
        PageHelper.startPage(page, pagesize);
        return languageMapper.select(example);
    }

    @Override
    public List<Language> batchUpdate(IRequest request, List<Language> languageList) {
        for (Language language : languageList) {
            if (DTOStatus.ADD.equals(language.get__status())) {
                self().insertSelective(request, language);
            } else if (DTOStatus.UPDATE.equals(language.get__status())) {
                self().updateByPrimaryKeySelective(request, language);
            } else if (DTOStatus.DELETE.equals(language.get__status())) {
                self().deleteByPrimaryKey(language);
            }
        }
        return languageList;
    }

    @Override
    public void batchDelete(List<Language> languageList) {
        languageList.forEach(self()::deleteByPrimaryKey);
    }

}
