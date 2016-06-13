/*


 Date: 06/12/2016 21:53:55 PM
*/

-- ----------------------------
--  Table structure for sys_lov
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_lov]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_lov]
GO
CREATE TABLE [dbo].[sys_lov] (
  [LOV_ID]                BIGINT                                  NOT NULL,
  [CODE]                  NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION]           NVARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [SQL_ID]                NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [VALUE_FIELD]           NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEXT_FIELD]            NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE]                 NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [WIDTH]                 DECIMAL(20, 0)                          NULL,
  [HEIGHT]                DECIMAL(20, 0)                          NULL,
  [PLACEHOLDER]           NVARCHAR(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [DELAY_LOAD]            NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [NEED_QUERY_PARAM]      NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [EDITABLE]              NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [CAN_POPUP]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0)                          NULL,
  [REQUEST_ID]            BIGINT                                  NULL,
  [PROGRAM_ID]            BIGINT                                  NULL,
  [CREATION_DATE]         DATETIME2(0)                            NULL,
  [CREATED_BY]            DECIMAL(20, 0)                          NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 0)                          NULL,
  [LAST_UPDATE_DATE]      DATETIME2(0)                            NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0)                          NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30) COLLATE Chinese_PRC_CI_AS   NULL,
  [ATTRIBUTE1]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE2]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE3]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE4]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE5]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE6]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE7]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE8]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE9]            VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE10]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE11]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE12]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE13]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE14]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE15]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL
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
ALTER TABLE [dbo].[sys_lov]
  ADD
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
ALTER TABLE [dbo].[sys_lov]
  SET ( LOCK_ESCALATION = TABLE )
GO

