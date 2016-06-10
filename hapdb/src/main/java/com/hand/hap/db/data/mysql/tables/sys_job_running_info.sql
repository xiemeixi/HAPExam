DROP TABLE IF EXISTS SYS_JOB_RUNNING_INFO;
CREATE TABLE `SYS_JOB_RUNNING_INFO`(
    `JOB_RUNNING_INFO_ID` bigint AUTO_INCREMENT,
    `JOB_NAME` varchar(255),
    `JOB_GROUP` varchar(255),
    `JOB_RESULT` varchar(255),
    `JOB_STATUS` varchar(255),
    `JOB_STATUS_MESSAGE` varchar(255),
    `TRIGGER_NAME` varchar(255),
    `TRIGGER_GROUP` varchar(255),
    `PREVIOUS_FIRE_TIME` datetime,
    `FIRE_TIME` datetime,
    `NEXT_FIRE_TIME` datetime,
    `REFIRE_COUNT` bigint DEFAULT 0,
    `FIRE_INSTANCE_ID` varchar(255),
    `SCHEDULER_INSTANCE_ID` varchar(255),
    `SCHEDULED_FIRE_TIME` datetime,
    `EXECUTION_SUMMARY` varchar(255),
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1,
    `REQUEST_ID` bigint DEFAULT -1,
    `PROGRAM_ID` bigint DEFAULT -1,
    `CREATED_BY` bigint DEFAULT -1 ,
    `CREATION_DATE` datetime DEFAULT now()  ,
    `LAST_UPDATED_BY` bigint DEFAULT -1 ,
    `LAST_UPDATE_DATE` datetime DEFAULT now()  ,
    `LAST_UPDATE_LOGIN` decimal(20,0),
    `ATTRIBUTE_CATEGORY` varchar(30),
    `ATTRIBUTE1` varchar(255),
    `ATTRIBUTE2` varchar(255),
    `ATTRIBUTE3` varchar(255),
    `ATTRIBUTE4` varchar(255),
    `ATTRIBUTE5` varchar(255),
    `ATTRIBUTE6` varchar(255),
    `ATTRIBUTE7` varchar(255),
    `ATTRIBUTE8` varchar(255),
    `ATTRIBUTE9` varchar(255),
    `ATTRIBUTE10` varchar(255),
    `ATTRIBUTE11` varchar(255),
    `ATTRIBUTE12` varchar(255),
    `ATTRIBUTE13` varchar(255),
    `ATTRIBUTE14` varchar(255),
    `ATTRIBUTE15` varchar(255),
    PRIMARY KEY(`JOB_RUNNING_INFO_ID`)
);
alter table `SYS_JOB_RUNNING_INFO` change `JOB_RESULT` `JOB_RESULT` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `JOB_NAME` `JOB_NAME` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `TRIGGER_NAME` `TRIGGER_NAME` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `JOB_STATUS` `JOB_STATUS` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `TRIGGER_GROUP` `TRIGGER_GROUP` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `JOB_GROUP` `JOB_GROUP` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `SCHEDULER_INSTANCE_ID` `SCHEDULER_INSTANCE_ID` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `FIRE_INSTANCE_ID` `FIRE_INSTANCE_ID` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `EXECUTION_SUMMARY` `EXECUTION_SUMMARY` varchar(255) binary;
alter table `SYS_JOB_RUNNING_INFO` change `JOB_STATUS_MESSAGE` `JOB_STATUS_MESSAGE` varchar(255) binary;
