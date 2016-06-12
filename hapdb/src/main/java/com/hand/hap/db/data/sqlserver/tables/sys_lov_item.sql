/*


 Date: 06/12/2016 21:54:00 PM
*/

-- ----------------------------
--  Table structure for sys_lov_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_lov_item]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_lov_item]
GO
CREATE TABLE [dbo].[sys_lov_item] (
	[LOV_ITEM_ID] bigint NOT NULL,
	[LOV_ID] bigint NULL,
	[DISPLAY] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[IS_AUTOCOMPLETE] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_WIDTH] decimal(20,0) NULL,
	[CONDITION_FIELD_TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_NAME] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_NEWLINE] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_SELECT_CODE] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_LOV_CODE] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_SEQUENCE] decimal(20,0) NULL,
	[CONDITION_FIELD_SELECT_URL] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_SELECT_VF] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_SELECT_TF] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[CONDITION_FIELD_TEXTFIELD] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[AUTOCOMPLETE_FIELD] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[GRID_FIELD] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[GRID_FIELD_NAME] nvarchar(80) COLLATE Chinese_PRC_CI_AS NULL,
	[GRID_FIELD_SEQUENCE] decimal(20,0) NULL,
	[GRID_FIELD_WIDTH] decimal(20,0) NULL,
	[GRID_FIELD_ALIGN] nvarchar(10) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'LOV_ITEM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'头表ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'LOV_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'查询字段宽度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'CONDITION_FIELD_WIDTH'
GO
EXEC sp_addextendedproperty 'MS_Description', N'查询字段排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'CONDITION_FIELD_SEQUENCE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'表格列排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'GRID_FIELD_SEQUENCE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'表格列宽', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'GRID_FIELD_WIDTH'
GO


-- ----------------------------
--  Primary key structure for table sys_lov_item
-- ----------------------------
ALTER TABLE [dbo].[sys_lov_item] ADD
	CONSTRAINT [PK__sys_lov___FBC5262DDEB055F9] PRIMARY KEY CLUSTERED ([LOV_ITEM_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_lov_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_LOV_ITEM_N1]
ON [dbo].[sys_lov_item] ([LOV_ID] ASC)
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
--  Options for table sys_lov_item
-- ----------------------------
ALTER TABLE [dbo].[sys_lov_item] SET (LOCK_ESCALATION = TABLE)
GO

