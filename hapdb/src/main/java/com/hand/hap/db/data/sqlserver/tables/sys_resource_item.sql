/*


 Date: 06/12/2016 21:55:30 PM
*/

-- ----------------------------
--  Table structure for sys_resource_item_b
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_resource_item_b]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_resource_item_b]
GO
CREATE TABLE [dbo].[sys_resource_item_b] (
	[RESOURCE_ITEM_ID] bigint NOT NULL,
	[OWNER_RESOURCE_ID] bigint NULL,
	[TARGET_RESOURCE_ID] bigint NULL,
	[ITEM_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[ITEM_NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ITEM_TYPE] nvarchar(10) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'RESOURCE_ITEM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能资源ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'OWNER_RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'目标资源ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'TARGET_RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_item_b
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_b] ADD
	CONSTRAINT [PK__sys_reso__D848BA6AD90C5F32] PRIMARY KEY CLUSTERED ([RESOURCE_ITEM_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_resource_item_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_RESOURCE_ITEM_B_N1]
ON [dbo].[sys_resource_item_b] ([OWNER_RESOURCE_ID] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_RESOURCE_ITEM_B_U1]
ON [dbo].[sys_resource_item_b] ([ITEM_ID] ASC, [OWNER_RESOURCE_ID] ASC)
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
--  Options for table sys_resource_item_b
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_b] SET (LOCK_ESCALATION = TABLE)
GO


/*


 Date: 06/12/2016 21:55:36 PM
*/

-- ----------------------------
--  Table structure for sys_resource_item_tl
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_resource_item_tl]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_resource_item_tl]
GO
CREATE TABLE [dbo].[sys_resource_item_tl] (
	[RESOURCE_ITEM_ID] bigint NOT NULL,
	[LANG] nvarchar(10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ITEM_NAME] nvarchar(150) COLLATE Chinese_PRC_CI_AS NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_tl', 'COLUMN', 'RESOURCE_ITEM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_item_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_tl] ADD
	CONSTRAINT [PK__sys_reso__4EE057FD15A43A8B] PRIMARY KEY CLUSTERED ([RESOURCE_ITEM_ID],[LANG]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_resource_item_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_tl] SET (LOCK_ESCALATION = TABLE)
GO




