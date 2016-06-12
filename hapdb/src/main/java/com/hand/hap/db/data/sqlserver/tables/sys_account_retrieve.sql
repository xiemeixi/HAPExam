/*


 Date: 06/12/2016 21:52:21 PM
*/

-- ----------------------------
--  Table structure for sys_account_retrieve
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[sys_account_retrieve]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_account_retrieve]
GO
CREATE TABLE [dbo].[sys_account_retrieve] (
	[ACCOUNT_ID] bigint NULL,
	[RETRIEVE_TYPE] nvarchar(30) COLLATE Chinese_PRC_CI_AS NULL,
	[RETRIEVE_DATE] datetime2(0) NULL,
	[OBJECT_VERSION_NUMBER] decimal(20,2) NULL,
	[REQUEST_ID] bigint NULL,
	[PROGRAM_ID] bigint NULL,
	[CREATION_DATE] datetime2(0) NULL,
	[CREATED_BY] decimal(20,2) NULL,
	[LAST_UPDATED_BY] decimal(20,2) NULL,
	[LAST_UPDATE_DATE] datetime2(0) NULL,
	[LAST_UPDATE_LOGIN] decimal(20,2) NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_account_retrieve', 'COLUMN', 'ACCOUNT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_account_retrieve', 'COLUMN', 'RETRIEVE_DATE'
GO


-- ----------------------------
--  Options for table sys_account_retrieve
-- ----------------------------
ALTER TABLE [dbo].[sys_account_retrieve] SET (LOCK_ESCALATION = TABLE)
GO

