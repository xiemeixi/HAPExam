-- Create table
create table sys_message_email_white_lt
(
  id                    NUMBER(20),
  address               VARCHAR2(240 CHAR),
  config_id             NUMBER(20),
  description           VARCHAR2(240 CHAR),
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

ALTER  TABLE sys_message_email_white_lt add CONSTRAINT
  sys_message_email_white_lt_pk PRIMARY KEY (id);

-- Add comments to the columns
comment on column sys_message_email_white_lt.id
is '主键';
comment on column sys_message_email_white_lt.address
is '白名单地址';
comment on column sys_message_email_white_lt.config_id
is '邮箱配置id';
comment on column sys_message_email_white_lt.description
is '描述';

create SEQUENCE  sys_message_email_white_lt_s START WITH 10001;

