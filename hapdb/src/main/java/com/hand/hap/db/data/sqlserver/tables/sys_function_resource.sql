/*


 Date: 06/12/2016 21:53:30 PM
*/

-- ----------------------------
--  Table structure for sys_function_resource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_function_resource]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_function_resource]
GO
CREATE TABLE [dbo].[sys_function_resource] (
	[FUNC_SRC_ID] bigint NOT NULL,
	[FUNCTION_ID] bigint NULL,
	[RESOURCE_ID] bigint NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource', 'COLUMN', 'FUNC_SRC_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'外键，功能 ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource', 'COLUMN', 'FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'外键，资源 ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource', 'COLUMN', 'REQUEST_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_function_resource
-- ----------------------------
ALTER TABLE [dbo].[sys_function_resource] ADD
	CONSTRAINT [PK__sys_func__E16DF42EA55453A6] PRIMARY KEY CLUSTERED ([FUNC_SRC_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_function_resource
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_FUNCTION_RESOURCE_U1]
ON [dbo].[sys_function_resource] ([FUNCTION_ID] ASC, [RESOURCE_ID] ASC)
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
--  Options for table sys_function_resource
-- ----------------------------
ALTER TABLE [dbo].[sys_function_resource] SET (LOCK_ESCALATION = TABLE)
GO

