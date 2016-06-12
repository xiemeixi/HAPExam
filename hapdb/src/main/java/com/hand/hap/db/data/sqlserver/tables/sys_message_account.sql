/*


 Date: 06/12/2016 21:54:13 PM
*/

-- ----------------------------
--  Table structure for sys_message_account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_message_account]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_message_account]
GO
CREATE TABLE [dbo].[sys_message_account] (
	[ACCOUNT_ID] bigint NOT NULL,
	[ACCOUNT_TYPE] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[ACCOUNT_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS NULL,
	[USER_NAME] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[PASSWORD] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,0) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[CREATED_BY] decimal(20,0) NULL,
	[LAST_UPDATED_BY] decimal(20,0) NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[LAST_UPDATE_LOGIN] decimal(20,0) NULL,
	[ATTRIBUTE_CATEGORY] varchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE1] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE2] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE3] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE4] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE5] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE6] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE7] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE8] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE9] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE10] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE11] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE12] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE13] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE14] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[ATTRIBUTE15] varchar(240) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_account', 'COLUMN', 'ACCOUNT_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_account
-- ----------------------------
ALTER TABLE [dbo].[sys_message_account] ADD
	CONSTRAINT [PK__sys_mess__05B22F60D05AF2F0] PRIMARY KEY CLUSTERED ([ACCOUNT_ID]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_message_account
-- ----------------------------
ALTER TABLE [dbo].[sys_message_account] SET (LOCK_ESCALATION = TABLE)
GO

