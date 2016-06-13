/*


 Date: 06/12/2016 21:52:31 PM
*/

-- ----------------------------
--  Table structure for sys_attach_category_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_attach_category_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_attach_category_b]
GO
CREATE TABLE [dbo].[sys_attach_category_b] (
  [CATEGORY_ID]           BIGINT                                  NOT NULL,
  [CATEGORY_NAME]         NVARCHAR(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [LEAF_FLAG]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [DESCRIPTION]           NVARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [STATUS]                NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [PARENT_CATEGORY_ID]    BIGINT                                  NULL,
  [PATH]                  VARCHAR(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SOURCE_TYPE]           NVARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [ALLOWED_FILE_TYPE]     NVARCHAR(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [ALLOWED_FILE_SIZE]     DECIMAL(20, 2)                          NULL,
  [CATEGORY_PATH]         NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 2)                          NULL,
  [REQUEST_ID]            BIGINT                                  NULL,
  [PROGRAM_ID]            BIGINT                                  NULL,
  [CREATION_DATE]         DATETIME2(0)                            NULL,
  [CREATED_BY]            DECIMAL(20, 2)                          NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 2)                          NULL,
  [LAST_UPDATE_DATE]      DATETIME2(0)                            NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 2)                          NULL,
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
  [ATTRIBUTE15]           VARCHAR(240) COLLATE Chinese_PRC_CI_AS  NULL,
  [IS_UNIQUE]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'层级路径', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_b', 'COLUMN',
                            'PATH'
GO


-- ----------------------------
--  Primary key structure for table sys_attach_category_b
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_b]
  ADD
  CONSTRAINT [PK__sys_atta__E7DA297C71543BC5] PRIMARY KEY CLUSTERED ([CATEGORY_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_attach_category_b
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_b]
  SET ( LOCK_ESCALATION = TABLE )
GO


/*


 Date: 06/12/2016 21:52:38 PM
*/

-- ----------------------------
--  Table structure for sys_attach_category_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_attach_category_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_attach_category_tl]
GO
CREATE TABLE [dbo].[sys_attach_category_tl] (
  [CATEGORY_ID]           BIGINT                                  NOT NULL,
  [CATEGORY_NAME]         NVARCHAR(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION]           NVARCHAR(240) COLLATE Chinese_PRC_CI_AS NULL,
  [LANG]                  NVARCHAR(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_tl',
                            'COLUMN', 'CATEGORY_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_tl',
                            'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_attach_category_tl', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_attach_category_tl', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_attach_category_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_tl]
  ADD
  CONSTRAINT [PK__sys_atta__7172C4EB0A4F79CC] PRIMARY KEY CLUSTERED ([CATEGORY_ID], [LANG])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Options for table sys_attach_category_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_tl]
  SET ( LOCK_ESCALATION = TABLE )
GO




