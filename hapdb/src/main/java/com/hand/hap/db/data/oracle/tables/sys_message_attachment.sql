-- Create table
create table sys_message_attachment
(
  attachment_id         NUMBER(20),
  message_id            NUMBER(20),
  file_id               NUMBER(20),
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

ALTER TABLE sys_message_attachment ADD CONSTRAINT
sys_message_attachment_PK PRIMARY KEY (attachment_id);

-- Add comments to the columns
comment on column sys_message_attachment.attachment_id
is '主键';
comment on column sys_message_attachment.message_id
is '消息id';
comment on column sys_message_attachment.file_id
is '附件id';

CREATE SEQUENCE sys_message_attachment_s START WITH 10001;

