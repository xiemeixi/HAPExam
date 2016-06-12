/*


 Date: 06/12/2016 21:54:35 PM
*/

-- ----------------------------
--  Table structure for sys_message_email_white_lt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_message_email_white_lt]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_message_email_white_lt]
GO
CREATE TABLE [dbo].[sys_message_email_white_lt] (
	[ID] bigint NOT NULL,
	[ADDRESS] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[CONFIG_ID] bigint NULL,
	[DESCRIPTION] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'白名单地址', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'ADDRESS'
GO
EXEC sp_addextendedproperty 'MS_Description', N'邮箱配置id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'CONFIG_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'描述', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'DESCRIPTION'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_email_white_lt
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_white_lt] ADD
	CONSTRAINT [PK__sys_mess__3214EC27A6B45050] PRIMARY KEY CLUSTERED ([ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_message_email_white_lt
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_white_lt] SET (LOCK_ESCALATION = TABLE)
GO

