DROP TABLE IF EXISTS SYS_ROLE_B;
CREATE TABLE `SYS_ROLE_B` (
  `ROLE_ID`               BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键，供其他表做外键',
  `ROLE_CODE`             VARCHAR(40) COMMENT '角色编码',
  `ROLE_NAME`             VARCHAR(150) COMMENT '角色名称',
  `ROLE_DESCRIPTION`      VARCHAR(240) COMMENT '角色描述',
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
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `SYS_ROLE_B_U1`(`ROLE_CODE`)
)
  COMMENT = '角色表';
ALTER TABLE `SYS_ROLE_B`
  CHANGE `ROLE_CODE` `ROLE_CODE` VARCHAR(40) BINARY;
ALTER TABLE `SYS_ROLE_B`
  CHANGE `ROLE_DESCRIPTION` `ROLE_DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_ROLE_B`
  CHANGE `ROLE_NAME` `ROLE_NAME` VARCHAR(150) BINARY;
DROP TABLE IF EXISTS SYS_ROLE_TL;
CREATE TABLE `SYS_ROLE_TL` (
  `ROLE_ID`               BIGINT COMMENT '角色ID',
  `LANG`                  VARCHAR(10) COMMENT '语言',
  `ROLE_NAME`             VARCHAR(150) COMMENT '角色名称',
  `ROLE_DESCRIPTION`      VARCHAR(240) COMMENT '角色描述',
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
  PRIMARY KEY (`ROLE_ID`, `LANG`)
)
  COMMENT = '角色表(多语言)';
ALTER TABLE `SYS_ROLE_TL`
  CHANGE `LANG` `LANG` VARCHAR(10) BINARY;
ALTER TABLE `SYS_ROLE_TL`
  CHANGE `ROLE_DESCRIPTION` `ROLE_DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_ROLE_TL`
  CHANGE `ROLE_NAME` `ROLE_NAME` VARCHAR(150) BINARY;
