/*


 Date: 06/12/2016 21:55:48 PM
*/

-- ----------------------------
--  Table structure for sys_role_b
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_role_b]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_b]
GO
CREATE TABLE [dbo].[sys_role_b] (
	[ROLE_ID] bigint NOT NULL,
	[ROLE_CODE] nvarchar(40) COLLATE Chinese_PRC_CI_AS NULL,
	[ROLE_NAME] nvarchar(150) COLLATE Chinese_PRC_CI_AS NULL,
	[ROLE_DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_b', 'COLUMN', 'ROLE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_role_b
-- ----------------------------
ALTER TABLE [dbo].[sys_role_b] ADD
	CONSTRAINT [PK__sys_role__5AC4D2228296255F] PRIMARY KEY CLUSTERED ([ROLE_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_role_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ROLE_B_U1]
ON [dbo].[sys_role_b] ([ROLE_CODE] ASC)
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
--  Options for table sys_role_b
-- ----------------------------
ALTER TABLE [dbo].[sys_role_b] SET (LOCK_ESCALATION = TABLE)
GO

/*


 Date: 06/12/2016 21:56:04 PM
*/

-- ----------------------------
--  Table structure for sys_role_tl
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_role_tl]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_tl]
GO
CREATE TABLE [dbo].[sys_role_tl] (
	[ROLE_ID] bigint NOT NULL,
	[LANG] nvarchar(10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ROLE_NAME] nvarchar(150) COLLATE Chinese_PRC_CI_AS NULL,
	[ROLE_DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'角色ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_tl', 'COLUMN', 'ROLE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_role_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_role_tl] ADD
	CONSTRAINT [PK__sys_role__CC6C3FB5C0D7A000] PRIMARY KEY CLUSTERED ([ROLE_ID],[LANG]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_role_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_role_tl] SET (LOCK_ESCALATION = TABLE)
GO




