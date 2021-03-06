DROP TABLE IF EXISTS SYS_LOV;
CREATE TABLE `SYS_LOV` (
  `LOV_ID`                BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键',
  `CODE`                  VARCHAR(80) COMMENT 'LOV的code',
  `DESCRIPTION`           VARCHAR(240) COMMENT '描述',
  `SQL_ID`                VARCHAR(255) COMMENT 'SQL ID',
  `VALUE_FIELD`           VARCHAR(80) COMMENT 'VALUE_FIELD',
  `TEXT_FIELD`            VARCHAR(80) COMMENT 'TEXT_FIELD',
  `TITLE`                 VARCHAR(255) COMMENT '标题',
  `WIDTH`                 DECIMAL(20, 0) COMMENT '宽度',
  `HEIGHT`                DECIMAL(20, 0) COMMENT '高度',
  `PLACEHOLDER`           VARCHAR(80) COMMENT '提示',
  `DELAY_LOAD`            VARCHAR(1)     DEFAULT 'N'
  COMMENT '是否延迟加载',
  `NEED_QUERY_PARAM`      VARCHAR(1)     DEFAULT 'N'
  COMMENT '是否需要查询条件',
  `EDITABLE`              VARCHAR(1)     DEFAULT 'N'
  COMMENT '是否可编辑',
  `CAN_POPUP`             VARCHAR(1)     DEFAULT 'Y'
  COMMENT '是否可弹出',
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
  PRIMARY KEY (`LOV_ID`),
  UNIQUE KEY `SYS_LOV_U1`(`CODE`)
)
  COMMENT = '通用lov配置';
ALTER TABLE `SYS_LOV`
  CHANGE `DELAY_LOAD` `DELAY_LOAD` VARCHAR(1) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `EDITABLE` `EDITABLE` VARCHAR(1) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `VALUE_FIELD` `VALUE_FIELD` VARCHAR(80) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `CAN_POPUP` `CAN_POPUP` VARCHAR(1) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `TEXT_FIELD` `TEXT_FIELD` VARCHAR(80) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `PLACEHOLDER` `PLACEHOLDER` VARCHAR(80) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `CODE` `CODE` VARCHAR(80) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `SQL_ID` `SQL_ID` VARCHAR(255) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `NEED_QUERY_PARAM` `NEED_QUERY_PARAM` VARCHAR(1) BINARY;
ALTER TABLE `SYS_LOV`
  CHANGE `TITLE` `TITLE` VARCHAR(255) BINARY;
