/*
 * #{copyright}#
 */
package com.hand.hap.system.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.hand.hap.cache.impl.LovCache;
import com.hand.hap.core.BaseConstants;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.BaseDTO;
import com.hand.hap.system.dto.Lov;
import com.hand.hap.system.dto.LovItem;
import com.hand.hap.system.mapper.LovItemMapper;
import com.hand.hap.system.mapper.LovMapper;
import com.hand.hap.system.service.ILovService;

/**
 * @author njq.niu@hand-china.com
 *
 *         2016年1月31日
 */
@Service
@Transactional
public class LovServiceImpl extends BaseServiceImpl<Lov> implements ILovService {

    private final Logger logger = LoggerFactory.getLogger(LovServiceImpl.class);

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private BeanFactory beanFactory;

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private LovMapper lovMapper;

    @Autowired
    private LovItemMapper lovItemMapper;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private LovCache lovCache;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Lov> selectLovs(IRequest request, Lov lov, int page, int pagesize) {
        PageHelper.startPage(page, pagesize);
        List<Lov> lovs = lovMapper.select(lov);
        return lovs;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Lov loadLov(Long lovId) {
        return lovMapper.selectByPrimaryKey(lovId);
    }

    @Override
    public List<Lov> batchUpdate(IRequest request, List<Lov> lovs) {
        for (Lov lov : lovs) {
            if (lov.getLovId() == null) {
                self().createLov(lov);
            } else if (lov.getLovId() != null) {
                self().updateLov(lov);
            }
        }
        return lovs;
    }

    @Override
    public boolean batchDeleteLov(List<Lov> items) {
        for (Lov lov : items) {
            lovMapper.deleteByPrimaryKey(lov.getLovId());
            lovItemMapper.deleteByLovId(lov.getLovId());
            lovCache.remove(lov.getCode());
        }
        return true;
    }

    @Override
    public boolean batchDeleteItems(List<LovItem> items) {
        for (LovItem item : items) {
            self().deleteLovItem(item);
        }
        return true;
    }

    @Override
    public boolean deleteLovItem(LovItem item) {
        if (lovItemMapper.deleteByPrimaryKey(item) == 1) {
            lovCache.reload(item.getLovId());
            return true;
        }
        return false;
    }

    @Override
    public Lov createLov(Lov lov) {
        lovMapper.insertSelective(lov);
        if (lov.getLovItems() != null) {
            for (LovItem lovItem : lov.getLovItems()) {
                lovItem.setLovId(lov.getLovId());
                lovItemMapper.insertSelective(lovItem);
            }
        }
        lovCache.reload(lov.getLovId());
        return lov;
    }

    @Override
    public Lov updateLov(Lov lov) {
        lovMapper.updateByPrimaryKeySelective(lov);
        if (lov.getLovItems() != null) {
            for (LovItem lovItem : lov.getLovItems()) {
                if (lovItem.getLovItemId() == null) {
                    lovItem.setLovId(lov.getLovId());
                    lovItemMapper.insertSelective(lovItem);
                } else {
                    lovItemMapper.updateByPrimaryKeySelective(lovItem);
                }
            }
        }
        lovCache.reload(lov.getLovId());
        return lov;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<LovItem> selectLovItems(IRequest request, LovItem lovItem) {
        return lovItemMapper.selectByLovId(lovItem.getLovId());
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public String getLov(String contextPath, Locale locale, String lovCode) {
        LovEditor editor = getLovEditor(contextPath, locale, lovCode);
        try {
            return objectMapper.writeValueAsString(editor);
        } catch (JsonProcessingException e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
        }
        return "''";
    }

    private LovEditor getLovEditor(String contextPath, Locale locale, String lovCode) {
        Lov lov = lovCache.getValue(lovCode);
        if (lov == null) {
            lov = lovMapper.selectByCode(lovCode);
            if (lov != null) {
                List<LovItem> items = lovItemMapper.selectByLovId(lov.getLovId());
                lov.setLovItems(items);
                lovCache.setValue(lov.getCode(), lov);
            }
        }

        return lov != null ? createLovEditor(contextPath, locale, lov, lov.getLovItems()) : null;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<? extends BaseDTO> selectDatas(IRequest request, String code, Object obj, int page, int pagesize) {
        Lov lov = lovMapper.selectByCode(code);
        String beanName = StringUtils.uncapitalize(StringUtils.substringBefore(lov.getSqlId(), "."));
        Object mapperObjectDelegate = beanFactory.getBean(beanName);
        if (mapperObjectDelegate == null) {
            return Collections.emptyList();
        }
        Class<?>[] interfaceClass = mapperObjectDelegate.getClass().getInterfaces();
        String sqlId = lov.getSqlId();
        for (Class c : interfaceClass) {
            if (c.getSimpleName().equalsIgnoreCase(beanName)) {
                sqlId = c.getPackage().getName() + "." + StringUtils.capitalize(lov.getSqlId());
                break;
            }
        }
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            PageHelper.startPage(page, pagesize);
            return sqlSession.selectList(sqlId, obj);
        } catch (Throwable e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
        }
        return Collections.emptyList();
    }

    private LovEditor createLovEditor(String contextPath, Locale locale, Lov lov, List<LovItem> items) {
        LovEditor editor = new LovEditor(lov, locale);
        editor.setGrid(new LovGrid(contextPath, locale, lov, items));
        editor.setCondition(new LovCondition(contextPath, locale, lov, items));
        return editor;
    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年1月31日
     */
    private class LovEditor {

        LovEditor(Lov lov, Locale locale) {
            if (lov != null) {
                String title = messageSource.getMessage(lov.getTitle(), null, lov.getTitle(), locale);
                setTitle(title);
                setTextField(lov.getTextField());
                setValueField(lov.getValueField());
                setPlaceholder(messageSource.getMessage(lov.getPlaceholder(), null, lov.getTitle(), locale));
                if (BaseConstants.YES.equals(lov.getEditable())) {
                    setReadonly(false);
                }
                setPopup(BaseConstants.YES.equals(lov.getCanPopup()));
            }
            for (LovItem item : lov.getLovItems()) {
                if (BaseConstants.YES.equals(item.getIsAutoComplete())) {
                    setAutocomplete(true);
                    setAutocompleteField(item.getGridFieldName());
                    break;
                }
            }
        }

        private String type = "popup";

        private String valueField;

        private String textField;

        @JsonInclude(Include.NON_NULL)
        private String title;

        @JsonInclude(Include.NON_NULL)
        private String placeholder;

        private LovGrid grid;

        @JsonInclude(Include.NON_NULL)
        private boolean autocomplete;

        @JsonInclude(Include.NON_NULL)
        private Boolean readonly = null;

        @JsonInclude(Include.NON_NULL)
        private boolean popup;

        @JsonInclude(Include.NON_NULL)
        private String autocompleteField;

        private LovCondition condition;

        public boolean getPopup() {
            return popup;
        }

        public void setPopup(boolean popup) {
            this.popup = popup;
        }

        public Boolean getReadonly() {
            return readonly;
        }

        public void setReadonly(Boolean readonly) {
            this.readonly = readonly;
        }

        /**
         * @return the autocompleteField
         */
        public String getAutocompleteField() {
            return autocompleteField;
        }

        /**
         * @param autocompleteField
         *            the autocompleteField to set
         */
        public void setAutocompleteField(String autocompleteField) {
            this.autocompleteField = autocompleteField;
        }

        /**
         * @return the autocomplete
         */
        public boolean getAutocomplete() {
            return autocomplete;
        }

        /**
         * @param autocomplete
         *            the autocomplete to set
         */
        public void setAutocomplete(boolean autocomplete) {
            this.autocomplete = autocomplete;
        }

        public LovCondition getCondition() {
            return condition;
        }

        public void setCondition(LovCondition condition) {
            this.condition = condition;
        }

        public LovGrid getGrid() {
            return grid;
        }

        public void setGrid(LovGrid grid) {
            this.grid = grid;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getValueField() {
            return valueField;
        }

        public void setValueField(String valueField) {
            this.valueField = valueField;
        }

        public String getTextField() {
            return textField;
        }

        public void setTextField(String textField) {
            this.textField = textField;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getPlaceholder() {
            return placeholder;
        }

        public void setPlaceholder(String placeholder) {
            this.placeholder = placeholder;
        }
    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年2月1日
     */
    class LovGrid {

        LovGrid(String contextPath, Locale locale, Lov lov, List<LovItem> items) {
            setUrl(contextPath + "/common/lov/" + lov.getCode());
            setWidth(lov.getWidth());
            setHeight(lov.getHeight());
            setDelayLoad(BaseConstants.YES.equalsIgnoreCase(lov.getDelayLoad()));
            setNeedQueryParam(BaseConstants.YES.equalsIgnoreCase(lov.getNeedQueryParam()));

            for (LovItem item : items) {
                if (BaseConstants.YES.equalsIgnoreCase(item.getGridField())) {
                    addColumn(new LovGridColumn(contextPath, locale, item));
                }
            }
            columns.sort((a, b) -> {
                return a.getSequence() - b.getSequence();
            });

        }

        @JsonInclude(Include.NON_NULL)
        private Integer width;

        @JsonInclude(Include.NON_NULL)
        private Integer height;

        private boolean delayLoad = false;

        private boolean needQueryParam = false;

        private String url;

        private boolean isSingleCheck = true;

        private List<LovGridColumn> columns = new ArrayList<>();

        public Boolean getNeedQueryParam() {
            return needQueryParam;
        }

        public void setNeedQueryParam(boolean needQueryParam) {
            this.needQueryParam = needQueryParam;
        }

        public Boolean getDelayLoad() {
            return delayLoad;
        }

        public void setDelayLoad(boolean delayLoad) {
            this.delayLoad = delayLoad;
        }

        public boolean getIsSingleCheck() {
            return isSingleCheck;
        }

        public void setIsSingleCheck(boolean isSingleCheck) {
            this.isSingleCheck = isSingleCheck;
        }

        public Integer getWidth() {
            return width;
        }

        public void setWidth(Integer width) {
            this.width = width;
        }

        public Integer getHeight() {
            return height;
        }

        public void setHeight(Integer height) {
            this.height = height;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public void addColumn(LovGridColumn column) {
            columns.add(column);
        }

        public List<LovGridColumn> getColumns() {
            return columns;
        }

        public void setColumns(List<LovGridColumn> columns) {
            this.columns = columns;
        }

    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年2月1日
     */
    class LovGridColumn {

        LovGridColumn(String contextPath, Locale locale, LovItem item) {
            String display = messageSource.getMessage(item.getDisplay(), null, item.getDisplay(), locale);
            setDisplay(display);
            setName(item.getGridFieldName());
            setSequence(item.getGridFieldSequence());
            setAlign(item.getGridFieldAlign());
            setWidth(item.getGridFieldWidth());
            setAutocompleteField(BaseConstants.YES.equals(item.getAutocompleteField()));

        }

        @JsonIgnore
        private Integer sequence = 1;

        private String display;

        private String name;

        @JsonInclude(Include.NON_NULL)
        private String align;

        private boolean isSort = false;

        private boolean autocompleteField = false;

        public String getAlign() {
            return align;
        }

        public void setAlign(String align) {
            this.align = align;
        }

        public Integer getSequence() {
            return sequence;
        }

        public void setSequence(Integer sequence) {
            this.sequence = sequence;
        }

        public boolean getAutocompleteField() {
            return autocompleteField;
        }

        public void setAutocompleteField(boolean autocompleteField) {
            this.autocompleteField = autocompleteField;
        }

        public boolean getIsSort() {
            return isSort;
        }

        public void setIsSort(boolean isSort) {
            this.isSort = isSort;
        }

        @JsonInclude(Include.NON_NULL)
        private Integer width;

        public String getDisplay() {
            return display;
        }

        public void setDisplay(String display) {
            this.display = display;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getWidth() {
            return width;
        }

        public void setWidth(Integer width) {
            this.width = width;
        }
    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年2月1日
     */
    class LovCondition {

        LovCondition(String contextPath, Locale locale, Lov lov, List<LovItem> items) {
            for (LovItem item : items) {
                if (BaseConstants.YES.equalsIgnoreCase(item.getConditionField())) {
                    addField(new LovConditionField(contextPath, locale, item));
                }
            }
            fields.sort((a, b) -> {
                return a.getSequence() - b.getSequence();
            });
        }

        private List<LovConditionField> fields = new ArrayList<>();

        public List<LovConditionField> getFields() {
            return fields;
        }

        public void setFields(List<LovConditionField> fields) {
            this.fields = fields;
        }

        public void addField(LovConditionField f) {
            fields.add(f);
        }

    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年2月1日
     */
    class LovConditionField extends LovGridColumn {

        /**
         * @param item
         */
        LovConditionField(String contextPath, Locale locale, LovItem item) {
            super(contextPath, locale, item);
            setName(item.getConditionFieldName() == null ? item.getGridFieldName() : item.getConditionFieldName());
            if (item.getConditionFieldTextfield() != null) {
                setTextField(item.getConditionFieldTextfield());
            }

            setType(item.getConditionFieldType());
            setWidth(item.getConditionFieldWidth());
            setNewline(BaseConstants.YES.equalsIgnoreCase(item.getConditionFieldNewline()));
            setSequence(item.getConditionFieldSequence());
            // select
            if (item.getConditionFieldSelectCode() != null || item.getConditionFieldSelectUrl() != null) {
                setOptions(new LovConditionFieldSelectOption(contextPath, item));
            } else if (item.getConditionFieldLovCode() != null) {
                LovEditor editor = getLovEditor(contextPath, locale, item.getConditionFieldLovCode());
                setOptions(editor);
            }

        }

        private String type;
        private boolean newline;

        @JsonInclude(Include.NON_NULL)
        private String textField;

        @JsonInclude(Include.NON_NULL)
        private Integer width;

        @JsonInclude(Include.NON_NULL)
        private Object options;

        public String getTextField() {
            return textField;
        }

        public void setTextField(String textField) {
            this.textField = textField;
        }

        public Integer getWidth() {
            return width;
        }

        /**
         * @param width
         *            the width to set
         */
        public void setWidth(Integer width) {
            this.width = width;
        }

        /**
         * @return the options
         */
        public Object getOptions() {
            return options;
        }

        /**
         * @param options
         *            the options to set
         */
        public void setOptions(Object options) {
            this.options = options;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public boolean isNewline() {
            return newline;
        }

        public void setNewline(boolean newline) {
            this.newline = newline;
        }
    }

    /**
     * 
     * @author njq.niu@hand-china.com
     *
     *         2016年3月14日
     */
    class LovConditionFieldSelectOption {

        LovConditionFieldSelectOption(String contextPath, LovItem item) {
            if (item.getConditionFieldSelectCode() != null) {
                setUrl(contextPath + "/common/code/" + item.getConditionFieldSelectCode() + "/");
                setValueField("value");
                setTextField("meaning");
            } else if (item.getConditionFieldSelectUrl() != null) {
                setUrl(contextPath + item.getConditionFieldSelectUrl());
                setValueField(item.getConditionFieldSelectVf());
                setTextField(item.getConditionFieldSelectTf());
            }
        }

        private String valueField;

        private String textField;

        private String url;

        public String getValueField() {
            return valueField;
        }

        public void setValueField(String valueField) {
            this.valueField = valueField;
        }

        public String getTextField() {
            return textField;
        }

        public void setTextField(String textField) {
            this.textField = textField;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

    }

}