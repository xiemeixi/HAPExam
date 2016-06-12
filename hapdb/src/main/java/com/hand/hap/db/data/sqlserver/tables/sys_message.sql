/*


 Date: 06/12/2016 21:54:06 PM
*/

-- ----------------------------
--  Table structure for sys_message
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_message]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_message]
GO
CREATE TABLE [dbo].[sys_message] (
	[MESSAGE_ID] bigint NOT NULL,
	[MESSAGE_TYPE] nvarchar(10) COLLATE Chinese_PRC_CI_AS NULL,
	[MESSAGE_HOST] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[MESSAGE_FROM] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[SUBJECT] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[CONTENT] varchar(max) COLLATE Chinese_PRC_CI_AS NULL,
	[PRIORITY_LEVEL] nvarchar(25) COLLATE Chinese_PRC_CI_AS NULL,
	[SEND_FLAG] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[MESSAGE_SOURCE] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] bigint NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATED_BY] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[LAST_UPDATED_BY] bigint NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
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
TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'内容', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'CONTENT'
GO


-- ----------------------------
--  Primary key structure for table sys_message
-- ----------------------------
ALTER TABLE [dbo].[sys_message] ADD
	CONSTRAINT [PK__sys_mess__F610EE447CAF223F] PRIMARY KEY CLUSTERED ([MESSAGE_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_N1]
ON [dbo].[sys_message] ([MESSAGE_TYPE] ASC)
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
--  Options for table sys_message
-- ----------------------------
ALTER TABLE [dbo].[sys_message] SET (LOCK_ESCALATION = TABLE)
GO

