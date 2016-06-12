/*


 Date: 06/12/2016 21:53:55 PM
*/

-- ----------------------------
--  Table structure for sys_lov
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_lov]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_lov]
GO
CREATE TABLE [dbo].[sys_lov] (
	[LOV_ID] bigint NOT NULL,
	[CODE] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[SQL_ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[VALUE_FIELD] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[TEXT_FIELD] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[TITLE] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[WIDTH] decimal(20,0) NULL,
	[HEIGHT] decimal(20,0) NULL,
	[PLACEHOLDER] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[DELAY_LOAD] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[NEED_QUERY_PARAM] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[EDITABLE] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[CAN_POPUP] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'LOV_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'宽度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'WIDTH'
GO
EXEC sp_addextendedproperty 'MS_Description', N'高度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'HEIGHT'
GO


-- ----------------------------
--  Primary key structure for table sys_lov
-- ----------------------------
ALTER TABLE [dbo].[sys_lov] ADD
	CONSTRAINT [PK__sys_lov__EBE1FA6AA3724E8D] PRIMARY KEY CLUSTERED ([LOV_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_lov
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_LOV_U1]
ON [dbo].[sys_lov] ([CODE] ASC)
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
--  Options for table sys_lov
-- ----------------------------
ALTER TABLE [dbo].[sys_lov] SET (LOCK_ESCALATION = TABLE)
GO

