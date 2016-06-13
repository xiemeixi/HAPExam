/*


 Date: 06/12/2016 21:55:14 PM
*/

-- ----------------------------
--  Table structure for sys_profile_value
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_profile_value]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_profile_value]
GO
CREATE TABLE [dbo].[sys_profile_value] (
  [PROFILE_VALUE_ID]      BIGINT                                 NOT NULL,
  [PROFILE_ID]            NVARCHAR(32) COLLATE Chinese_PRC_CI_AS NULL,
  [LEVEL_ID]              NVARCHAR(32) COLLATE Chinese_PRC_CI_AS NULL,
  [LEVEL_VALUE]           NVARCHAR(40) COLLATE Chinese_PRC_CI_AS NULL,
  [PROFILE_VALUE]         NVARCHAR(80) COLLATE Chinese_PRC_CI_AS NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_profile_value',
                            'COLUMN', 'PROFILE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_profile_value
-- ----------------------------
ALTER TABLE [dbo].[sys_profile_value]
  ADD
  CONSTRAINT [PK__sys_prof__CA9B2BFB51C5561C] PRIMARY KEY CLUSTERED ([PROFILE_VALUE_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_profile_value
-- ----------------------------
ALTER TABLE [dbo].[sys_profile_value]
  SET ( LOCK_ESCALATION = TABLE )
GO

