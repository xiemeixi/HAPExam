-- Create table
create table sys_preferences
(
  preferences_id        NUMBER(20),
  preferences           NVARCHAR2(30),
  preferences_level     NUMBER,
  preferences_value     NVARCHAR2(80),
  user_id               NUMBER(20),
  object_version_number NUMBER,
  request_id            NUMBER(20),
  program_id            NUMBER(20),
  creation_date         DATE,
  created_by            NUMBER,
  last_updated_by       NUMBER,
  last_update_date      DATE,
  last_update_login     NUMBER,
  attribute_category    VARCHAR2(30 CHAR),
  attribute1            VARCHAR2(240 CHAR),
  attribute2            VARCHAR2(240 CHAR),
  attribute3            VARCHAR2(240 CHAR),
  attribute4            VARCHAR2(240 CHAR),
  attribute5            VARCHAR2(240 CHAR),
  attribute6            VARCHAR2(240 CHAR),
  attribute7            VARCHAR2(240 CHAR),
  attribute8            VARCHAR2(240 CHAR),
  attribute9            VARCHAR2(240 CHAR),
  attribute10           VARCHAR2(240 CHAR),
  attribute11           VARCHAR2(240 CHAR),
  attribute12           VARCHAR2(240 CHAR),
  attribute13           VARCHAR2(240 CHAR),
  attribute14           VARCHAR2(240 CHAR),
  attribute15           VARCHAR2(240 CHAR)
);


ALTER TABLE sys_preferences add CONSTRAINT
  sys_preferences_pk PRIMARY KEY (preferences_id);

-- Add comments to the columns
comment on column sys_preferences.preferences_id
is '表ID，主键，供其他表做外键';
comment on column sys_preferences.preferences_level
is '逻辑分类：10 DSIS首选项, 20 MWS首选项';
comment on column sys_preferences.user_id
is '账号ID';

create SEQUENCE sys_preferences_s START WITH 10001;



