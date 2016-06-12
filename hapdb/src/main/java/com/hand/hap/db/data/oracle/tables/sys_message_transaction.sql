-- Create table
create table sys_message_transaction
(
  transaction_id        NUMBER(20),
  message_id            NUMBER(20),
  transaction_status    NVARCHAR2(25),
  transaction_message   CLOB,
  message_address       NVARCHAR2(255),
  object_version_number NUMBER(20),
  request_id            NUMBER(20),
  program_id            NUMBER(20),
  created_by            NUMBER(20),
  creation_date         DATE,
  last_updated_by       NUMBER(20),
  last_update_date      DATE,
  attribute1            VARCHAR2(255 CHAR),
  attribute2            VARCHAR2(255 CHAR),
  attribute3            VARCHAR2(255 CHAR),
  attribute4            VARCHAR2(255 CHAR),
  attribute5            VARCHAR2(255 CHAR),
  attribute6            VARCHAR2(255 CHAR),
  attribute7            VARCHAR2(255 CHAR),
  attribute8            VARCHAR2(255 CHAR),
  attribute9            VARCHAR2(255 CHAR),
  attribute10           VARCHAR2(255 CHAR),
  attribute11           VARCHAR2(255 CHAR),
  attribute12           VARCHAR2(255 CHAR),
  attribute13           VARCHAR2(255 CHAR),
  attribute14           VARCHAR2(255 CHAR),
  attribute15           VARCHAR2(255 CHAR)
);

ALTER  TABLE sys_message_transaction ADD CONSTRAINT
  sys_message_transaction_pk PRIMARY KEY (transaction_id);

-- Add comments to the columns
comment on column sys_message_transaction.transaction_id
is '主键';
comment on column sys_message_transaction.message_id
is '消息id';
comment on column sys_message_transaction.transaction_message
is '返回信息';

create SEQUENCE  sys_message_transaction_s START WITH 10001;


