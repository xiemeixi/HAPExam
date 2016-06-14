DROP TABLE IF EXISTS SYS_LANG_B;
CREATE TABLE `SYS_LANG_B` (
  `LANG_CODE`             VARCHAR(10) COMMENT '表ID，主键，供其他表做外键',
  `BASE_LANG`             VARCHAR(10) COMMENT '基语言',
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
  PRIMARY KEY (`LANG_CODE`)
)
  COMMENT = '语言表';
ALTER TABLE `SYS_LANG_B`
  CHANGE `BASE_LANG` `BASE_LANG` VARCHAR(10) BINARY;
ALTER TABLE `SYS_LANG_B`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_LANG_B`
  CHANGE `LANG_CODE` `LANG_CODE` VARCHAR(10) BINARY;
