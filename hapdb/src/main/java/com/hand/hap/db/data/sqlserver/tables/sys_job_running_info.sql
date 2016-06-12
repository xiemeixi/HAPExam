/*


 Date: 06/12/2016 21:53:44 PM
*/

-- ----------------------------
--  Table structure for sys_job_running_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_job_running_info]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_job_running_info]
GO
CREATE TABLE [dbo].[sys_job_running_info] (
	[JOB_RUNNING_INFO_ID] bigint NOT NULL,
	[JOB_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[JOB_GROUP] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[JOB_RESULT] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[JOB_STATUS] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[JOB_STATUS_MESSAGE] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[TRIGGER_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[TRIGGER_GROUP] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[PREVIOUS_FIRE_TIME] datetime2(0) NULL,
	[FIRE_TIME] datetime2(0) NULL,
	[NEXT_FIRE_TIME] datetime2(0) NULL,
	[REFIRE_COUNT] bigint NULL,
	[FIRE_INSTANCE_ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[SCHEDULER_INSTANCE_ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[SCHEDULED_FIRE_TIME] datetime2(0) NULL,
	[EXECUTION_SUMMARY] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,0) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATED_BY] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[LAST_UPDATED_BY] bigint NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[LAST_UPDATE_LOGIN] decimal(20,0) NULL,
	[ATTRIBUTE_CATEGORY] varchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE1] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE2] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE3] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE4] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE5] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE6] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE7] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE8] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE9] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE10] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE11] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE12] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE13] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE14] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE15] varchar(255) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO


-- ----------------------------
--  Primary key structure for table sys_job_running_info
-- ----------------------------
ALTER TABLE [dbo].[sys_job_running_info] ADD
	CONSTRAINT [PK__sys_job___CD9A0A62AFDDDAF2] PRIMARY KEY CLUSTERED ([JOB_RUNNING_INFO_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_job_running_info
-- ----------------------------
ALTER TABLE [dbo].[sys_job_running_info] SET (LOCK_ESCALATION = TABLE)
GO

