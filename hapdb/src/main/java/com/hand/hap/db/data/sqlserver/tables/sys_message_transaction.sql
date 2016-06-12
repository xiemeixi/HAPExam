/*


 Date: 06/12/2016 21:54:56 PM
*/

-- ----------------------------
--  Table structure for sys_message_transaction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_message_transaction]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_message_transaction]
GO
CREATE TABLE [dbo].[sys_message_transaction] (
	[TRANSACTION_ID] bigint NOT NULL,
	[MESSAGE_ID] bigint NULL,
	[TRANSACTION_STATUS] nvarchar(25) COLLATE Chinese_PRC_CI_AS NULL,
	[TRANSACTION_MESSAGE] varchar(max) COLLATE Chinese_PRC_CI_AS NULL,
	[MESSAGE_ADDRESS] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] bigint NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATED_BY] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[LAST_UPDATED_BY] bigint NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[ATTRIBUTE1] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE2] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE3] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE4] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE5] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE6] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE7] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE8] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE9] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE10] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE11] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE12] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE13] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE14] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE15] varchar(255) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'TRANSACTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'消息id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'返回信息', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'TRANSACTION_MESSAGE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'PROGRAM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'被用户创建', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'CREATED_BY'
GO
EXEC sp_addextendedproperty 'MS_Description', N'创建日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'CREATION_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'最后被用户修改', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'LAST_UPDATED_BY'
GO
EXEC sp_addextendedproperty 'MS_Description', N'最后修改日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'LAST_UPDATE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性1', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE1'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性2', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE2'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性3', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE3'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性4', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE4'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性5', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE5'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性6', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE6'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性7', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE7'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性8', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE8'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性9', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE9'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性10', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE10'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性11', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE11'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性12', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE12'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性13', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE13'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性14', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE14'
GO
EXEC sp_addextendedproperty 'MS_Description', N'属性15', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN', 'ATTRIBUTE15'
GO


-- ----------------------------
--  Primary key structure for table sys_message_transaction
-- ----------------------------
ALTER TABLE [dbo].[sys_message_transaction] ADD
	CONSTRAINT [PK__sys_mess__16998B6134EA20F0] PRIMARY KEY CLUSTERED ([TRANSACTION_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Indexes structure for table sys_message_transaction
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_TRANSACTION_N1]
ON [dbo].[sys_message_transaction] ([MESSAGE_ID] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_TRANSACTION_N2]
ON [dbo].[sys_message_transaction] ([TRANSACTION_STATUS] ASC)
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
--  Options for table sys_message_transaction
-- ----------------------------
ALTER TABLE [dbo].[sys_message_transaction] SET (LOCK_ESCALATION = TABLE)
GO

