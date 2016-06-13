/*


 Date: 06/12/2016 21:54:00 PM
*/

-- ----------------------------
--  Table structure for sys_lov_item
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_lov_item]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_lov_item]
GO
CREATE TABLE [dbo].[sys_lov_item] (
  [LOV_ITEM_ID]                 BIGINT                                  NOT NULL,
  [LOV_ID]                      BIGINT                                  NULL,
  [DISPLAY]                     NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [IS_AUTOCOMPLETE]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [CONDITION_FIELD]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [CONDITION_FIELD_WIDTH]       DECIMAL(20, 0)                          NULL,
  [CONDITION_FIELD_TYPE]        NVARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_NAME]        NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_NEWLINE]     NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [CONDITION_FIELD_SELECT_CODE] NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_LOV_CODE]    NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_SEQUENCE]    DECIMAL(20, 0)                          NULL,
  [CONDITION_FIELD_SELECT_URL]  NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [CONDITION_FIELD_SELECT_VF]   NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_SELECT_TF]   NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION_FIELD_TEXTFIELD]   NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [AUTOCOMPLETE_FIELD]          NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [GRID_FIELD]                  NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [GRID_FIELD_NAME]             NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_FIELD_SEQUENCE]         DECIMAL(20, 0)                          NULL,
  [GRID_FIELD_WIDTH]            DECIMAL(20, 0)                          NULL,
  [GRID_FIELD_ALIGN]            NVARCHAR(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [OBJECT_VERSION_NUMBER]       DECIMAL(20, 0)                          NULL,
  [REQUEST_ID]                  BIGINT                                  NULL,
  [PROGRAM_ID]                  BIGINT                                  NULL,
  [CREATION_DATE]               DATETIME2(0)                            NULL,
  [CREATED_BY]                  DECIMAL(20, 0)                          NULL,
  [LAST_UPDATED_BY]             DECIMAL(20, 0)                          NULL,
  [LAST_UPDATE_DATE]            DATETIME2(0)                            NULL,
  [LAST_UPDATE_LOGIN]           DECIMAL(20, 0)                          NULL,
  [ATTRIBUTE_CATEGORY]          VARCHAR(30) COLLATE Chinese_PRC_CI_AS   NULL,
  [ATTRIBUTE1]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE2]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE3]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE4]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE5]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE6]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE7]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE8]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE9]                  VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE10]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE11]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE12]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE13]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE14]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE15]                 VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN',
                            'LOV_ITEM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'头表ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN', 'LOV_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'查询字段宽度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN',
                            'CONDITION_FIELD_WIDTH'
GO
EXEC sp_addextendedproperty 'MS_Description', N'查询字段排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN',
                            'CONDITION_FIELD_SEQUENCE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'表格列排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN',
                            'GRID_FIELD_SEQUENCE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'表格列宽', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov_item', 'COLUMN',
                            'GRID_FIELD_WIDTH'
GO


-- ----------------------------
--  Primary key structure for table sys_lov_item
-- ----------------------------
ALTER TABLE [dbo].[sys_lov_item]
  ADD
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
ALTER TABLE [dbo].[sys_lov_item]
  SET ( LOCK_ESCALATION = TABLE )
GO

