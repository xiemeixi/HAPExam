DROP TABLE IF EXISTS SYS_PROMPTS;
CREATE TABLE `SYS_PROMPTS` (
  `PROMPT_ID`             BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键，供其他表做外键',
  `PROMPT_CODE`           VARCHAR(255) COMMENT '文本编码',
  `LANG`                  VARCHAR(10) COMMENT '语言',
  `DESCRIPTION`           VARCHAR(240) COMMENT '描述',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0) DEFAULT 1,
  `REQUEST_ID`            BIGINT         DEFAULT -1,
  `PROGRAM_ID`            BIGINT         DEFAULT -1,
  `CREATION_DATE`         DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`            DECIMAL(20, 0) DEFAULT -1,
  `LAST_UPDATED_BY`       DECIMAL(20, 0) DEFAULT -1,
  `LAST_UPDATE_DATE`      DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN`     DECIMAL(20, 0),
  `ATTRIBUTE_CATEGORY`    VARCHAR(30),
  `ATTRIBUTE1`            VARCHAR(240),
  `ATTRIBUTE2`            VARCHAR(240),
  `ATTRIBUTE3`            VARCHAR(240),
  `ATTRIBUTE4`            VARCHAR(240),
  `ATTRIBUTE5`            VARCHAR(240),
  `ATTRIBUTE6`            VARCHAR(240),
  `ATTRIBUTE7`            VARCHAR(240),
  `ATTRIBUTE8`            VARCHAR(240),
  `ATTRIBUTE9`            VARCHAR(240),
  `ATTRIBUTE10`           VARCHAR(240),
  `ATTRIBUTE11`           VARCHAR(240),
  `ATTRIBUTE12`           VARCHAR(240),
  `ATTRIBUTE13`           VARCHAR(240),
  `ATTRIBUTE14`           VARCHAR(240),
  `ATTRIBUTE15`           VARCHAR(240),
  PRIMARY KEY (`PROMPT_ID`),
  UNIQUE KEY `SYS_PROMPTS_U1`(`PROMPT_CODE`, `LANG`)
)
  COMMENT = '界面显示文本表';
ALTER TABLE `SYS_PROMPTS`
  CHANGE `LANG` `LANG` VARCHAR(10) BINARY;
ALTER TABLE `SYS_PROMPTS`
  CHANGE `PROMPT_CODE` `PROMPT_CODE` VARCHAR(255) BINARY;
ALTER TABLE `SYS_PROMPTS`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
