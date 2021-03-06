CREATE TABLE SYS_FUNCTION_RESOURCE
(
  FUNC_SRC_ID           NUMBER               NOT NULL,
  FUNCTION_ID           NUMBER               NOT NULL,
  RESOURCE_ID           NUMBER               NOT NULL,
  OBJECT_VERSION_NUMBER NUMBER DEFAULT 1     NOT NULL,
  REQUEST_ID            NUMBER DEFAULT -1,
  PROGRAM_ID            NUMBER DEFAULT -1,
  CREATION_DATE         DATE DEFAULT sysdate NOT NULL,
  CREATED_BY            NUMBER DEFAULT -1    NOT NULL,
  LAST_UPDATED_BY       NUMBER DEFAULT -1    NOT NULL,
  LAST_UPDATE_DATE      DATE DEFAULT sysdate NOT NULL,
  LAST_UPDATE_LOGIN     NUMBER,
  ATTRIBUTE_CATEGORY    VARCHAR2(30),
  ATTRIBUTE1            VARCHAR2(240),
  ATTRIBUTE2            VARCHAR2(240),
  ATTRIBUTE3            VARCHAR2(240),
  ATTRIBUTE4            VARCHAR2(240),
  ATTRIBUTE5            VARCHAR2(240),
  ATTRIBUTE6            VARCHAR2(240),
  ATTRIBUTE7            VARCHAR2(240),
  ATTRIBUTE8            VARCHAR2(240),
  ATTRIBUTE9            VARCHAR2(240),
  ATTRIBUTE10           VARCHAR2(240),
  ATTRIBUTE11           VARCHAR2(240),
  ATTRIBUTE12           VARCHAR2(240),
  ATTRIBUTE13           VARCHAR2(240),
  ATTRIBUTE14           VARCHAR2(240),
  ATTRIBUTE15           VARCHAR2(240)
);
COMMENT ON TABLE SYS_FUNCTION_RESOURCE IS '功能资源关联表';
COMMENT ON COLUMN SYS_FUNCTION_RESOURCE.FUNC_SRC_ID IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_FUNCTION_RESOURCE.FUNCTION_ID IS '外键，功能 ID';
COMMENT ON COLUMN SYS_FUNCTION_RESOURCE.REQUEST_ID IS '外键，资源 ID';

ALTER TABLE SYS_FUNCTION_RESOURCE
  ADD CONSTRAINT SYS_FUNCTION_RESOURCE_PK PRIMARY KEY (FUNC_SRC_ID);
CREATE UNIQUE INDEX SYS_FUNCTION_RESOURCE_U1 ON SYS_FUNCTION_RESOURCE (FUNCTION_ID, RESOURCE_ID);

CREATE SEQUENCE SYS_FUNCTION_RESOURCE_S START WITH 10001;
