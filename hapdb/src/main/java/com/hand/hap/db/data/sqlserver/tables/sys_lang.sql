/*


 Date: 06/12/2016 21:53:49 PM
*/

-- ----------------------------
--  Table structure for sys_lang_b
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_lang_b]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_lang_b]
GO
CREATE TABLE [dbo].[sys_lang_b] (
	[LANG_CODE] nvarchar(10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[BASE_LANG] nvarchar(10) COLLATE Chinese_PRC_CI_AS NULL,
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


-- ----------------------------
--  Primary key structure for table sys_lang_b
-- ----------------------------
ALTER TABLE [dbo].[sys_lang_b] ADD
	CONSTRAINT [PK__sys_lang__7D9CB4E45230C85F] PRIMARY KEY CLUSTERED ([LANG_CODE]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table sys_lang_b
-- ----------------------------
ALTER TABLE [dbo].[sys_lang_b] SET (LOCK_ESCALATION = TABLE)
GO

