/*


 Date: 06/12/2016 21:53:24 PM
*/

-- ----------------------------
--  Table structure for sys_function_b
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_function_b]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_function_b]
GO
CREATE TABLE [dbo].[sys_function_b] (
	[FUNCTION_ID] bigint NOT NULL,
	[MODULE_CODE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_ICON] nvarchar(100) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_CODE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_NAME] nvarchar(150) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[RESOURCE_ID] bigint NULL,
	[TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[PARENT_FUNCTION_ID] bigint NULL,
	[ENABLED_FLAG] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_SEQUENCE] decimal(20,0) NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN', 'FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能入口', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN', 'RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'父功能', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN', 'PARENT_FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN', 'FUNCTION_SEQUENCE'
GO


-- ----------------------------
--  Primary key structure for table sys_function_b
-- ----------------------------
ALTER TABLE [dbo].[sys_function_b] ADD
	CONSTRAINT [PK__sys_func__05CDE34910819A94] PRIMARY KEY CLUSTERED ([FUNCTION_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_function_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_FUNCTION_B_N1]
ON [dbo].[sys_function_b] ([PARENT_FUNCTION_ID] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_FUNCTION_B_U1]
ON [dbo].[sys_function_b] ([FUNCTION_CODE] ASC)
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
--  Options for table sys_function_b
-- ----------------------------
ALTER TABLE [dbo].[sys_function_b] SET (LOCK_ESCALATION = TABLE)
GO


/*


 Date: 06/12/2016 21:53:36 PM
*/

-- ----------------------------
--  Table structure for sys_function_tl
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_function_tl]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_function_tl]
GO
CREATE TABLE [dbo].[sys_function_tl] (
	[FUNCTION_ID] bigint NOT NULL,
	[LANG] nvarchar(10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FUNCTION_NAME] nvarchar(150) COLLATE Chinese_PRC_CI_AS NULL,
	[FUNCTION_DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'功能ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_tl', 'COLUMN', 'FUNCTION_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_function_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_function_tl] ADD
	CONSTRAINT [PK__sys_func__93650EDE5759C390] PRIMARY KEY CLUSTERED ([FUNCTION_ID],[LANG]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_function_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_function_tl] SET (LOCK_ESCALATION = TABLE)
GO




