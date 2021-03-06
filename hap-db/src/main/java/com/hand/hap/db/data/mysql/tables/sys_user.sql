DROP TABLE IF EXISTS SYS_USER;
CREATE TABLE `SYS_USER` (
  `USER_ID`               BIGINT         AUTO_INCREMENT
  COMMENT '表ID，主键，供其他表做外键',
  `USER_TYPE`             VARCHAR(30) COMMENT '用户类型',
  `USER_NAME`             VARCHAR(40) COMMENT '用户名',
  `PASSWORD_ENCRYPTED`    VARCHAR(80) COMMENT '加密过的密码',
  `EMAIL`                 VARCHAR(150) COMMENT '邮箱地址',
  `PHONE`                 VARCHAR(40) COMMENT '电话号码',
  `START_ACTIVE_DATE`     DATETIME COMMENT '有效期从',
  `END_ACTIVE_DATE`       DATETIME COMMENT '有效期至',
  `STATUS`                VARCHAR(30) COMMENT '状态',
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
  PRIMARY KEY (`USER_ID`)
)
  COMMENT = '用户表';
ALTER TABLE `SYS_USER`
  CHANGE `PHONE` `PHONE` VARCHAR(40) BINARY;
ALTER TABLE `SYS_USER`
  CHANGE `EMAIL` `EMAIL` VARCHAR(150) BINARY;
ALTER TABLE `SYS_USER`
  CHANGE `STATUS` `STATUS` VARCHAR(30) BINARY;
ALTER TABLE `SYS_USER`
  CHANGE `PASSWORD_ENCRYPTED` `PASSWORD_ENCRYPTED` VARCHAR(80) BINARY;
ALTER TABLE `SYS_USER`
  CHANGE `USER_NAME` `USER_NAME` VARCHAR(40) BINARY;
ALTER TABLE `SYS_USER`
  CHANGE `USER_TYPE` `USER_TYPE` VARCHAR(30) BINARY;
