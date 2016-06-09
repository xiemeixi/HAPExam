DROP TABLE IF EXISTS SYS_PROMPTS;
CREATE TABLE `SYS_PROMPTS`(
    `PROMPT_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `PROMPT_CODE` varchar(255) COMMENT '文本编码',
    `LANG` varchar(10) COMMENT '语言',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1,
    `REQUEST_ID` bigint DEFAULT -1,
    `PROGRAM_ID` bigint DEFAULT -1,
    `CREATION_DATE` datetime DEFAULT now() ,
    `CREATED_BY` decimal(20,0) DEFAULT -1    ,
    `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1    ,
    `LAST_UPDATE_DATE` datetime DEFAULT now() ,
    `LAST_UPDATE_LOGIN` decimal(20,0),
    `ATTRIBUTE_CATEGORY` varchar(30),
    `ATTRIBUTE1` varchar(240),
    `ATTRIBUTE2` varchar(240),
    `ATTRIBUTE3` varchar(240),
    `ATTRIBUTE4` varchar(240),
    `ATTRIBUTE5` varchar(240),
    `ATTRIBUTE6` varchar(240),
    `ATTRIBUTE7` varchar(240),
    `ATTRIBUTE8` varchar(240),
    `ATTRIBUTE9` varchar(240),
    `ATTRIBUTE10` varchar(240),
    `ATTRIBUTE11` varchar(240),
    `ATTRIBUTE12` varchar(240),
    `ATTRIBUTE13` varchar(240),
    `ATTRIBUTE14` varchar(240),
    `ATTRIBUTE15` varchar(240),
    PRIMARY KEY(`PROMPT_ID`),
    UNIQUE KEY `SYS_PROMPTS_U1`(`PROMPT_CODE`,`LANG`)
) COMMENT = '界面显示文本表';
alter table `SYS_PROMPTS` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_PROMPTS` change `PROMPT_CODE` `PROMPT_CODE` varchar(255) binary;
alter table `SYS_PROMPTS` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
