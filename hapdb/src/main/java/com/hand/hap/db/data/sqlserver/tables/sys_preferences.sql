/*


 Date: 06/12/2016 21:55:03 PM
*/

-- ----------------------------
--  Table structure for sys_preferences
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_preferences]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_preferences]
GO
CREATE TABLE [dbo].[sys_preferences] (
  [PREFERENCES_ID]        BIGINT                                 NOT NULL,
  [PREFERENCES]           NVARCHAR(30) COLLATE Chinese_PRC_CI_AS NULL,
  [PREFERENCES_LEVEL]     DECIMAL(20, 0)                         NULL,
  [PREFERENCES_VALUE]     NVARCHAR(80) COLLATE Chinese_PRC_CI_AS NULL,
  [USER_ID]               BIGINT                                 NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_preferences', 'COLUMN',
                            'PREFERENCES_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'逻辑分类：10 DSIS首选项, 20 MWS首选项', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_preferences', 'COLUMN', 'PREFERENCES_LEVEL'
GO
EXEC sp_addextendedproperty 'MS_Description', N'账号ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_preferences', 'COLUMN', 'USER_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_preferences', 'COLUMN',
                            'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_preferences',
                            'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_preferences',
                            'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_preferences
-- ----------------------------
ALTER TABLE [dbo].[sys_preferences]
  ADD
  CONSTRAINT [PK__sys_pref__F05B708893C13DE4] PRIMARY KEY CLUSTERED ([PREFERENCES_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_preferences
-- ----------------------------
ALTER TABLE [dbo].[sys_preferences]
  SET ( LOCK_ESCALATION = TABLE )
GO

