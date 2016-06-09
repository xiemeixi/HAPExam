DROP TABLE IF EXISTS SYS_LOV_ITEM;
CREATE TABLE `SYS_LOV_ITEM`(
    `LOV_ITEM_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `LOV_ID` bigint COMMENT '头表ID',
    `DISPLAY` varchar(255) COMMENT '描述字段',
    `IS_AUTOCOMPLETE` varchar(1) DEFAULT 'N'  COMMENT '是否autocomplete',
    `CONDITION_FIELD` varchar(1) DEFAULT 'N'  COMMENT '是否查询字段',
    `CONDITION_FIELD_WIDTH` decimal(20,0) COMMENT '查询字段宽度',
    `CONDITION_FIELD_TYPE` varchar(30) COMMENT '查询字段组件类型',
    `CONDITION_FIELD_NAME` varchar(80) COMMENT '查询字段名',
    `CONDITION_FIELD_NEWLINE` varchar(1) COMMENT '查询字段新一行',
    `CONDITION_FIELD_SELECT_CODE` varchar(80) COMMENT '查询字段combobox对应的快码值',
    `CONDITION_FIELD_LOV_CODE` varchar(80) COMMENT '查询字段lov对应的通用lov编码',
    `CONDITION_FIELD_SEQUENCE` decimal(20,0) COMMENT '查询字段排序号',
    `CONDITION_FIELD_SELECT_URL` varchar(255) COMMENT '查询字段combobox对应的URL',
    `CONDITION_FIELD_SELECT_VF` varchar(80) COMMENT '查询字段combobox对应的valueField',
    `CONDITION_FIELD_SELECT_TF` varchar(80) COMMENT '查询字段combobox对应的textField',
    `CONDITION_FIELD_TEXTFIELD` varchar(80) COMMENT '查询字段对应的textField',
    `AUTOCOMPLETE_FIELD` varchar(1) DEFAULT 'Y'  COMMENT 'autocomplete显示列',
    `GRID_FIELD` varchar(1) DEFAULT 'Y'  COMMENT '是否显示表格列',
    `GRID_FIELD_NAME` varchar(80) COMMENT '表格列字段名',
    `GRID_FIELD_SEQUENCE` decimal(20,0) DEFAULT 1         COMMENT '表格列排序号',
    `GRID_FIELD_WIDTH` decimal(20,0) COMMENT '表格列宽',
    `GRID_FIELD_ALIGN` varchar(10) DEFAULT 'center' COMMENT '表格列布局',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1        ,
    `REQUEST_ID` bigint DEFAULT -1,
    `PROGRAM_ID` bigint DEFAULT -1,
    `CREATION_DATE` datetime DEFAULT now()    ,
    `CREATED_BY` decimal(20,0) DEFAULT -1       ,
    `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1       ,
    `LAST_UPDATE_DATE` datetime DEFAULT now()    ,
    `LAST_UPDATE_LOGIN` decimal(20,0),
    `ATTRIBUTE_CATEGORY` varchar(30),
    `ATTRIBUTE1` varchar(240),
    `ATTRIBUTE2` varchar(240),
    `ATTRIBUTE3` varchar(240),
    `ATTRIBUTE4` varchar(240),
    `ATTRIBUTE5` varchar(240),
    `ATTRIBUTE6` varchar(240),
    `ATTRIBUTE7` varchar(240),
    `ATTRIBUTE8` varchar(240),
    `ATTRIBUTE9` varchar(240),
    `ATTRIBUTE10` varchar(240),
    `ATTRIBUTE11` varchar(240),
    `ATTRIBUTE12` varchar(240),
    `ATTRIBUTE13` varchar(240),
    `ATTRIBUTE14` varchar(240),
    `ATTRIBUTE15` varchar(240),
    PRIMARY KEY(`LOV_ITEM_ID`),
    KEY `SYS_LOV_ITEM_N1`(`LOV_ID`)
);
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_NAME` `CONDITION_FIELD_NAME` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_TEXTFIELD` `CONDITION_FIELD_TEXTFIELD` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_TYPE` `CONDITION_FIELD_TYPE` varchar(30) binary;
alter table `SYS_LOV_ITEM` change `DISPLAY` `DISPLAY` varchar(255) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_SELECT_CODE` `CONDITION_FIELD_SELECT_CODE` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `IS_AUTOCOMPLETE` `IS_AUTOCOMPLETE` varchar(1) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD` `CONDITION_FIELD` varchar(1) binary;
alter table `SYS_LOV_ITEM` change `GRID_FIELD` `GRID_FIELD` varchar(1) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_SELECT_URL` `CONDITION_FIELD_SELECT_URL` varchar(255) binary;
alter table `SYS_LOV_ITEM` change `AUTOCOMPLETE_FIELD` `AUTOCOMPLETE_FIELD` varchar(1) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_NEWLINE` `CONDITION_FIELD_NEWLINE` varchar(1) binary;
alter table `SYS_LOV_ITEM` change `GRID_FIELD_ALIGN` `GRID_FIELD_ALIGN` varchar(10) binary;
alter table `SYS_LOV_ITEM` change `GRID_FIELD_NAME` `GRID_FIELD_NAME` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_SELECT_TF` `CONDITION_FIELD_SELECT_TF` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_LOV_CODE` `CONDITION_FIELD_LOV_CODE` varchar(80) binary;
alter table `SYS_LOV_ITEM` change `CONDITION_FIELD_SELECT_VF` `CONDITION_FIELD_SELECT_VF` varchar(80) binary;
