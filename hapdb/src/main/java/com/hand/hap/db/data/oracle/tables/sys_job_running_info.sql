-- Create table
CREATE TABLE SYS_JOB_RUNNING_INFO
(
  job_running_info_id   NUMBER(20)            NOT NULL,
  job_name              VARCHAR2(255),
  job_group             VARCHAR2(255),
  job_result            VARCHAR2(255),
  job_status            VARCHAR2(255),
  job_status_message    VARCHAR2(4000),
  trigger_name          VARCHAR2(255),
  trigger_group         VARCHAR2(255),
  previous_fire_time    DATE,
  fire_time             DATE,
  next_fire_time        DATE,
  refire_count          NUMBER(20) DEFAULT 0,
  fire_instance_id      VARCHAR2(255),
  scheduler_instance_id VARCHAR2(255),
  scheduled_fire_time   DATE,
  execution_summary     VARCHAR2(4000),
  created_by            NUMBER(20) DEFAULT -1 NOT NULL,
  creation_date         DATE DEFAULT sysdate  NOT NULL,
  last_updated_by       NUMBER(20) DEFAULT -1 NOT NULL,
  last_update_date      DATE DEFAULT sysdate  NOT NULL,
  LAST_UPDATE_LOGIN     NUMBER,
  attribute1            VARCHAR2(255),
  attribute2            VARCHAR2(255),
  attribute3            VARCHAR2(255),
  attribute4            VARCHAR2(255),
  attribute5            VARCHAR2(255),
  attribute6            VARCHAR2(255),
  attribute7            VARCHAR2(255),
  attribute8            VARCHAR2(255),
  attribute9            VARCHAR2(255),
  attribute10           VARCHAR2(255),
  attribute11           VARCHAR2(255),
  attribute12           VARCHAR2(255),
  attribute13           VARCHAR2(255),
  attribute14           VARCHAR2(255),
  attribute15           VARCHAR2(255)
);
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_JOB_RUNNING_INFO
  ADD CONSTRAINT SYS_JOB_RUNING_INFO_PK PRIMARY KEY (JOB_RUNNING_INFO_ID);

-- Create sequence
CREATE SEQUENCE SYS_JOB_RUNNING_INFO_S START WITH 10001;
