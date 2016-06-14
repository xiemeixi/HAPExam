DROP TABLE IF EXISTS SYS_MESSAGE_TEMPLATE;
CREATE TABLE `SYS_MESSAGE_TEMPLATE` (
  `TEMPLATE_ID`           BIGINT         AUTO_INCREMENT
  COMMENT '主键',
  `SUBJECT`               LONGTEXT COMMENT '模板标题',
  `CONTENT`               LONGTEXT COMMENT '模板内容',
  `ACCOUNT_ID`            BIGINT COMMENT '账号id',
  `TEMPLATE_CODE`         VARCHAR(50) COMMENT '模板编号',
  `TEMPLATE_TYPE`         VARCHAR(50) COMMENT '模板类型,邮件/SMS',
  `PRIORITY_LEVEL`        VARCHAR(50) COMMENT '优先级',
  `DESCRIPTION`           VARCHAR(240) COMMENT '描述',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0) DEFAULT 1
  COMMENT 'Record的版本号，每发生update则自增',
  `REQUEST_ID`            BIGINT         DEFAULT -1
  COMMENT '对Record最后一次操作的系统内部请求id',
  `PROGRAM_ID`            BIGINT         DEFAULT -1
  COMMENT '对Record最后一次操作的系统内部程序id',
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
  PRIMARY KEY (`TEMPLATE_ID`),
  UNIQUE KEY `SYS_MESSAGE_TEMPLATE_U1`(`TEMPLATE_CODE`)
)
  COMMENT = '消息模板表';
ALTER TABLE `SYS_MESSAGE_TEMPLATE`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_MESSAGE_TEMPLATE`
  CHANGE `TEMPLATE_TYPE` `TEMPLATE_TYPE` VARCHAR(50) BINARY;
ALTER TABLE `SYS_MESSAGE_TEMPLATE`
  CHANGE `TEMPLATE_CODE` `TEMPLATE_CODE` VARCHAR(50) BINARY;
ALTER TABLE `SYS_MESSAGE_TEMPLATE`
  CHANGE `PRIORITY_LEVEL` `PRIORITY_LEVEL` VARCHAR(50) BINARY;


