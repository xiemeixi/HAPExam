/*


 Date: 06/12/2016 21:56:09 PM
*/

-- ----------------------------
--  Table structure for sys_user
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_user]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
  [USER_ID]               BIGINT                                  NOT NULL,
  [USER_TYPE]             NVARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_NAME]             NVARCHAR(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [PASSWORD_ENCRYPTED]    VARCHAR(80) COLLATE Chinese_PRC_CI_AS   NULL,
  [EMAIL]                 NVARCHAR(150) COLLATE Chinese_PRC_CI_AS NULL,
  [PHONE]                 NVARCHAR(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_ACTIVE_DATE]     DATETIME2(0)                            NULL,
  [END_ACTIVE_DATE]       DATETIME2(0)                            NULL,
  [STATUS]                NVARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN',
                            'USER_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'有效期从', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN',
                            'START_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'有效期至', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN', 'END_ACTIVE_DATE'
GO


-- ----------------------------
--  Primary key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user]
  ADD
  CONSTRAINT [PK__sys_user__F3BEEBFFC1571FD4] PRIMARY KEY CLUSTERED ([USER_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user]
  SET ( LOCK_ESCALATION = TABLE )
GO

