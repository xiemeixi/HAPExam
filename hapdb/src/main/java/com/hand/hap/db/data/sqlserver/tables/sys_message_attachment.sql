/*


 Date: 06/12/2016 21:54:18 PM
*/

-- ----------------------------
--  Table structure for sys_message_attachment
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_attachment]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_attachment]
GO
CREATE TABLE [dbo].[sys_message_attachment] (
  [ATTACHMENT_ID]         BIGINT                                 NOT NULL,
  [MESSAGE_ID]            BIGINT                                 NULL,
  [FILE_ID]               BIGINT                                 NULL,
  [OBJECT_VERSION_NUMBER] BIGINT                                 NULL,
  [REQUEST_ID]            BIGINT                                 NULL,
  [PROGRAM_ID]            BIGINT                                 NULL,
  [CREATED_BY]            BIGINT                                 NULL,
  [CREATION_DATE]         DATETIME2(0)                           NULL,
  [LAST_UPDATED_BY]       BIGINT                                 NULL,
  [LAST_UPDATE_DATE]      DATETIME2(0)                           NULL,
  [ATTRIBUTE1]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE2]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE3]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE4]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE5]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE6]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE7]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE8]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE9]            VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE10]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE11]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE12]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE13]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE14]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL,
  [ATTRIBUTE15]           VARCHAR(255) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTACHMENT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'消息id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'附件id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'FILE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_attachment', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_attachment', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_attachment', 'COLUMN', 'PROGRAM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'被用户创建', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'CREATED_BY'
GO
EXEC sp_addextendedproperty 'MS_Description', N'创建日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'CREATION_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'最后被用户修改', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'LAST_UPDATED_BY'
GO
EXEC sp_addextendedproperty 'MS_Description', N'最后修改日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'LAST_UPDATE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性1', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE1'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性2', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE2'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性3', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE3'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性4', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE4'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性5', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE5'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性6', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE6'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性7', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE7'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性8', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE8'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性9', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE9'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性10', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE10'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性11', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE11'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性12', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE12'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性13', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE13'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性14', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE14'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性15', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_attachment', 'COLUMN',
                            'ATTRIBUTE15'
GO


-- ----------------------------
--  Primary key structure for table sys_message_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_message_attachment]
  ADD
  CONSTRAINT [PK__sys_mess__DAC91877C1E91547] PRIMARY KEY CLUSTERED ([ATTACHMENT_ID])
    WITH (PAD_INDEX = OFF,
      IGNORE_DUP_KEY = OFF,
      ALLOW_ROW_LOCKS = ON,
      ALLOW_PAGE_LOCKS = ON)
    ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message_attachment
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_ATTACHMENT_N1]
ON [dbo].[sys_message_attachment] ([FILE_ID] ASC)
  WITH (PAD_INDEX = OFF,
    IGNORE_DUP_KEY = OFF,
    STATISTICS_NORECOMPUTE = OFF,
    SORT_IN_TEMPDB = OFF,
    ONLINE = OFF,
    ALLOW_ROW_LOCKS = ON,
    ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_ATTACHMENT_N2]
ON [dbo].[sys_message_attachment] ([MESSAGE_ID] ASC)
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
--  Options for table sys_message_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_message_attachment]
  SET ( LOCK_ESCALATION = TABLE )
GO

