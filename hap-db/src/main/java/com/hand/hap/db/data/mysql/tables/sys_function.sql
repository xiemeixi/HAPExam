DROP TABLE IF EXISTS SYS_FUNCTION_B;
CREATE TABLE `SYS_FUNCTION_B` (
  `FUNCTION_ID`           BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键，供其他表做外键',
  `MODULE_CODE`           VARCHAR(30) COMMENT '模块编码',
  `FUNCTION_ICON`         VARCHAR(100) COMMENT '功能图标',
  `FUNCTION_CODE`         VARCHAR(30) COMMENT '功能编码',
  `FUNCTION_NAME`         VARCHAR(150) COMMENT '功能名称',
  `FUNCTION_DESCRIPTION`  VARCHAR(240) COMMENT '描述',
  `RESOURCE_ID`           BIGINT COMMENT '功能入口',
  `TYPE`                  VARCHAR(30) COMMENT '功能类型',
  `PARENT_FUNCTION_ID`    BIGINT COMMENT '父功能',
  `ENABLED_FLAG`          VARCHAR(1)     DEFAULT 'Y'
  COMMENT '是否启用',
  `FUNCTION_SEQUENCE`     DECIMAL(20, 0) DEFAULT 1
  COMMENT '排序号',
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
  PRIMARY KEY (`FUNCTION_ID`),
  UNIQUE KEY `SYS_FUNCTION_B_U1`(`FUNCTION_CODE`),
  KEY `SYS_FUNCTION_B_N1`(`PARENT_FUNCTION_ID`)
)
  COMMENT = '功能表';
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `FUNCTION_DESCRIPTION` `FUNCTION_DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `FUNCTION_CODE` `FUNCTION_CODE` VARCHAR(30) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `TYPE` `TYPE` VARCHAR(30) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `FUNCTION_ICON` `FUNCTION_ICON` VARCHAR(100) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `ENABLED_FLAG` `ENABLED_FLAG` VARCHAR(1) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `FUNCTION_NAME` `FUNCTION_NAME` VARCHAR(150) BINARY;
ALTER TABLE `SYS_FUNCTION_B`
  CHANGE `MODULE_CODE` `MODULE_CODE` VARCHAR(30) BINARY;
DROP TABLE IF EXISTS SYS_FUNCTION_TL;
CREATE TABLE `SYS_FUNCTION_TL` (
  `FUNCTION_ID`           BIGINT COMMENT '功能ID',
  `LANG`                  VARCHAR(10) COMMENT '语言',
  `FUNCTION_NAME`         VARCHAR(150) COMMENT '功能名',
  `FUNCTION_DESCRIPTION`  VARCHAR(240) COMMENT '功能描述',
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
  PRIMARY KEY (`FUNCTION_ID`, `LANG`)
)
  COMMENT = '功能表（多语言）';
ALTER TABLE `SYS_FUNCTION_TL`
  CHANGE `LANG` `LANG` VARCHAR(10) BINARY;
ALTER TABLE `SYS_FUNCTION_TL`
  CHANGE `FUNCTION_DESCRIPTION` `FUNCTION_DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_FUNCTION_TL`
  CHANGE `FUNCTION_NAME` `FUNCTION_NAME` VARCHAR(150) BINARY;