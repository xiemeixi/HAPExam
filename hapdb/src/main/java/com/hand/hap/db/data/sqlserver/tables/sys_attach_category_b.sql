/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer HAP
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : 10.211.55.6
 Source Database       : HAP
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : utf-8

 Date: 06/12/2016 21:52:31 PM
*/

-- ----------------------------
--  Table structure for sys_attach_category_b
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_attach_category_b]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_attach_category_b]
GO
CREATE TABLE [dbo].[sys_attach_category_b] (
	[CATEGORY_ID] bigint NOT NULL,
	[CATEGORY_NAME] nvarchar(40) COLLATE Chinese_PRC_CI_AS NULL,
	[LEAF_FLAG] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[DESCRIPTION] nvarchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[STATUS] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL,
	[PARENT_CATEGORY_ID] bigint NULL,
	[PATH] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
	[SOURCE_TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[ALLOWED_FILE_TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[ALLOWED_FILE_SIZE] decimal(20,2) NULL,
	[CATEGORY_PATH] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,2) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATION_DATE] DATETIME NULL,
	[CREATED_BY] decimal(20,2) NULL,
	[LAST_UPDATED_BY] decimal(20,2) NULL,
	[LAST_UPDATE_DATE] DATETIME NULL,
	[LAST_UPDATE_LOGIN] decimal(20,2) NULL,
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
	[ATTRIBUTE15] varchar(240) COLLATE Chinese_PRC_CI_AS NULL,
	[IS_UNIQUE] nvarchar(1) COLLATE Chinese_PRC_CI_AS NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'层级路径', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_b', 'COLUMN', 'PATH'
GO


-- ----------------------------
--  Primary key structure for table sys_attach_category_b
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_b] ADD
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
ALTER TABLE [dbo].[sys_attach_category_b] SET (LOCK_ESCALATION = TABLE)
GO

