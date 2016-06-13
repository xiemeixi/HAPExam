/*


 Date: 06/12/2016 21:54:50 PM
*/

-- ----------------------------
--  Table structure for sys_message_template
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_template]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_template]
GO
CREATE TABLE [dbo].[sys_message_template] (
  [TEMPLATE_ID]           BIGINT                                  NOT NULL,
  [SUBJECT]               VARCHAR(MAX) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTENT]               VARCHAR(MAX) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACCOUNT_ID]            BIGINT                                  NULL,
  [TEMPLATE_CODE]         NVARCHAR(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEMPLATE_TYPE]         NVARCHAR(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIORITY_LEVEL]        NVARCHAR(50) COLLATE Chinese_PRC_CI_AS  NULL,
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
  TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'TEMPLATE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'模板标题', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'SUBJECT'
GO
EXEC sp_addextendedproperty 'MS_Description', N'模板内容', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'CONTENT'
GO
EXEC sp_addextendedproperty 'MS_Description', N'账号id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'ACCOUNT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_template', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_template', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_template', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_template
-- ----------------------------
ALTER TABLE [dbo].[sys_message_template]
  ADD
  CONSTRAINT [PK__sys_mess__BACD412FDB9651BB] PRIMARY KEY CLUSTERED ([TEMPLATE_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message_template
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_TEMPLATE_U1]
ON [dbo].[sys_message_template] ([TEMPLATE_CODE] ASC)
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
--  Options for table sys_message_template
-- ----------------------------
ALTER TABLE [dbo].[sys_message_template]
  SET ( LOCK_ESCALATION = TABLE )
GO

