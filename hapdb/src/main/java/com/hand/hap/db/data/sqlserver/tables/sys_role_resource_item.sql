/*


 Date: 06/12/2016 21:55:59 PM
*/

-- ----------------------------
--  Table structure for sys_role_resource_item
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_role_resource_item]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_role_resource_item]
GO
CREATE TABLE [dbo].[sys_role_resource_item] (
  [RSI_ID]                BIGINT                                 NOT NULL,
  [ROLE_ID]               BIGINT                                 NULL,
  [RESOURCE_ITEM_ID]      BIGINT                                 NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0)                         NULL,
  [REQUEST_ID]            BIGINT                                 NULL,
  [PROGRAM_ID]            BIGINT                                 NULL,
  [CREATION_DATE]         DATETIME2(0)                           NULL,
  [CREATED_BY]            DECIMAL(20, 0)                         NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 0)                         NULL,
  [LAST_UPDATE_DATE]      DATETIME2(0)                           NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0)                         NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE1]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE2]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE3]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE4]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE5]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE6]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE7]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE8]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE9]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE10]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE11]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE12]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE13]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE14]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE15]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item',
                            'COLUMN', 'RSI_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'角色ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item', 'COLUMN',
                            'ROLE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能控件ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item', 'COLUMN',
                            'RESOURCE_ITEM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_role_resource_item
-- ----------------------------
ALTER TABLE [dbo].[sys_role_resource_item]
  ADD
  CONSTRAINT [PK__sys_role__3D41694BE573442D] PRIMARY KEY CLUSTERED ([RSI_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_role_resource_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ROLE_RESOURCE_ITEM_N1]
ON [dbo].[sys_role_resource_item] ([ROLE_ID] ASC)
  WITH (PAD_INDEX = OFF,
    IGNORE_DUP_KEY = OFF,
    STATISTICS_NORECOMPUTE = OFF,
    SORT_IN_TEMPDB = OFF,
    ONLINE = OFF,
    ALLOW_ROW_LOCKS = ON,
    ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_ROLE_RESOURCE_ITEM_U1]
ON [dbo].[sys_role_resource_item] ([ROLE_ID] ASC, [RESOURCE_ITEM_ID] ASC)
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
--  Options for table sys_role_resource_item
-- ----------------------------
ALTER TABLE [dbo].[sys_role_resource_item]
  SET ( LOCK_ESCALATION = TABLE )
GO

