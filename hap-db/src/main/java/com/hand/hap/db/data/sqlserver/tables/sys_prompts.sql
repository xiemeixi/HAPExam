/*


 Date: 06/12/2016 21:55:19 PM
*/

-- ----------------------------
--  Table structure for sys_prompts
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_prompts]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_prompts]
GO
CREATE TABLE [dbo].[sys_prompts] (
  [PROMPT_ID]             BIGINT IDENTITY (10001, 1) NOT NULL,
  [PROMPT_CODE]           NVARCHAR(255)              NULL,
  [LANG]                  NVARCHAR(10)               NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0)             NULL,
  [REQUEST_ID]            BIGINT                     NULL,
  [PROGRAM_ID]            BIGINT                     NULL,
  [CREATION_DATE]         DATETIME               NULL,
  [CREATED_BY]            DECIMAL(20, 0)             NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 0)             NULL,
  [LAST_UPDATE_DATE]      DATETIME               NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0)             NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30)                NULL,
  [ATTRIBUTE1]            VARCHAR(240)               NULL,
  [ATTRIBUTE2]            VARCHAR(240)               NULL,
  [ATTRIBUTE3]            VARCHAR(240)               NULL,
  [ATTRIBUTE4]            VARCHAR(240)               NULL,
  [ATTRIBUTE5]            VARCHAR(240)               NULL,
  [ATTRIBUTE6]            VARCHAR(240)               NULL,
  [ATTRIBUTE7]            VARCHAR(240)               NULL,
  [ATTRIBUTE8]            VARCHAR(240)               NULL,
  [ATTRIBUTE9]            VARCHAR(240)               NULL,
  [ATTRIBUTE10]           VARCHAR(240)               NULL,
  [ATTRIBUTE11]           VARCHAR(240)               NULL,
  [ATTRIBUTE12]           VARCHAR(240)               NULL,
  [ATTRIBUTE13]           VARCHAR(240)               NULL,
  [ATTRIBUTE14]           VARCHAR(240)               NULL,
  [ATTRIBUTE15]           VARCHAR(240)               NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_prompts', 'COLUMN',
                            'PROMPT_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_prompts
-- ----------------------------
ALTER TABLE [dbo].[sys_prompts]
  ADD
  CONSTRAINT [SYS_PROMPTS_PK] PRIMARY KEY CLUSTERED ([PROMPT_ID])
GO

-- ----------------------------
--  Indexes structure for table sys_prompts
-- ----------------------------
CREATE UNIQUE INDEX [SYS_PROMPTS_U1]
ON [dbo].[sys_prompts] ([PROMPT_CODE] ASC, [LANG] ASC)
GO




