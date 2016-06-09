/*
 * #{copyright}#
 */
package com.hand.hap.system.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import com.hand.hap.system.dto.BaseDTO;
import tk.mybatis.mapper.annotation.Condition;

/**
 * 多语言描述表.
 * 
 * @author wuyichu
 */
@Table(name = "sys_prompts")
public class Prompt extends BaseDTO {

    private static final long serialVersionUID = 2856108923186548186L;

    /**
     * 表ID，主键，供其他表做外键.
     */
    @Id
    @Column
    @GeneratedValue(generator = GENERATOR_TYPE)
    private Long promptId;

    /**
     * 文本编码.
     */

    @NotEmpty
    @Column
    @Condition(operator = LIKE)
    private String promptCode;

    /**
     * 语言.
     */
    @Column
    private String lang;

    /**
     * 描述.
     */
    @Column
    @Condition(operator = LIKE)
    private String description;

    public Long getPromptId() {
        return promptId;
    }

    public void setPromptId(Long promptId) {
        this.promptId = promptId;
    }

    public String getPromptCode() {
        return promptCode;
    }

    public void setPromptCode(String promptCode) {
        this.promptCode = promptCode == null ? null : promptCode.trim();
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang == null ? null : lang.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

}