/*


 Date: 06/12/2016 21:54:30 PM
*/

-- ----------------------------
--  Table structure for sys_message_email_config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_message_email_config]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_message_email_config]
GO
CREATE TABLE [dbo].[sys_message_email_config] (
	[CONFIG_ID] bigint NOT NULL,
	[CONFIG_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[HOST] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[PORT] nvarchar(10) COLLATE Chinese_PRC_CI_AS NULL,
	[TRY_TIMES] decimal(20,0) NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[USE_WHITE_LIST] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[USER_NAME] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[PASSWORD] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ENABLE] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,0) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[CREATED_BY] decimal(20,0) NULL,
	[LAST_UPDATED_BY] decimal(20,0) NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[LAST_UPDATE_LOGIN] decimal(20,0) NULL,
	[ATTRIBUTE_CATEGORY] varchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE1] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE2] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE3] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE4] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE5] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE6] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE7] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE8] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE9] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE10] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE11] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE12] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE13] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE14] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE15] varchar(240) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN', 'CONFIG_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'重试次数', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN', 'TRY_TIMES'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_email_config
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_config] ADD
	CONSTRAINT [PK__sys_mess__8AEE09EE94313CEA] PRIMARY KEY CLUSTERED ([CONFIG_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message_email_config
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_EMAIL_CONFIG_CODE]
ON [dbo].[sys_message_email_config] ([CONFIG_CODE] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

-- ----------------------------
--  Options for table sys_message_email_config
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_config] SET (LOCK_ESCALATION = TABLE)
GO

