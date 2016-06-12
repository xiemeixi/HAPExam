/*


 Date: 06/12/2016 21:52:46 PM
*/

-- ----------------------------
--  Table structure for sys_attachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_attachment]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_attachment]
GO
CREATE TABLE [dbo].[sys_attachment] (
	[ATTACHMENT_ID] bigint NOT NULL,
	[CATEGORY_ID] bigint NULL,
	[NAME] nvarchar(40) COLLATE Chinese_PRC_CI_AS NULL,
	[SOURCE_TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[SOURCE_KEY] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[STATUS] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[START_ACTIVE_DATE] datetime2(0) NULL,
	[END_ACTIVE_DATE] datetime2(0) NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'ATTACHMENT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'分类ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'CATEGORY_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'开始生效日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'START_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'失效时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'END_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_attachment] ADD
	CONSTRAINT [PK__sys_atta__DAC918775186D1E8] PRIMARY KEY CLUSTERED ([ATTACHMENT_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_attachment
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ATTACHMENT_N1]
ON [dbo].[sys_attachment] ([CATEGORY_ID] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_ATTACHMENT_N2]
ON [dbo].[sys_attachment] ([SOURCE_TYPE] ASC, [SOURCE_KEY] ASC)
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
--  Options for table sys_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_attachment] SET (LOCK_ESCALATION = TABLE)
GO

