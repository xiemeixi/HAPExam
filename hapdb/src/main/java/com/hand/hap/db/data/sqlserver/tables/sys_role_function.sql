/*


 Date: 06/12/2016 21:55:54 PM
*/

-- ----------------------------
--  Table structure for sys_role_function
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_role_function]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_role_function]
GO
CREATE TABLE [dbo].[sys_role_function] (
  [SRF_ID]                BIGINT                                 NOT NULL,
  [ROLE_ID]               BIGINT                                 NULL,
  [FUNCTION_ID]           BIGINT                                 NULL,
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
EXEC sp_addextendedproperty 'MS_Description', 'ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_function', 'COLUMN', 'SRF_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'角色ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_function', 'COLUMN',
                            'ROLE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_function', 'COLUMN',
                            'FUNCTION_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_role_function
-- ----------------------------
ALTER TABLE [dbo].[sys_role_function]
  ADD
  CONSTRAINT [PK__sys_role__397EF92A8285D11E] PRIMARY KEY CLUSTERED ([SRF_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_role_function
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ROLE_FUNCTION_U1]
ON [dbo].[sys_role_function] ([ROLE_ID] ASC, [FUNCTION_ID] ASC)
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
--  Options for table sys_role_function
-- ----------------------------
ALTER TABLE [dbo].[sys_role_function]
  SET ( LOCK_ESCALATION = TABLE )
GO

