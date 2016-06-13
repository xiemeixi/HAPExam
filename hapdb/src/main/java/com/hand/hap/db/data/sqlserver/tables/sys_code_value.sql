/*


 Date: 06/12/2016 21:53:04 PM
*/

-- ----------------------------
--  Table structure for sys_code_value_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_value_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_value_b]
GO
CREATE TABLE [dbo].[sys_code_value_b] (
  [CODE_VALUE_ID]         BIGINT                                  NOT NULL,
  [CODE_ID]               BIGINT                                  NULL,
  [VALUE]                 NVARCHAR(150) COLLATE Chinese_PRC_CI_AS NULL,
  [MEANING]               NVARCHAR(150) COLLATE Chinese_PRC_CI_AS NULL,
  [DESCRIPTION]           NVARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_value_b', 'COLUMN',
                            'CODE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_value_b
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_b]
  ADD
  CONSTRAINT [PK__sys_code__AA2A8F6BAA0713B8] PRIMARY KEY CLUSTERED ([CODE_VALUE_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_code_value_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_CODE_VALUE_B_U1]
ON [dbo].[sys_code_value_b] ([CODE_ID] ASC, [VALUE] ASC)
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
--  Options for table sys_code_value_b
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_b]
  SET ( LOCK_ESCALATION = TABLE )
GO


/*


 Date: 06/12/2016 21:53:13 PM
*/

-- ----------------------------
--  Table structure for sys_code_value_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_value_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_value_tl]
GO
CREATE TABLE [dbo].[sys_code_value_tl] (
  [CODE_VALUE_ID]         BIGINT                                  NOT NULL,
  [LANG]                  NVARCHAR(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MEANING]               NVARCHAR(150) COLLATE Chinese_PRC_CI_AS NULL,
  [DESCRIPTION]           NVARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_value_tl',
                            'COLUMN', 'CODE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_value_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_tl]
  ADD
  CONSTRAINT [PK__sys_code__3C8262FC2E3ABF2B] PRIMARY KEY CLUSTERED ([CODE_VALUE_ID], [LANG])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_code_value_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_tl]
  SET ( LOCK_ESCALATION = TABLE )
GO




