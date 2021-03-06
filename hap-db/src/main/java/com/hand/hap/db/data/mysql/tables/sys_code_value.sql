DROP TABLE IF EXISTS SYS_CODE_VALUE_B;
CREATE TABLE `SYS_CODE_VALUE_B` (
  `CODE_VALUE_ID`         BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键，供其他表做外键',
  `CODE_ID`               BIGINT,
  `VALUE`                 VARCHAR(150) COMMENT '快码值',
  `MEANING`               VARCHAR(150) COMMENT '快码意思',
  `DESCRIPTION`           VARCHAR(240) COMMENT '快码描述',
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
  PRIMARY KEY (`CODE_VALUE_ID`),
  UNIQUE KEY `SYS_CODE_VALUE_B_U1`(`CODE_ID`, `VALUE`)
)
  COMMENT = '快码值表';
ALTER TABLE `SYS_CODE_VALUE_B`
  CHANGE `VALUE` `VALUE` VARCHAR(150) BINARY;
ALTER TABLE `SYS_CODE_VALUE_B`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_CODE_VALUE_B`
  CHANGE `MEANING` `MEANING` VARCHAR(150) BINARY;
DROP TABLE IF EXISTS SYS_CODE_VALUE_TL;
CREATE TABLE `SYS_CODE_VALUE_TL` (
  `CODE_VALUE_ID`         BIGINT COMMENT '表ID，主键，供其他表做外键',
  `LANG`                  VARCHAR(10) COMMENT '语言',
  `MEANING`               VARCHAR(150) COMMENT '快码意思',
  `DESCRIPTION`           VARCHAR(240) COMMENT '快码描述',
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
  PRIMARY KEY (`CODE_VALUE_ID`, `LANG`)
)
  COMMENT = '快码值表(多语言)';
ALTER TABLE `SYS_CODE_VALUE_TL`
  CHANGE `LANG` `LANG` VARCHAR(10) BINARY;
ALTER TABLE `SYS_CODE_VALUE_TL`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_CODE_VALUE_TL`
  CHANGE `MEANING` `MEANING` VARCHAR(150) BINARY;
