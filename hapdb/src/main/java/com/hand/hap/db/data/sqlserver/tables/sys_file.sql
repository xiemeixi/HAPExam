/*


 Date: 06/12/2016 21:53:18 PM
*/

-- ----------------------------
--  Table structure for sys_file
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_file]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_file]
GO
CREATE TABLE [dbo].[sys_file] (
	[FILE_ID] bigint NOT NULL,
	[ATTACHMENT_ID] bigint NULL,
	[FILE_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[FILE_PATH] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[FILE_SIZE] decimal(20,2) NULL,
	[FILE_TYPE] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[UPLOAD_DATE] datetime2(0) NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,2) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[CREATED_BY] decimal(20,2) NULL,
	[LAST_UPDATED_BY] decimal(20,2) NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[LAST_UPDATE_LOGIN] decimal(20,2) NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'FILE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'附件ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'ATTACHMENT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'文件大小', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'FILE_SIZE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'上传时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'UPLOAD_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_file
-- ----------------------------
ALTER TABLE [dbo].[sys_file] ADD
	CONSTRAINT [PK__sys_file__49C04C7A2BCC21C5] PRIMARY KEY CLUSTERED ([FILE_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_file
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_FILE_N1]
ON [dbo].[sys_file] ([ATTACHMENT_ID] ASC)
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
--  Options for table sys_file
-- ----------------------------
ALTER TABLE [dbo].[sys_file] SET (LOCK_ESCALATION = TABLE)
GO

