/*


 Date: 06/12/2016 21:54:06 PM
*/

-- ----------------------------
--  Table structure for sys_message
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message]
GO
CREATE TABLE [dbo].[sys_message] (
  [MESSAGE_ID]            BIGINT                                  NOT NULL,
  [MESSAGE_TYPE]          NVARCHAR(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [MESSAGE_HOST]          NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [MESSAGE_FROM]          NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [SUBJECT]               NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [CONTENT]               VARCHAR(MAX) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIORITY_LEVEL]        NVARCHAR(25) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEND_FLAG]             NVARCHAR(1) COLLATE Chinese_PRC_CI_AS   NULL,
  [MESSAGE_SOURCE]        NVARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [OBJECT_VERSION_NUMBER] BIGINT                                  NULL,
  [REQUEST_ID]            BIGINT                                  NULL,
  [PROGRAM_ID]            BIGINT                                  NULL,
  [CREATED_BY]            BIGINT                                  NULL,
  [CREATION_DATE]         DATETIME2(0)                            NULL,
  [LAST_UPDATED_BY]       BIGINT                                  NULL,
  [LAST_UPDATE_DATE]      DATETIME2(0)                            NULL,
  [ATTRIBUTE1]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE2]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE3]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE4]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE5]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE6]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE7]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE8]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE9]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE10]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE11]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE12]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE13]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE14]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ATTRIBUTE15]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS  NULL
)
ON [PRIMARY]
  TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'内容', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'CONTENT'
GO


-- ----------------------------
--  Primary key structure for table sys_message
-- ----------------------------
ALTER TABLE [dbo].[sys_message]
  ADD
  CONSTRAINT [PK__sys_mess__F610EE447CAF223F] PRIMARY KEY CLUSTERED ([MESSAGE_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_N1]
ON [dbo].[sys_message] ([MESSAGE_TYPE] ASC)
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
--  Options for table sys_message
-- ----------------------------
ALTER TABLE [dbo].[sys_message]
  SET ( LOCK_ESCALATION = TABLE )
GO

