/*
 * #{copyright}#
 */
package com.hand.hap.core.i18n;

import java.text.MessageFormat;
import java.util.Locale;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.AbstractMessageSource;

import com.hand.hap.cache.impl.HashStringRedisCache;

/**
 * CacheMessageSource.
 * 
 * @author shengyang.zhou@hand-china.com
 */
public class CacheMessageSource extends AbstractMessageSource {

    @Autowired
    @Qualifier("promptCache")
    private HashStringRedisCache<String> promptCache;

    public CacheMessageSource() {
        reload();
    }

    public void reload() {
    }

    @Override
    protected MessageFormat resolveCode(String code, Locale locale) {
        code = StringUtils.lowerCase(code);
        String pmt = promptCache.getValue(code + "." + locale);
        return createMessageFormat(pmt == null ? StringUtils.substringAfterLast(code, ".") : pmt, locale);
    }

    @Override
    protected String resolveCodeWithoutArguments(String code, Locale locale) {
        code = StringUtils.lowerCase(code);
        String pmt = promptCache.getValue(code + "." + locale);
        return pmt == null ? StringUtils.substringAfterLast(code, ".") : pmt;
    }
}
