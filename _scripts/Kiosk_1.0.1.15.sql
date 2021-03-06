/* ------------------------------------------------------------

DESCRIPTION: Schema synchronization script for object(s) \r\n
    procedures:
        [dbo].[dtr_change_roster_status], [dbo].[dtr_get_by_date], [dbo].[dtr_get_by_employee], [dbo].[dtr_get_employees], [dbo].[dtr_get_override_by_date_am], [dbo].[dtr_get_override_by_date_pm], [dbo].[dtr_get_overtime], [dbo].[dtr_get_roster], [dbo].[dtr_get_rosterdetail], [dbo].[dtr_get_undertime], [dbo].[dtr_log_time], [dbo].[hris_change_leave_status], [dbo].[hris_dd_get_am_pm], [dbo].[hris_dd_get_blood_types], [dbo].[hris_dd_get_civil_status], [dbo].[hris_dd_get_gender], [dbo].[hris_dd_get_leave_reasons], [dbo].[hris_dd_get_leave_status], [dbo].[hris_dd_get_leave_types], [dbo].[hris_dd_get_leaveapp_status], [dbo].[hris_dd_get_override_reasons], [dbo].[hris_dd_get_overtime_reasons], [dbo].[hris_dd_get_religions], [dbo].[hris_dd_get_resource_types], [dbo].[hris_dd_get_time_status], [dbo].[hris_dd_get_undertime_reasons], [dbo].[hris_get_employee], [dbo].[hris_get_leave], [dbo].[hris_get_leavedetail], [dbo].[hris_get_leaves], [dbo].[hris_get_overridereasons], [dbo].[hris_get_overtime_reasons], [dbo].[hris_get_undertime_reasons], [dbo].[sec_get_user_rights]

    tables:
        [dbo].[department], [dbo].[dtroverride], [dbo].[dtrovertime], [dbo].[dtrundertime], [dbo].[leave], [dbo].[leavedetail], [dbo].[location], [dbo].[paf], [dbo].[roster], [dbo].[rosterdetail], [dbo].[t_leaveapplicationstatus], [dbo].[t_leavereason], [dbo].[t_leavestatus], [dbo].[t_leavetype], [dbo].[t_overridereason], [dbo].[t_overtimereason], [dbo].[t_rosterdetailstatus], [dbo].[t_timestatus], [dbo].[t_undertimereason]

    functions:
        [dbo].[dtr_fn_get_days_covered], [dbo].[dtr_fn_get_dtr], [dbo].[dtr_fn_get_location_code], [dbo].[dtr_fn_get_log_status], [dbo].[dtr_fn_get_total_hours], [dbo].[paf_fn_active_employees]

     Make BRYAN-ULTRA\SQL2008R2.LogBox Equal BRYAN-ULTRA\SQL2008R2.HRIS

   AUTHOR:	[Insert author name]

   DATE:	5/11/2015 9:00:28 PM

   LEGAL:	2015 [Insert company name]

   ------------------------------------------------------------ */

SET NOEXEC OFF
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET IMPLICIT_TRANSACTIONS OFF
SET ARITHABORT ON
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO
USE [LogBox]
GO

BEGIN TRAN
GO

REVOKE ALTER
	ON [dbo].[dtr_log_time]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE CONTROL
	ON [dbo].[dtr_log_time]
	TO [LogBoxUser]	
CASCADE
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE EXECUTE
	ON [dbo].[dtr_log_time]
	TO [LogBoxUser]	
CASCADE
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE TAKE OWNERSHIP
	ON [dbo].[dtr_log_time]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE VIEW DEFINITION
	ON [dbo].[dtr_log_time]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Drop All Permissions For The procedure [dbo].[dtr_get_by_date]
Print 'Drop All Permissions For The procedure [dbo].[dtr_get_by_date]'
REVOKE ALTER
	ON [dbo].[dtr_get_by_date]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE CONTROL
	ON [dbo].[dtr_get_by_date]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE EXECUTE
	ON [dbo].[dtr_get_by_date]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE TAKE OWNERSHIP
	ON [dbo].[dtr_get_by_date]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE VIEW DEFINITION
	ON [dbo].[dtr_get_by_date]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Drop Procedure [dbo].[dtr_get_by_date]
Print 'Drop Procedure [dbo].[dtr_get_by_date]'
GO
DROP PROCEDURE [dbo].[dtr_get_by_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE ALTER
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE CONTROL
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE EXECUTE
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE REFERENCES
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE TAKE OWNERSHIP
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE VIEW DEFINITION
	ON [dbo].[dtr_fn_get_total_hours]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE ALTER
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE CONTROL
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE EXECUTE
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE REFERENCES
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE TAKE OWNERSHIP
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
REVOKE VIEW DEFINITION
	ON [dbo].[dtr_fn_get_log_status]
	TO [LogBoxUser]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO


IF OBJECT_ID('dbo.leavedetail', 'U') IS NOT NULL
/****** Object:  Table [dbo].[leavedetail]    Script Date: 15/11/2015 10:07:40 PM ******/
DROP TABLE [dbo].[leavedetail]
GO

IF OBJECT_ID('dbo.leave', 'U') IS NOT NULL
/****** Object:  Table [dbo].[leave]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[leave]
GO

IF OBJECT_ID('dbo.t_leavereason', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_leavereason]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_leavereason]
GO

IF OBJECT_ID('dbo.t_leavestatus', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_leavestatus]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_leavestatus]
GO

IF OBJECT_ID('dbo.t_leavetype', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_leavetype]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_leavetype]
GO

IF OBJECT_ID('dbo.t_leaveapplicationstatus', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_leaveapplicationstatus]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_leaveapplicationstatus]
GO

IF OBJECT_ID('dbo.department', 'U') IS NOT NULL
/****** Object:  Table [dbo].[department]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[department]
GO

IF OBJECT_ID('dbo.rosterdetail', 'U') IS NOT NULL
/****** Object:  Table [dbo].[rosterdetail]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[rosterdetail]
GO

IF OBJECT_ID('dbo.roster', 'U') IS NOT NULL
/****** Object:  Table [dbo].[roster]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[roster]
GO

IF OBJECT_ID('dbo.t_rosterdetailstatus', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_rosterdetailstatus]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_rosterdetailstatus]
GO

IF OBJECT_ID('dbo.dtroverride', 'U') IS NOT NULL
/****** Object:  Table [dbo].[dtroverride]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[dtroverride]
GO

IF OBJECT_ID('dbo.dtrundertime', 'U') IS NOT NULL
/****** Object:  Table [dbo].[dtrundertime]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[dtrundertime]
GO

IF OBJECT_ID('dbo.dtrovertime', 'U') IS NOT NULL
/****** Object:  Table [dbo].[dtrovertime]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[dtrovertime]
GO

IF OBJECT_ID('dbo.t_timestatus', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_timestatus]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_timestatus]
GO

IF OBJECT_ID('dbo.t_overtimereason', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_overtimereason]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_overtimereason]
GO

IF OBJECT_ID('dbo.t_undertimereason', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_undertimereason]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_undertimereason]
GO

IF OBJECT_ID('dbo.t_overridereason', 'U') IS NOT NULL
/****** Object:  Table [dbo].[t_overridereason]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[t_overridereason]
GO

IF OBJECT_ID('dbo.location', 'U') IS NOT NULL
/****** Object:  Table [dbo].[location]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[location]
GO

IF OBJECT_ID('dbo.paf', 'U') IS NOT NULL
/****** Object:  Table [dbo].[paf]    Script Date: 15/11/2015 10:08:56 PM ******/
DROP TABLE [dbo].[paf]
GO

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'dbo.dtr_fn_get_days_covered') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION dbo.dtr_fn_get_days_covered
GO

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'dbo.dtr_fn_get_location_code') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION dbo.dtr_fn_get_location_code
GO

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'dbo.paf_fn_active_employees') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION dbo.paf_fn_active_employees
GO

IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'dbo.dtr_fn_get_dtr') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION dbo.dtr_fn_get_dtr
GO

IF OBJECT_ID('dbo.hris_dd_get_blood_types', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_blood_types

GO

IF OBJECT_ID('dbo.hris_dd_get_civil_status', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_civil_status

GO

IF OBJECT_ID('dbo.hris_dd_get_am_pm', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_am_pm

GO

IF OBJECT_ID('dbo.hris_dd_get_gender', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_gender

GO

IF OBJECT_ID('dbo.hris_dd_get_override_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_override_reasons

GO

IF OBJECT_ID('dbo.hris_dd_get_overtime_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_overtime_reasons

GO

IF OBJECT_ID('dbo.hris_get_overridereasons', 'P') IS NOT NULL
DROP PROC dbo.hris_get_overridereasons

GO

IF OBJECT_ID('dbo.hris_get_overtime_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_get_overtime_reasons

GO

IF OBJECT_ID('dbo.hris_dd_get_leaveapp_status', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_leaveapp_status

GO

IF OBJECT_ID('dbo.hris_dd_get_leave_types', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_leave_types

GO

IF OBJECT_ID('dbo.hris_dd_get_leave_status', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_leave_status

GO

IF OBJECT_ID('dbo.hris_get_undertime_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_get_undertime_reasons

GO

IF OBJECT_ID('dbo.hris_dd_get_time_status', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_time_status

GO

IF OBJECT_ID('dbo.hris_dd_get_undertime_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_undertime_reasons

GO

IF OBJECT_ID('dbo.hris_dd_get_religions', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_religions

GO

IF OBJECT_ID('dbo.dtr_get_roster', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_roster

GO


IF OBJECT_ID('dbo.dtr_change_roster_status', 'P') IS NOT NULL
DROP PROC dbo.dtr_change_roster_status

GO

IF OBJECT_ID('dbo.hris_dd_get_leave_reasons', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_leave_reasons

GO

IF OBJECT_ID('dbo.hris_get_employee', 'P') IS NOT NULL
DROP PROC dbo.hris_get_employee

GO

IF OBJECT_ID('dbo.hris_dd_get_resource_types', 'P') IS NOT NULL
DROP PROC dbo.hris_dd_get_resource_types

GO

IF OBJECT_ID('dbo.dtr_get_override_by_date_am', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_override_by_date_am

GO

IF OBJECT_ID('dbo.dtr_get_override_by_date_pm', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_override_by_date_pm

GO

IF OBJECT_ID('dbo.dtr_get_employees', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_employees

GO

IF OBJECT_ID('dbo.sec_get_user_rights', 'P') IS NOT NULL
DROP PROC dbo.sec_get_user_rights

GO

IF OBJECT_ID('dbo.dtr_get_by_employee', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_by_employee

GO

IF OBJECT_ID('dbo.hris_get_leave', 'P') IS NOT NULL
DROP PROC dbo.hris_get_leave

GO

IF OBJECT_ID('dbo.dtr_get_rosterdetail', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_rosterdetail

GO

IF OBJECT_ID('dbo.dtr_get_undertime', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_undertime

GO

IF OBJECT_ID('dbo.hris_get_leavedetail', 'P') IS NOT NULL
DROP PROC dbo.hris_get_leavedetail

GO

IF OBJECT_ID('dbo.hris_change_leave_status', 'P') IS NOT NULL
DROP PROC dbo.hris_change_leave_status

GO

IF OBJECT_ID('dbo.hris_get_leaves', 'P') IS NOT NULL
DROP PROC dbo.hris_get_leaves

GO

IF OBJECT_ID('dbo.dtr_get_overtime', 'P') IS NOT NULL
DROP PROC dbo.dtr_get_overtime

GO


IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_leavestatus]
Print 'Create Table [dbo].[t_leavestatus]'
GO
CREATE TABLE [dbo].[t_leavestatus] (
		[leavestatus_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavestatus_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavestatus_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_leavestatus to [dbo].[t_leavestatus]
Print 'Add Primary Key PK_t_leavestatus to [dbo].[t_leavestatus]'
GO
ALTER TABLE [dbo].[t_leavestatus]
	ADD
	CONSTRAINT [PK_t_leavestatus]
	PRIMARY KEY
	CLUSTERED
	([leavestatus_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_leavestatus] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_leavetype]
Print 'Create Table [dbo].[t_leavetype]'
GO
CREATE TABLE [dbo].[t_leavetype] (
		[leavetype_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavetype_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavetype_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[max_days]                  [float] NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_leavetype to [dbo].[t_leavetype]
Print 'Add Primary Key PK_t_leavetype to [dbo].[t_leavetype]'
GO
ALTER TABLE [dbo].[t_leavetype]
	ADD
	CONSTRAINT [PK_t_leavetype]
	PRIMARY KEY
	CLUSTERED
	([leavetype_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_t_leavetype_max_days to [dbo].[t_leavetype]
Print 'Add Default Constraint DF_t_leavetype_max_days to [dbo].[t_leavetype]'
GO
ALTER TABLE [dbo].[t_leavetype]
	ADD
	CONSTRAINT [DF_t_leavetype_max_days]
	DEFAULT ((0)) FOR [max_days]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_leavetype] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_leaveapplicationstatus]
Print 'Create Table [dbo].[t_leaveapplicationstatus]'
GO
CREATE TABLE [dbo].[t_leaveapplicationstatus] (
		[leaveappstatus_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leaveappstatus_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leaveappstatus_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[close_record]                   [smallint] NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_leaveapplicationstatus to [dbo].[t_leaveapplicationstatus]
Print 'Add Primary Key PK_t_leaveapplicationstatus to [dbo].[t_leaveapplicationstatus]'
GO
ALTER TABLE [dbo].[t_leaveapplicationstatus]
	ADD
	CONSTRAINT [PK_t_leaveapplicationstatus]
	PRIMARY KEY
	CLUSTERED
	([leaveappstatus_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_t_leaveapplicationstatus_is_closed to [dbo].[t_leaveapplicationstatus]
Print 'Add Default Constraint DF_t_leaveapplicationstatus_is_closed to [dbo].[t_leaveapplicationstatus]'
GO
ALTER TABLE [dbo].[t_leaveapplicationstatus]
	ADD
	CONSTRAINT [DF_t_leaveapplicationstatus_is_closed]
	DEFAULT ((0)) FOR [close_record]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_leaveapplicationstatus] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[department]
Print 'Create Table [dbo].[department]'
GO
CREATE TABLE [dbo].[department] (
		[department_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[department_name]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[department_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_department to [dbo].[department]
Print 'Add Primary Key PK_department to [dbo].[department]'
GO
ALTER TABLE [dbo].[department]
	ADD
	CONSTRAINT [PK_department]
	PRIMARY KEY
	CLUSTERED
	([department_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[department] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_rosterdetailstatus]
Print 'Create Table [dbo].[t_rosterdetailstatus]'
GO
CREATE TABLE [dbo].[t_rosterdetailstatus] (
		[rdstatus_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[rdstatus_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[rdstatus_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_rosterdetailstatus to [dbo].[t_rosterdetailstatus]
Print 'Add Primary Key PK_t_rosterdetailstatus to [dbo].[t_rosterdetailstatus]'
GO
ALTER TABLE [dbo].[t_rosterdetailstatus]
	ADD
	CONSTRAINT [PK_t_rosterdetailstatus]
	PRIMARY KEY
	CLUSTERED
	([rdstatus_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_rosterdetailstatus] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_timestatus]
Print 'Create Table [dbo].[t_timestatus]'
GO
CREATE TABLE [dbo].[t_timestatus] (
		[timestatus_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[timestatus_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[timestatus_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_timestatus to [dbo].[t_timestatus]
Print 'Add Primary Key PK_t_timestatus to [dbo].[t_timestatus]'
GO
ALTER TABLE [dbo].[t_timestatus]
	ADD
	CONSTRAINT [PK_t_timestatus]
	PRIMARY KEY
	CLUSTERED
	([timestatus_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_timestatus] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_undertimereason]
Print 'Create Table [dbo].[t_undertimereason]'
GO
CREATE TABLE [dbo].[t_undertimereason] (
		[undertime_reason_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[undertime_reason_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[undertime_reason_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_undertimereason to [dbo].[t_undertimereason]
Print 'Add Primary Key PK_t_undertimereason to [dbo].[t_undertimereason]'
GO
ALTER TABLE [dbo].[t_undertimereason]
	ADD
	CONSTRAINT [PK_t_undertimereason]
	PRIMARY KEY
	CLUSTERED
	([undertime_reason_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_undertimereason] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_overridereason]
Print 'Create Table [dbo].[t_overridereason]'
GO
CREATE TABLE [dbo].[t_overridereason] (
		[override_reason_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[override_reason_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[override_reason_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_overridereason to [dbo].[t_overridereason]
Print 'Add Primary Key PK_t_overridereason to [dbo].[t_overridereason]'
GO
ALTER TABLE [dbo].[t_overridereason]
	ADD
	CONSTRAINT [PK_t_overridereason]
	PRIMARY KEY
	CLUSTERED
	([override_reason_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_overridereason] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_overtimereason]
Print 'Create Table [dbo].[t_overtimereason]'
GO
CREATE TABLE [dbo].[t_overtimereason] (
		[overtime_reason_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[overtime_reason_name]            [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[overtime_reason_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_overtimereason to [dbo].[t_overtimereason]
Print 'Add Primary Key PK_t_overtimereason to [dbo].[t_overtimereason]'
GO
ALTER TABLE [dbo].[t_overtimereason]
	ADD
	CONSTRAINT [PK_t_overtimereason]
	PRIMARY KEY
	CLUSTERED
	([overtime_reason_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_overtimereason] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Function [dbo].[dtr_fn_get_days_covered]
Print 'Create Function [dbo].[dtr_fn_get_days_covered]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dtr_fn_get_days_covered]
(
	@dtr_date_from datetime,
	@dtr_date_until datetime
)
RETURNS @days TABLE
(
	days_covered int,
	saturdays int,
	sundays int
)
AS
BEGIN
	-- this function returns both the number of days, Saturdays and Sundays
	-- alternatively, DATEDIFF can be used to get the number of days
	-- however, instead of using another function (in this case DATEDIFF), this function has been utilised

	declare @days_covered int = 0,
		    @saturdays int = 0,
			@sundays int = 0,
	        @d datetime

	set @d = @dtr_date_from
	
	while @d <= @dtr_date_until
	begin
	  if datename(dw, @d) = 'Sunday'
		set @sundays = @sundays + 1

	  if datename(dw, @d) = 'Saturday'
	    set @saturdays = @saturdays + 1 

	  set @d = dateadd(dd, 1, @d)

	  set @days_covered = @days_covered + 1
	end 

	insert @days
	select @days_covered,
	       @saturdays,
		   @sundays

	return
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Alter Function [dbo].[dtr_fn_get_total_hours]
Print 'Alter Function [dbo].[dtr_fn_get_total_hours]'
GO

ALTER FUNCTION [dbo].[dtr_fn_get_total_hours]
(
	@time_in time,
	@time_out time,
	@dtr_date datetime
)
RETURNS decimal(4,2)
AS
BEGIN
	declare @total_hours decimal(4,2)

	-- constants for min and max login/out times
	declare @LOGIN_AM time(0),
			@LOGIN_AM_PLUS_ALLOWANCE time(0),
	        @LOGIN_PM time(0),
			@LOGIN_PM_PLUS_ALLOWANCE time(0),
			@LOGOUT_AM time(0),
			@LOGOUT_PM time(0)

	-- NOTE:
	-- starting OCTOBER 2015 work shift has been changed from 8:00 - 12:00 to 8:30 - 12:00 in the morning
	-- and from 1:00 - 5:00 to 1:00 - 5:30 in the afternoon
	if (@dtr_date < '2015-10-01') or (DATEPART(DW, @dtr_date) = 7)
	begin
		set @LOGIN_AM = '08:00:00'
		set @LOGIN_AM_PLUS_ALLOWANCE = '08:11:00'
		set @LOGOUT_AM = '12:00:00'
		set @LOGIN_PM = '13:00:00'
		set @LOGIN_PM_PLUS_ALLOWANCE = '13:11:00'
		set @LOGOUT_PM = '17:00:00'
	end
	else
	begin
		set @LOGIN_AM = '08:30:00'
		set @LOGIN_AM_PLUS_ALLOWANCE = '08:41:00'
		set @LOGOUT_AM = '12:00:00'
		set @LOGIN_PM = '13:00:00'
		set @LOGIN_PM_PLUS_ALLOWANCE = '13:11:00'
		set @LOGOUT_PM = '17:30:00'
	end

	-- morning
	if (@time_in < @LOGOUT_AM) --'12:00:00')
	begin
		if (@time_in < @LOGIN_AM_PLUS_ALLOWANCE) --'08:11:00')
			set @time_in = @LOGIN_AM --'08:00:00'
		
		if (isnull(@time_out,@time_in) > @LOGOUT_AM) -- '12:00:00')
			set @time_out = @LOGOUT_AM -- '12:00:00'
		else if (isnull(@time_out,@time_in) < @LOGIN_AM_PLUS_ALLOWANCE) -- '08:11:00')
			set @time_out = @time_in
	end	
	else
	-- afternoon
	begin 
		if (@time_in < @LOGIN_PM_PLUS_ALLOWANCE) --'13:11:00')
			set @time_in = @LOGIN_PM -- '13:00:00'
		else if (@time_in > @LOGOUT_PM) -- '17:00:00')
			set @time_in = @LOGOUT_PM -- '17:00:00'	
			
		if (isnull(@time_out,@time_in) > @LOGOUT_PM) -- '17:00:00')
			set @time_out = @LOGOUT_PM -- '17:00:00'
		else if (isnull(@time_out,@time_in) < @LOGIN_PM_PLUS_ALLOWANCE) -- '13:11:00')
			set @time_out = @time_in
	end
	
	set @total_hours = DATEDIFF(minute,@time_in,isnull(@time_out,@time_in)) / 60.0

	return isnull(@total_hours,0)
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_blood_types]
Print 'Create Procedure [dbo].[hris_dd_get_blood_types]'
GO
CREATE PROCEDURE [dbo].[hris_dd_get_blood_types]
AS
BEGIN
	declare @temp_blood_types table(
		value char(2),
		display varchar(12)
	)
	
	insert @temp_blood_types
	select 'AA','Type A'
	union
	select 'AB','Type AB'
	union
	select 'BB','Type B'
	union
	select 'OO','Type O'
	
	select * 
	  from @temp_blood_types
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_civil_status]
Print 'Create Procedure [dbo].[hris_dd_get_civil_status]'
GO
CREATE PROCEDURE [dbo].[hris_dd_get_civil_status]
AS
BEGIN
	declare @temp_civil_status table(
		value char(3),
		display varchar(12)
	)
	
	insert @temp_civil_status
	select 'SGL','Single'
	union
	select 'MRD','Married'
	union
	select 'SEP','Separated'
	union
	select 'WDW','Widowed'
	
	select * 
	  from @temp_civil_status
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_am_pm]
Print 'Create Procedure [dbo].[hris_dd_get_am_pm]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_am_pm]
AS
BEGIN
	select 'A' value, 
	       'AM' display
	union
	select 'P' value,
	       'PM' display
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_gender]
Print 'Create Procedure [dbo].[hris_dd_get_gender]'
GO
CREATE PROCEDURE [dbo].[hris_dd_get_gender]
AS
BEGIN
	declare @temp_gender table(
		value char(1),
		display varchar(12)
	)
	
	insert @temp_gender
	select 'M','Male'
	union
	select 'F','Female'
	
	select * 
	  from @temp_gender
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[t_leavereason]
Print 'Create Table [dbo].[t_leavereason]'
GO
CREATE TABLE [dbo].[t_leavereason] (
		[leavereason_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavereason_name]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavereason_description]     [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[parent_reason_code]          [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[leavetype_code]              [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_t_leavereason to [dbo].[t_leavereason]
Print 'Add Primary Key PK_t_leavereason to [dbo].[t_leavereason]'
GO
ALTER TABLE [dbo].[t_leavereason]
	ADD
	CONSTRAINT [PK_t_leavereason]
	PRIMARY KEY
	CLUSTERED
	([leavereason_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[t_leavereason] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[location]
Print 'Create Table [dbo].[location]'
GO
CREATE TABLE [dbo].[location] (
		[location_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[location_name]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[location_address]         [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[location_landline_no]     [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[location_mobile_no]       [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[location_email]           [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[locationtype_code]        [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[area_code]                [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[is_inactive]              [smallint] NOT NULL,
		[parent_location_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_location to [dbo].[location]
Print 'Add Primary Key PK_location to [dbo].[location]'
GO
ALTER TABLE [dbo].[location]
	ADD
	CONSTRAINT [PK_location]
	PRIMARY KEY
	CLUSTERED
	([location_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_location_is_inactive to [dbo].[location]
Print 'Add Default Constraint DF_location_is_inactive to [dbo].[location]'
GO
ALTER TABLE [dbo].[location]
	ADD
	CONSTRAINT [DF_location_is_inactive]
	DEFAULT ((0)) FOR [is_inactive]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[location] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[roster]
Print 'Create Table [dbo].[roster]'
GO
CREATE TABLE [dbo].[roster] (
		[roster_id]              [int] IDENTITY(1, 1) NOT NULL,
		[loc_dep_code]           [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[resource_type_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[roster_date]            [date] NOT NULL,
		[rosterstatus_code]      [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_by]             [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]           [datetime] NOT NULL,
		[initialised_by]         [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[initialised_date]       [datetime] NULL,
		[finalised_by]           [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[finalised_date]         [datetime] NULL,
		[syncstatus_code]        [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_roster to [dbo].[roster]
Print 'Add Primary Key PK_roster to [dbo].[roster]'
GO
ALTER TABLE [dbo].[roster]
	ADD
	CONSTRAINT [PK_roster]
	PRIMARY KEY
	CLUSTERED
	([roster_id], [loc_dep_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_roster_created_date_1 to [dbo].[roster]
Print 'Add Default Constraint DF_roster_created_date_1 to [dbo].[roster]'
GO
ALTER TABLE [dbo].[roster]
	ADD
	CONSTRAINT [DF_roster_created_date_1]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_roster_rosterstatus_code to [dbo].[roster]
Print 'Add Default Constraint DF_roster_rosterstatus_code to [dbo].[roster]'
GO
ALTER TABLE [dbo].[roster]
	ADD
	CONSTRAINT [DF_roster_rosterstatus_code]
	DEFAULT ('RIP') FOR [rosterstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_roster_syncstatus_code_1 to [dbo].[roster]
Print 'Add Default Constraint DF_roster_syncstatus_code_1 to [dbo].[roster]'
GO
ALTER TABLE [dbo].[roster]
	ADD
	CONSTRAINT [DF_roster_syncstatus_code_1]
	DEFAULT ('NS') FOR [syncstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[roster] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_overtime_reasons]
Print 'Create Procedure [dbo].[hris_dd_get_overtime_reasons]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[hris_dd_get_overtime_reasons]
AS
BEGIN
	select ovr.overtime_reason_code,
	       overtime_reason_name
	  from t_overtimereason ovr (nolock)
  order by ovr.overtime_reason_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_override_reasons]
Print 'Create Procedure [dbo].[hris_dd_get_override_reasons]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[hris_dd_get_override_reasons]
AS
BEGIN
	select ovr.override_reason_code,
	       override_reason_name
	  from t_overridereason ovr (nolock)
  order by ovr.override_reason_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_overridereasons]
Print 'Create Procedure [dbo].[hris_get_overridereasons]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[hris_get_overridereasons]
AS
BEGIN
	select *
	  from t_overridereason (nolock) ovr
  order by ovr.override_reason_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_overtime_reasons]
Print 'Create Procedure [dbo].[hris_get_overtime_reasons]'
GO


CREATE PROCEDURE [dbo].[hris_get_overtime_reasons]
AS
BEGIN
	select *
	  from t_overtimereason ot (nolock)
  order by ot.overtime_reason_name
END


GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_leaveapp_status]
Print 'Create Procedure [dbo].[hris_dd_get_leaveapp_status]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_leaveapp_status]
AS
BEGIN
	select leaveappstatus_code,
	       leaveappstatus_name
	  from t_leaveapplicationstatus las (nolock)
  order by las.leaveappstatus_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_leave_types]
Print 'Create Procedure [dbo].[hris_dd_get_leave_types]'
GO
CREATE PROCEDURE [dbo].[hris_dd_get_leave_types]
AS
BEGIN
	select leavetype_code,
		   leavetype_name
	  from t_leavetype lt (nolock)
  order by lt.leavetype_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_leave_status]
Print 'Create Procedure [dbo].[hris_dd_get_leave_status]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_leave_status]
AS
BEGIN
	select ls.leavestatus_code,
	       ls.leavestatus_name
	  from t_leavestatus ls (nolock)
  order by ls.leavestatus_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_undertime_reasons]
Print 'Create Procedure [dbo].[hris_get_undertime_reasons]'
GO


CREATE PROCEDURE [dbo].[hris_get_undertime_reasons]
AS
BEGIN
	select *
	  from t_undertimereason ut (nolock)
  order by ut.undertime_reason_name
END


GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_time_status]
Print 'Create Procedure [dbo].[hris_dd_get_time_status]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_time_status]
AS
BEGIN
	select ts.timestatus_code,
	       ts.timestatus_name
	  from t_timestatus ts (nolock)
  order by ts.timestatus_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_undertime_reasons]
Print 'Create Procedure [dbo].[hris_dd_get_undertime_reasons]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_undertime_reasons]
AS
BEGIN
	select ut.undertime_reason_code,
	       ut.undertime_reason_name
	  from t_undertimereason ut (nolock)
  order by ut.undertime_reason_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_religions]
Print 'Create Procedure [dbo].[hris_dd_get_religions]'
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[hris_dd_get_religions]
AS
BEGIN
	IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 't_religion')) 
	begin 
		select r.religion_id,
			   r.religion_name
		  from t_religion r (nolock)
	  order by r.religion_name	  
	end
	else
	begin
		select null,
		       null
	end
END


GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[dtroverride]
Print 'Create Table [dbo].[dtroverride]'
GO
CREATE TABLE [dbo].[dtroverride] (
		[dtr_date]                 [date] NOT NULL,
		[id_num]                   [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[am_pm]                    [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[location_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[time_in]                  [time](7) NULL,
		[time_out]                 [time](7) NULL,
		[override_reason_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[overriden_by]             [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[override_date]            [datetime] NOT NULL,
		[is_cancelled]             [smallint] NOT NULL,
		[modified_by]              [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]            [datetime] NULL,
		[syncstatus_code]          [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_dtroverride_1 to [dbo].[dtroverride]
Print 'Add Primary Key PK_dtroverride_1 to [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	ADD
	CONSTRAINT [PK_dtroverride_1]
	PRIMARY KEY
	CLUSTERED
	([dtr_date], [id_num], [am_pm])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtroverride_is_cancelled to [dbo].[dtroverride]
Print 'Add Default Constraint DF_dtroverride_is_cancelled to [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	ADD
	CONSTRAINT [DF_dtroverride_is_cancelled]
	DEFAULT ((0)) FOR [is_cancelled]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtroverride_location_code to [dbo].[dtroverride]
Print 'Add Default Constraint DF_dtroverride_location_code to [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	ADD
	CONSTRAINT [DF_dtroverride_location_code]
	DEFAULT ([dbo].[fn_get_sysconfig_value]('LOCATION_CODE')) FOR [location_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtroverride_override_date to [dbo].[dtroverride]
Print 'Add Default Constraint DF_dtroverride_override_date to [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	ADD
	CONSTRAINT [DF_dtroverride_override_date]
	DEFAULT (getdate()) FOR [override_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtroverride_syncstatus_code to [dbo].[dtroverride]
Print 'Add Default Constraint DF_dtroverride_syncstatus_code to [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	ADD
	CONSTRAINT [DF_dtroverride_syncstatus_code]
	DEFAULT ('NS') FOR [syncstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[dtroverride] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[paf]
Print 'Create Table [dbo].[paf]'
GO
CREATE TABLE [dbo].[paf] (
		[paf_id]              [int] IDENTITY(1, 1) NOT NULL,
		[effective_date]      [datetime] NOT NULL,
		[effective_until]     [datetime] NULL,
		[id_num]              [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[salary]              [decimal](10, 2) NULL,
		[position_code]       [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[empstatus_code]      [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[posstatus_code]      [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[location_code]       [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[paf_remarks]         [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[rank_movement]       [smallint] NOT NULL,
		[is_cancelled]        [smallint] NOT NULL,
		[frequency_code]      [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[created_by]          [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[created_date]        [datetime] NULL,
		[modified_by]         [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]       [datetime] NULL,
		[department_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_paf to [dbo].[paf]
Print 'Add Primary Key PK_paf to [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	ADD
	CONSTRAINT [PK_paf]
	PRIMARY KEY
	CLUSTERED
	([paf_id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_paf_is_cancelled to [dbo].[paf]
Print 'Add Default Constraint DF_paf_is_cancelled to [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	ADD
	CONSTRAINT [DF_paf_is_cancelled]
	DEFAULT ((0)) FOR [is_cancelled]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_paf_rank_movement to [dbo].[paf]
Print 'Add Default Constraint DF_paf_rank_movement to [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	ADD
	CONSTRAINT [DF_paf_rank_movement]
	DEFAULT ((0)) FOR [rank_movement]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[paf] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Function [dbo].[dtr_fn_get_location_code]
Print 'Create Function [dbo].[dtr_fn_get_location_code]'
GO

CREATE FUNCTION [dbo].[dtr_fn_get_location_code]
(
)
RETURNS char(3)
AS
BEGIN
	declare	@location_code char(3)
			
	set @location_code = dbo.fn_get_sysconfig_value('LOCATION_CODE')
    	
	return @location_code
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_roster]
Print 'Create Procedure [dbo].[dtr_get_roster]'
GO

CREATE PROCEDURE [dbo].[dtr_get_roster]
	@first_day datetime,
	@loc_dep_code char(3),
	@resource_type_code char(3)
AS
BEGIN
	declare @last_day datetime
	
	set @last_day = DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,@first_day)+1,0))
	
	-- get all days
	;WITH saturdays AS 
	(
		select @first_day as currDate
		
		union all
		
		select dateadd(d, 1 ,saturdays.currDate)
		  from saturdays
		 where dateadd(d,1,saturdays.currDate) < @last_day
	)

	select s.currDate,
	       ISNULL(r.roster_id,-1) roster_id,
	       ISNULL(r.rosterstatus_code,'RIP') rosterstatus_code,
	       r.*
	  from saturdays s
 left join (select *
              from roster rs (nolock)
             where (rs.roster_date 
           between @first_day
               and @last_day)
               and rs.loc_dep_code = @loc_dep_code
			   and rs.resource_type_code = @resource_type_code) r
        on r.roster_date = s.currDate
	 where datepart(WEEKDAY,currDate) = 7

	OPTION (MaxRecursion 32)
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_change_roster_status]
Print 'Create Procedure [dbo].[dtr_change_roster_status]'
GO

CREATE PROCEDURE [dbo].[dtr_change_roster_status]
	@roster_date_from datetime,
	@roster_date_until datetime,
	@loc_dep_code char(3),
	@resource_type_code char(3),
	@roster_status_code char(3),
	@id_num varchar(12)
AS
BEGIN
	if @roster_status_code = 'INI'
	begin
		update roster
		   set rosterstatus_code = @roster_status_code,
			   initialised_by = @id_num,
			   initialised_date = GETDATE()
		 where roster_date 
	   between @roster_date_from
		   and @roster_date_until
		   and resource_type_code = @resource_type_code
		   and loc_dep_code = @loc_dep_code
    end
    else if @roster_status_code = 'FIN'
	begin
		update roster
		   set rosterstatus_code = @roster_status_code,
			   finalised_by = @id_num,
			   finalised_date = GETDATE()
		 where roster_date 
	   between @roster_date_from
		   and @roster_date_until
		   and resource_type_code = @resource_type_code
		   and loc_dep_code = @loc_dep_code
    end
END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_leave_reasons]
Print 'Create Procedure [dbo].[hris_dd_get_leave_reasons]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_leave_reasons]
AS
BEGIN
	select lr.leavereason_code,
	       lr.leavereason_name,
	       (lr.leavereason_code + ' - ' + lr.leavereason_name) leavereason_name_long
	  from t_leavereason lr (nolock)
  order by lr.leavereason_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_employee]
Print 'Create Procedure [dbo].[hris_get_employee]'
GO
CREATE PROCEDURE [dbo].[hris_get_employee]
	@id_num varchar(12)
AS
BEGIN
	select *
	  from employee e (nolock)
	 where e.id_num = @id_num
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_dd_get_resource_types]
Print 'Create Procedure [dbo].[hris_dd_get_resource_types]'
GO

CREATE PROCEDURE [dbo].[hris_dd_get_resource_types]
AS
BEGIN
	declare @resourceType table
	(
		resource_type char(3),
		code char(3),
		name varchar(50)
	)
	
	insert into @resourceType
	select 'LOC' resource_type,
	       l.location_code code,
		   l.location_name name
	  from location l (nolock)
	 where l.locationtype_code <> 'SVR'	

	 union

	select 'DEP' resource_type,
		    d.department_code code,
			d.department_name + ' (DEPARTMENT)' name
		from department d (nolock)	
	
	-- return
	select *
	  from @resourceType
  order by name

END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[rosterdetail]
Print 'Create Table [dbo].[rosterdetail]'
GO
CREATE TABLE [dbo].[rosterdetail] (
		[rd_id]                   [int] IDENTITY(1, 1) NOT NULL,
		[remote_rd_id]            [int] NULL,
		[roster_id]               [int] NOT NULL,
		[loc_dep_code]            [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[id_num]                  [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[parent_roster_id]        [int] NULL,
		[change_reason]           [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[roster_remarks]          [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[created_by]              [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]            [datetime] NOT NULL,
		[rdstatus_code]           [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[status_changed_by]       [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[status_changed_date]     [datetime] NULL,
		[syncstatus_code]         [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_rosterdetail_1 to [dbo].[rosterdetail]
Print 'Add Primary Key PK_rosterdetail_1 to [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	ADD
	CONSTRAINT [PK_rosterdetail_1]
	PRIMARY KEY
	CLUSTERED
	([rd_id])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_roster_created_date to [dbo].[rosterdetail]
Print 'Add Default Constraint DF_roster_created_date to [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	ADD
	CONSTRAINT [DF_roster_created_date]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_roster_syncstatus_code to [dbo].[rosterdetail]
Print 'Add Default Constraint DF_roster_syncstatus_code to [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	ADD
	CONSTRAINT [DF_roster_syncstatus_code]
	DEFAULT ('NS') FOR [syncstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_rosterdetail_rdstatus_code to [dbo].[rosterdetail]
Print 'Add Default Constraint DF_rosterdetail_rdstatus_code to [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	ADD
	CONSTRAINT [DF_rosterdetail_rdstatus_code]
	DEFAULT ('ACT') FOR [rdstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[rosterdetail] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[leave]
Print 'Create Table [dbo].[leave]'
GO
CREATE TABLE [dbo].[leave] (
		[leave_id]                   [int] IDENTITY(1, 1) NOT NULL,
		[location_code]              [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leave_application_date]     [datetime] NOT NULL,
		[id_num]                     [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavetype_code]             [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[justification]              [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[leaveappstatus_code]        [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leave_remarks]              [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[created_by]                 [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]               [datetime] NOT NULL,
		[modified_by]                [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]              [datetime] NULL,
		[status_changed_by]          [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[status_changed_date]        [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_leave to [dbo].[leave]
Print 'Add Primary Key PK_leave to [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	ADD
	CONSTRAINT [PK_leave]
	PRIMARY KEY
	CLUSTERED
	([leave_id], [location_code])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_leave_created_date to [dbo].[leave]
Print 'Add Default Constraint DF_leave_created_date to [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	ADD
	CONSTRAINT [DF_leave_created_date]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_leave_location_code to [dbo].[leave]
Print 'Add Default Constraint DF_leave_location_code to [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	ADD
	CONSTRAINT [DF_leave_location_code]
	DEFAULT ([dbo].[fn_get_sysconfig_value]('LOCATION_CODE')) FOR [location_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[leave] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[dtrovertime]
Print 'Create Table [dbo].[dtrovertime]'
GO
CREATE TABLE [dbo].[dtrovertime] (
		[dtr_date]                 [date] NOT NULL,
		[id_num]                   [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[time_from]                [time](7) NOT NULL,
		[time_until]               [time](7) NOT NULL,
		[overtime_reason_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_by]               [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]             [datetime] NOT NULL,
		[modified_by]              [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]            [datetime] NULL,
		[syncstatus_code]          [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[timestatus_code]          [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[status_changed_by]        [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[status_changed_date]      [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_dtrovertime to [dbo].[dtrovertime]
Print 'Add Primary Key PK_dtrovertime to [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	ADD
	CONSTRAINT [PK_dtrovertime]
	PRIMARY KEY
	CLUSTERED
	([dtr_date], [id_num])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrovertime_created_date to [dbo].[dtrovertime]
Print 'Add Default Constraint DF_dtrovertime_created_date to [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	ADD
	CONSTRAINT [DF_dtrovertime_created_date]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrovertime_syncstatus_code to [dbo].[dtrovertime]
Print 'Add Default Constraint DF_dtrovertime_syncstatus_code to [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	ADD
	CONSTRAINT [DF_dtrovertime_syncstatus_code]
	DEFAULT ('NS') FOR [syncstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrovertime_timestatus_code to [dbo].[dtrovertime]
Print 'Add Default Constraint DF_dtrovertime_timestatus_code to [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	ADD
	CONSTRAINT [DF_dtrovertime_timestatus_code]
	DEFAULT ('PND') FOR [timestatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[dtrovertime] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[dtrundertime]
Print 'Create Table [dbo].[dtrundertime]'
GO
CREATE TABLE [dbo].[dtrundertime] (
		[dtr_date]                  [date] NOT NULL,
		[id_num]                    [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[time_from]                 [time](7) NOT NULL,
		[time_until]                [time](7) NOT NULL,
		[undertime_reason_code]     [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_by]                [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]              [datetime] NOT NULL,
		[modified_by]               [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]             [datetime] NULL,
		[syncstatus_code]           [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[timestatus_code]           [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[status_changed_by]         [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[status_changed_date]       [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_dtrundertime to [dbo].[dtrundertime]
Print 'Add Primary Key PK_dtrundertime to [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	ADD
	CONSTRAINT [PK_dtrundertime]
	PRIMARY KEY
	CLUSTERED
	([dtr_date], [id_num])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrundertime_created_date to [dbo].[dtrundertime]
Print 'Add Default Constraint DF_dtrundertime_created_date to [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	ADD
	CONSTRAINT [DF_dtrundertime_created_date]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrundertime_syncstatus_code to [dbo].[dtrundertime]
Print 'Add Default Constraint DF_dtrundertime_syncstatus_code to [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	ADD
	CONSTRAINT [DF_dtrundertime_syncstatus_code]
	DEFAULT ('NS') FOR [syncstatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_dtrundertime_timestatus_code to [dbo].[dtrundertime]
Print 'Add Default Constraint DF_dtrundertime_timestatus_code to [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	ADD
	CONSTRAINT [DF_dtrundertime_timestatus_code]
	DEFAULT ('PND') FOR [timestatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[dtrundertime] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Function [dbo].[paf_fn_active_employees]
Print 'Create Function [dbo].[paf_fn_active_employees]'
GO

CREATE FUNCTION [dbo].[paf_fn_active_employees]
(
	-- Add the parameters for the function here
	@dtr_date_from datetime,
	@dtr_date_until datetime
)
RETURNS @employee TABLE 
(
	id_num varchar(12) primary key,
	employee_name varchar(250),
	location_code char(3),
	salary decimal(10,2),
	frequency_code char(3),
	paf_id int,
	department_code char(3)
)
AS
BEGIN
	insert @employee
	select e.id_num,
	       (e.employee_lastname + ', ' + e.employee_firstname) employee_name,
		   location_code,
		   salary,
		   frequency_code,
		   paf_id,
		   department_code
	  from paf p (nolock)
	  join employee e (nolock)
	    on e.id_num = p.id_num
     where (
		   ((p.effective_until is null) and (p.effective_date between @dtr_date_from and @dtr_date_until))
		or ((p.effective_until is null) and (p.effective_date <= @dtr_date_from))
	    or ((p.effective_until is not null) and (@dtr_date_until <= p.effective_until) and (@dtr_date_from >= p.effective_date))
		or ((p.effective_until is not null) and (@dtr_date_until <= p.effective_until) and (p.effective_date between @dtr_date_from and @dtr_date_until))
		   )
	   and isnull(p.is_cancelled,0) = 0 

	return
END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Function [dbo].[dtr_fn_get_dtr]
Print 'Create Function [dbo].[dtr_fn_get_dtr]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION dbo.dtr_fn_get_dtr
(
    -- Add the parameters for the function here
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12) = null
)
RETURNS @dtr TABLE 
(
	id_num varchar(12),
	dtr_date datetime,
	time_in_am time,
	time_out_am time,
	time_in_pm time,
	time_out_pm time,
	total_hours_am decimal(4,2),
	total_hours_pm decimal(4,2),
	location_code char(3)
)
AS
BEGIN
	insert @dtr
	select d_am.id_num,
		   d_am.dtr_date,
		   d_am.time_in as time_in_am,
		   d_am.time_out as time_out_am,
		   d_pm.time_in as time_in_pm,
		   d_pm.time_out as time_out_pm,
		   dbo.dtr_fn_get_total_hours(d_am.time_in,d_am.time_out, @dtr_date_until) total_hours_am,
		   dbo.dtr_fn_get_total_hours(d_pm.time_in,d_pm.time_out, @dtr_date_until) total_hours_pm,
		   d_am.location_code
	  from dtr d_am (nolock)
 left join (select dtr_id,
                   dtr_date,
				   id_num,
                   time_in,
                   time_out 
			  from dtr d (nolock)
			 where d.dtr_date between @dtr_date_from and @dtr_date_until
			   and d.time_in >= '12:00:00') d_pm 
		on d_pm.id_num = d_am.id_num
	   and d_pm.dtr_date = d_am.dtr_date
     where d_am.dtr_date between @dtr_date_from and @dtr_date_until
       and d_am.time_in < '12:00:00'
	   and ((isnull(@id_num,'') = '') or (d_am.id_num = @id_num))
  
	-- afternoon log
	-- without morning log
	insert @dtr
	select d_pm_only.id_num,
	       d_pm_only.dtr_date,
		   null as time_in_am,
		   null as time_out_am,
		   d_pm_only.time_in as time_in_pm,
		   d_pm_only.time_out as time_out_pm,
		   0 total_hours_am,
		   dbo.dtr_fn_get_total_hours(d_pm_only.time_in,d_pm_only.time_out, @dtr_date_until) d_pm_only,
		   d_pm_only.location_code
	  from dtr d_pm_only (nolock)
	  join employee e (nolock) 
	    on e.id_num = d_pm_only.id_num
	 where d_pm_only.dtr_date between @dtr_date_from and @dtr_date_until
   	   and d_pm_only.time_in > '12:00:00'
	   and not exists (select 1 
						 from @dtr d  
						where d.id_num = e.id_num) 
	   and ((isnull(@id_num,'') = '') or (d_pm_only.id_num = @id_num))
	
	return 
END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_override_by_date_am]
Print 'Create Procedure [dbo].[dtr_get_override_by_date_am]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dtr_get_override_by_date_am]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12)
AS
BEGIN
	select *
	  from dtroverride dto (nolock)
	 where dto.dtr_date between @dtr_date_from and @dtr_date_until
	   and ((isnull(@id_num,'') = '') or (dto.id_num = @id_num ))
	   and dto.am_pm = 'A'
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_override_by_date_pm]
Print 'Create Procedure [dbo].[dtr_get_override_by_date_pm]'
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dtr_get_override_by_date_pm]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12)
AS
BEGIN
	select *
	  from dtroverride dto (nolock)
	 where dto.dtr_date between @dtr_date_from and @dtr_date_until
	   and ((isnull(@id_num,'') = '') or (dto.id_num = @id_num ))
	   and dto.am_pm = 'P'
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_employees]
Print 'Create Procedure [dbo].[dtr_get_employees]'
GO

CREATE PROCEDURE [dbo].[dtr_get_employees]
	@dtr_date_from datetime,
	@dtr_date_until datetime
AS
BEGIN
    declare @monthsPrevious int

	-- set the number of months back of employee dtr records
	-- e.g. -1 means employees with dtr records for the last month, -2 means for the last 2 months, etc.
	set @monthsPrevious = -2
		 
	-- result 
	select distinct e.id_num,
	       (e.employee_lastname + ', ' + e.employee_firstname) employee_name
	  from dtr d (nolock)
	  join employee e (nolock)
	    on e.id_num = d.id_num
     where d.dtr_date 
   between DATEADD(m, @monthsPrevious, @dtr_date_from) 
       and @dtr_date_until
  order by employee_name  
  
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Alter Procedure [dbo].[dtr_log_time]
Print 'Alter Procedure [dbo].[dtr_log_time]'
GO


ALTER PROCEDURE [dbo].[dtr_log_time]
	@id_num varchar(12),
	@dtr_snapshot varchar(250)
AS
BEGIN
    declare @current_date datetime
	declare @dtr_date date
	declare @dtr_time time(0)
	declare @logged integer
	declare @orphaned integer
	declare @post_message varchar(100) = 'Time posted successfully.'
	declare @log_status varchar(10)
	declare @min_timeout_interval decimal(4,2)
	declare @total_hours decimal(4,2)
	declare @log_complete smallint = 0

	-- constants for min and max login/out times
	declare @LOGIN_AM time(0),
	        @LOGIN_PM time(0),
			@LOGOUT_AM time(0),
			@LOGOUT_PM time(0)

	-- get current date
	set @current_date = GETDATE()

	-- get times
	select @LOGIN_AM = LOGIN_AM,
			@LOGOUT_AM = LOGOUT_AM,
			@LOGIN_PM = LOGIN_PM,
			@LOGOUT_PM = LOGOUT_PM
		from dbo.dtr_fn_get_times(@current_date)
	
	-- get DTR date
	set @dtr_date = CONVERT(date, @current_date, 101)
	-- get current time
	set @dtr_time = CONVERT(time, @current_date)
	-- get minimum timeout
	set @min_timeout_interval = isnull(dbo.fn_get_sysconfig_value('MIN_TIMEOUT_INTERVAL'),0) / 60.0
	
	-- check if current date's log is complete
	-- meaning employee has logged his/her time
	-- employee can only have 2 "logs" per day
	-- for both AM and PM 
	select @logged = COUNT(dtr_id)
	  from dtr d (nolock)
	 where d.dtr_date = @dtr_date
	   and d.id_num = @id_num
	
	-- if not logged, INSERT or UPDATE dtr
	-- UPDATE completes the time log
	-- sets the "time_out" field of the orphaned "time_in" field 
	-- conditions: 0 = no log yet (INSERT), 1 or 2 = logged already (INSERT or UPDATE)
	if @logged = 0 and @dtr_time < @LOGOUT_PM --'17:00:00'
	begin
	  insert 
	    into dtr
			 (dtr_date,
			 id_num,
			 time_in,
			 time_out,
			 dtr_snapshot_in,
			 dtr_snapshot_out,
			 dtr_remarks) 
	  values (@dtr_date
			 ,@id_num
			 ,@dtr_time
			 ,null
			 ,@dtr_snapshot
			 ,null
			 ,null)
			 
	  -- log status
	  set @log_status = 'IN'
	  set @post_message = 'In - ' + CONVERT(VARCHAR,@dtr_time,100) + ' ' --+ LOWER(SUBSTRING(CONVERT(VARCHAR(30), @current_date, 9), 25, 2)) 
	end
	else if @logged <= 2
	begin 
	  -- check for orphaned record then UPDATE, otherwise INSERT
	  select @orphaned = COUNT(dtr_id)
	    from dtr d (nolock)
	   where d.dtr_date = @dtr_date
	     and d.id_num = @id_num
	     and d.time_out is null 
	  
	  -- get total hours
	  -- total hours is used to compare
	  -- with interval..do not allow to log time if hours is less than interval
	  select @total_hours = DATEDIFF(minute,d.time_in,@dtr_time) / 60.0
	    from dtr d (nolock)
	   where d.dtr_date = @dtr_date
	     and d.id_num = @id_num 
	     and d.time_out is null
	     
	  -- check if afternoon log is complete
	  -- do not allow to log time if afternoon log is complete
	  select @log_complete = COUNT(dtr_id)
	    from dtr d (nolock)
	   where d.dtr_date = @dtr_date
	     and d.id_num = @id_num
	     and d.time_in > @LOGOUT_AM --'12:00:00'
	     and d.time_out is not null
	     
	  -- there is no orphaned record
	  -- AM time log is complete
	  -- create log for PM 
	  if @orphaned = 0 and @logged = 1 and @log_complete = 0
	  begin
		  insert 
			into dtr 
				 (dtr_date,
				 id_num,
				 time_in,
				 time_out,
				 dtr_snapshot_in,
				 dtr_snapshot_out,
				 dtr_remarks)
		  values (@dtr_date
				 ,@id_num
				 ,@dtr_time
				 ,null
				 ,@dtr_snapshot
				 ,null
				 ,null)
				 
		-- log status
	    set @log_status = 'IN'
		set @post_message = 'In - ' + CONVERT(VARCHAR,@dtr_time,100) + ' ' --+ LOWER(SUBSTRING(CONVERT(VARCHAR(30), @current_date, 9), 25, 2))  
	  end
	  -- complete the time log
	  -- update "time_out" field
	  else if (@orphaned = 1) 
	   and (@total_hours >= @min_timeout_interval)
	  begin
		update dtr
		   set time_out = @dtr_time,
			   dtr_snapshot_out = @dtr_snapshot
		 where dtr_date = @dtr_date
		   and id_num = @id_num
		   and time_out is null  
		   
		-- log status
	    set @log_status = 'OUT'
		set @post_message = 'Out - ' + CONVERT(VARCHAR,@dtr_time,100) + ' ' --+ LOWER(SUBSTRING(CONVERT(VARCHAR(30), @current_date, 9), 25, 2))  
	  end
	  else
	  begin
	    -- log status
	    set @log_status = 'REJECTED'
	    set @post_message = 'Rejected - '
	  end
	end
	
	-- return
	select (employee_lastname + ', ' + employee_firstname) employee_name
		   ,@post_message post_message
		   ,@log_status log_status
	  from employee e (nolock)
	 where e.id_num = @id_num
END


GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[sec_get_user_rights]
Print 'Create Procedure [dbo].[sec_get_user_rights]'
GO

CREATE PROCEDURE [dbo].[sec_get_user_rights]
	@id_num varchar(12)
AS
BEGIN
	select distinct privilege_code
	  from sysroleprivilege rp (nolock)
	  join sysuserrole ur (nolock) 
	    on ur.role_code = rp.role_code and ur.id_num = @id_num
	  
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[leavedetail]
Print 'Create Table [dbo].[leavedetail]'
GO
CREATE TABLE [dbo].[leavedetail] (
		[leave_id]                [int] NOT NULL,
		[location_code]           [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leave_date]              [datetime] NOT NULL,
		[am_pm]                   [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[is_paid]                 [smallint] NOT NULL,
		[leavestatus_code]        [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leavereason_code]        [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[leave_remarks]           [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[created_by]              [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[created_date]            [datetime] NOT NULL,
		[modified_by]             [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[modified_date]           [datetime] NULL,
		[status_changed_by]       [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[status_changed_date]     [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Primary Key PK_leavedetail_1 to [dbo].[leavedetail]
Print 'Add Primary Key PK_leavedetail_1 to [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	ADD
	CONSTRAINT [PK_leavedetail_1]
	PRIMARY KEY
	CLUSTERED
	([leave_id], [location_code], [leave_date])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_leavedetail_created_date to [dbo].[leavedetail]
Print 'Add Default Constraint DF_leavedetail_created_date to [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	ADD
	CONSTRAINT [DF_leavedetail_created_date]
	DEFAULT (getdate()) FOR [created_date]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_leavedetail_is_paid to [dbo].[leavedetail]
Print 'Add Default Constraint DF_leavedetail_is_paid to [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	ADD
	CONSTRAINT [DF_leavedetail_is_paid]
	DEFAULT ((1)) FOR [is_paid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Add Default Constraint DF_leavedetail_leavestatus_code to [dbo].[leavedetail]
Print 'Add Default Constraint DF_leavedetail_leavestatus_code to [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	ADD
	CONSTRAINT [DF_leavedetail_leavestatus_code]
	DEFAULT ('PND') FOR [leavestatus_code]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[leavedetail] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_overtime]
Print 'Create Procedure [dbo].[dtr_get_overtime]'
GO

CREATE PROCEDURE [dbo].[dtr_get_overtime]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12)
AS
BEGIN
	select *
	  from dtrovertime dov (nolock)
	 where dov.dtr_date between @dtr_date_from and @dtr_date_until
	   and ((ISNULL(@id_num,'') = '') or (dov.id_num = @id_num))
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_by_employee]
Print 'Create Procedure [dbo].[dtr_get_by_employee]'
GO

CREATE PROCEDURE [dbo].[dtr_get_by_employee]
	@id_num varchar(12),
	@dtr_date datetime
AS
BEGIN
	select @id_num,
		   (e.employee_lastname + ', ' + e.employee_firstname) employee_name,
		   convert(varchar(12),@dtr_date,107) formatted_dtr_date,
		   fn.*
	  from employee e (nolock)
 left join dbo.dtr_fn_get_dtr(@dtr_date,@dtr_date,@id_num) fn
	    on e.id_num = fn.id_num
     where e.id_num = @id_num
END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_leave]
Print 'Create Procedure [dbo].[hris_get_leave]'
GO

CREATE PROCEDURE dbo.hris_get_leave
	@leave_id integer,
	@location_code char(3)
AS
BEGIN
	select *
	  from leave l (nolock)
	 where l.leave_id = @leave_id
	   and l.location_code = @location_code
END
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_rosterdetail]
Print 'Create Procedure [dbo].[dtr_get_rosterdetail]'
GO

CREATE PROCEDURE [dbo].[dtr_get_rosterdetail]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@loc_dep_code char(3),
	@resource_type_code char(3)
AS
BEGIN
	declare @finalised int
	
	-- get number of finalised records
	-- more than 0 means all are finalised
	-- this sets the "roster cells" to read-only or otherwise
	set @finalised = (select COUNT(1)
	                    from roster r (nolock)
	                   where r.roster_date 
	                 between @dtr_date_from
	                     and @dtr_date_until
	                     and r.loc_dep_code = @loc_dep_code
						 and r.resource_type_code = @resource_type_code
	                     and r.syncstatus_code = 'FIN')
	                     
    -- result
    select distinct e.id_num as dtr_id_num,
           e.employee_name,
           r.*,
           @finalised
      from dbo.paf_fn_active_employees(@dtr_date_from,@dtr_date_until) e 
 left join (select rd.*,
	               rs.roster_date 
              from roster rs  (nolock)
              join rosterdetail rd (nolock)
                on rd.roster_id = rs.roster_id 
               and rd.loc_dep_code = rs.loc_dep_code
             where (rs.roster_date 
           between @dtr_date_from
               and @dtr_date_until)
               and (rd.loc_dep_code = @loc_dep_code)
               and rd.rdstatus_code = 'ACT') r
        on r.id_num = e.id_num
	 where (@resource_type_code = 'LOC' and e.location_code = @loc_dep_code and isnull(e.department_code,'') = '')
	    or (@resource_type_code = 'DEP' and e.department_code = @loc_dep_code)
		-- or (isnull(@resource_type_code,'') = '' and isnull(@loc_dep_code,'') = '')
  order by employee_name
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_undertime]
Print 'Create Procedure [dbo].[dtr_get_undertime]'
GO

CREATE PROCEDURE [dbo].[dtr_get_undertime]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12)
AS
BEGIN
	select *
	  from dtrundertime dut (nolock)
	 where dut.dtr_date between @dtr_date_from and @dtr_date_until
	   and ((ISNULL(@id_num,'') = '') or (dut.id_num = @id_num))
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_leavedetail]
Print 'Create Procedure [dbo].[hris_get_leavedetail]'
GO

CREATE PROCEDURE [dbo].[hris_get_leavedetail]
	@leave_id integer,
	@location_code char(3)
AS
BEGIN
	select *
	  from leavedetail ld (nolock)
	 where ld.leave_id = @leave_id
	   and ld.location_code = @location_code
  order by ld.leave_date
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_change_leave_status]
Print 'Create Procedure [dbo].[hris_change_leave_status]'
GO

CREATE PROCEDURE [dbo].[hris_change_leave_status]
	@leave_id int,
	@location_code char(3),
	@leavestatus_code char(3)
AS
BEGIN
	update leavedetail
	   set leavestatus_code = @leavestatus_code
	 where leave_id = @leave_id
	   and location_code = @location_code  
END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[dtr_get_by_date]
Print 'Create Procedure [dbo].[dtr_get_by_date]'
GO


CREATE PROCEDURE [dbo].[dtr_get_by_date]
	@dtr_date_from datetime,
	@dtr_date_until datetime,
	@id_num varchar(12),
    @location_code char(3) = null,
	@department_code char(3) = null
AS
BEGIN
			create table #dtr
			(
				id_num varchar(12) collate SQL_Latin1_General_CP1_CI_AS,
				employee_name varchar(250),
				dtr_date datetime,
				time_in_am time,
				time_out_am time,
				am_status varchar(15),
    			time_in_pm time,
				time_out_pm time,
				pm_status varchar(15),
				total_hours_am decimal(4,2),
				total_hours_pm decimal(4,2),
				location_code char(3)
				--primary key (id_num, dtr_date)  removed temporarily to allow duplicate records.. check id_num = 231, date = 2015-10-05
			)

			declare @current_date datetime

			set @current_date = getdate()

			-- constants for min and max login/out times
			declare @LOGIN_AM time(0),
					@LOGIN_PM time(0),
					@LOGOUT_AM time(0),
					@LOGOUT_PM time(0)

			-- get times
			select @LOGIN_AM = LOGIN_AM,
				   @LOGOUT_AM = LOGOUT_AM,
				   @LOGIN_PM = LOGIN_PM,
				   @LOGOUT_PM = LOGOUT_PM
			  from dbo.dtr_fn_get_times(@current_date)

			declare @employee table
			(
				id_num varchar(12),
				employee_name varchar(100),
				location_code char(3),
				department_code char(3)
			)

			insert into @employee
			select id_num,
				   employee_name,
				   location_code,
				   department_code
			  from dbo.paf_fn_active_employees(@dtr_date_from,@dtr_date_until)

	
			-- morning log
			-- with or without afternoon log
			insert into #dtr
			select e.id_num,
				   e.employee_name,
				   d_am.dtr_date,
				   d_am.time_in as time_in_am,
				   d_am.time_out as time_out_am,
				   dbo.dtr_fn_get_log_status(d_am.time_in, @current_date) as am_status,
				   d_pm.time_in as time_in_pm,
				   d_pm.time_out as time_out_pm,
				   dbo.dtr_fn_get_log_status(d_pm.time_in, d_am.dtr_date) pm_status,
				   -- ISNULL(DATEDIFF(minute,d_am.time_in,d_am.time_out)/60.0,0) total_hours_am,
				   -- ISNULL(DATEDIFF(minute,d_pm.time_in,d_pm.time_out)/60.0,0) total_hours_pm
				   dbo.dtr_fn_get_total_hours(d_am.time_in,d_am.time_out, d_am.dtr_date) total_hours_am,
				   dbo.dtr_fn_get_total_hours(d_pm.time_in,d_pm.time_out, d_am.dtr_date) total_hours_pm,
				   d_am.location_code
			  from dtr d_am (nolock)
			  join @employee e 
				on e.id_num = d_am.id_num
		 left join (select dtr_id,
						   dtr_date,
						   id_num,
						   time_in,
						   time_out 
					  from dtr d (nolock)
					 where d.dtr_date between @dtr_date_from and @dtr_date_until
					   and d.time_in >= @LOGOUT_AM --'12:00:00'
					   and (ISNULL(@id_num,'') = '' or d.id_num = @id_num)) d_pm 
				on d_pm.id_num = d_am.id_num
			   and d_pm.dtr_date = d_am.dtr_date
			 where d_am.dtr_date between @dtr_date_from and @dtr_date_until
			   and d_am.time_in < @LOGOUT_AM --'12:00:00'
			   and (ISNULL(@id_num,'') = '' or e.id_num = @id_num)
			   and (ISNULL(@location_code,'') = '' or e.location_code = @location_code)
			   and (ISNULL(@department_code,'') = '' or e.department_code = @department_code)
  
		  -- afternoon log
		  -- without morning log
		  insert into #dtr
		  select e.id_num,
				 e.employee_name,
				 d_pm_only.dtr_date,
				 null as time_in_am,
				 null as time_out_am,
				 null as am_status,
				 d_pm_only.time_in as time_in_pm,
				 d_pm_only.time_out as time_out_pm,
				 dbo.dtr_fn_get_log_status(d_pm_only.time_in, d_pm_only.dtr_date) pm_status,
				 0 total_hours_am,
				 -- ISNULL(DATEDIFF(minute,d_pm_only.time_in,d_pm_only.time_out)/60.0,0) d_pm_only,
				 dbo.dtr_fn_get_total_hours(d_pm_only.time_in,d_pm_only.time_out, d_pm_only.dtr_date) d_pm_only,
				 d_pm_only.location_code
			from dtr d_pm_only (nolock)
			join @employee e 
			  on e.id_num = d_pm_only.id_num
		   where d_pm_only.dtr_date between @dtr_date_from and @dtr_date_until
			 and d_pm_only.time_in > @LOGOUT_AM --'12:00:00'
			 and not exists (select 1 
			  				   from #dtr d  
						      where d.id_num = e.id_num)
			 and (ISNULL(@id_num,'') = '' or e.id_num = @id_num)
			 and (ISNULL(@location_code,'') = '' or e.location_code = @location_code)
			 and (ISNULL(@department_code,'') = '' or e.department_code = @department_code)

			-- get override
			select dtr_date override_date,
				   id_num,
				   location_code
			  into #override
			  from dtroverride do (nolock)
			 where do.dtr_date between @dtr_date_from and @dtr_date_until
			 --and isnull(do.is_cancelled,0) = 0
		  group by dtr_date, id_num, location_code

			-- get undertime
			select dtr_date undertime_date,
				   id_num
			  into #undertime
			  from dtrundertime du (nolock)
			 where du.dtr_date between @dtr_date_from and @dtr_date_until
			-- and du.timestatus_code = 'APP'

			-- get leaves
			select leave_date,
				   id_num
			  into #leaves
			  from leavedetail ld (nolock)
			  join leave l (nolock)
				on l.location_code = ld.location_code
			   and l.leave_id = ld.leave_id
			 where ld.leave_date between @dtr_date_from and @dtr_date_until
			   and ld.leavestatus_code = 'APP'

			-- insert overrides with no corresponding log
			insert into #dtr
			select o.id_num,
				   (e.employee_lastname + ', ' + e.employee_firstname) employee_name,
				   o.override_date dtr_date,
				   null time_in_am,
				   null time_out_am,
				   null am_status,
				   null time_in_pm,
				   null time_out_pm,
				   null pm_status,
				   0 total_hours_am,
				   0 total_hours_pm,
				   o.location_code
			  from #override o 
			  join employee e (nolock)
				on e.id_num = o.id_num
		 left join #dtr d 
				on d.id_num = o.id_num
		  	   and d.dtr_date = o.override_date
			 where d.dtr_date is null
			   and o.id_num in (select id_num from #dtr)

			 -- insert undertime with no corresponding log
			insert into #dtr
			select u.id_num,
				   (e.employee_lastname + ', ' + e.employee_firstname) employee_name,
				   u.undertime_date dtr_date,
				   null time_in_am,
				   null time_out_am,
				   null am_status,
				   null time_in_pm,
				   null time_out_pm,
				   null pm_status,
				   0 total_hours_am,
				   0 total_hours_pm,
				   d.location_code
			  from #undertime u 
			  join employee e (nolock)
				on e.id_num = u.id_num
		 left join #dtr d 
				on d.id_num = u.id_num
		  	   and d.dtr_date = u.undertime_date
			 where d.dtr_date is null
			   and u.id_num in (select id_num from #dtr)
	                    
			-- insert leaves with no corresponding log
			insert into #dtr
			select l.id_num,
				   (e.employee_lastname + ', ' + e.employee_firstname) employee_name,
				   l.leave_date dtr_date,
				   null time_in_am,
				   null time_out_am,
				   null am_status,
				   null time_in_pm,
				   null time_out_pm,
				   null pm_status,
				   0 total_hours_am,
				   0 total_hours_pm,
				   d.location_code
			  from #leaves l 
			  join employee e (nolock)
				on e.id_num = l.id_num
		 left join #dtr d 
				on d.id_num = l.id_num
		  	   and d.dtr_date = l.leave_date
			 where d.dtr_date is null
			   and l.id_num in (select id_num from #dtr)

			-- select result
			select d.id_num,
				   d.employee_name,
				   d.dtr_date,
				   isnull(convert(varchar(5),d.time_in_am),'-') time_in_am,
				   isnull(convert(varchar(5),d.time_out_am),'-') time_out_am,
				   d.am_status,
				   isnull(convert(varchar(5),d.time_in_pm),'-') time_in_pm,
				   isnull(convert(varchar(5),d.time_out_pm),'-') time_out_pm,
				   d.pm_status,
				   (total_hours_am + total_hours_pm) total_hours,
				   d.location_code,
				   o.override_date,
				   u.undertime_date,
				   l.leave_date
			  from #dtr d
		 left join #override o
		        on o.override_date = d.dtr_date
			   and o.id_num = d.id_num
		 left join #undertime u
				on u.undertime_date = d.dtr_date
		   	   and u.id_num = d.id_num
		 left join #leaves l
				on l.leave_date = d.dtr_date
		  	   and l.id_num = d.id_num 	
	      order by d.employee_name,
		           d.dtr_date

			drop table #dtr
			drop table #override
			drop table #undertime
			drop table #leaves
     
END


GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[hris_get_leaves]
Print 'Create Procedure [dbo].[hris_get_leaves]'
GO

CREATE PROCEDURE [dbo].[hris_get_leaves]
	@from_date datetime,
	@until_date datetime,
	@id_num varchar(12),
	@location_code char(3) = null,
	@department_code char(3) = null
AS
BEGIN
	declare @employee table
	(
		id_num varchar(12),
		employee_name varchar(100),
		location_code char(3),
		department_code char(3)
	)

	insert into @employee
	select id_num,
		    employee_name,
			location_code,
			department_code
		from dbo.paf_fn_active_employees(@from_date,@until_date)

    select distinct e.id_num as dtr_id_num,
           e.employee_name,
           ll.*
      from @employee e
 left join (select ld.leave_date,
                   l.leave_id,
                   l.location_code,
				   l.leave_application_date,
				   l.id_num,
				   l.leavetype_code,
				   l.justification,
				   l.leaveappstatus_code,
				   l.leave_remarks,
				   l.created_by,
				   l.created_date,
				   l.modified_by,
				   l.modified_date,
				   l.status_changed_by,
				   l.status_changed_date,
				   ld.leavestatus_code
              from leavedetail ld  (nolock)
			  join leave l (nolock) 
			    on l.leave_id = ld.leave_id
			   and l.location_code = ld.location_code
			where ld.leave_date
           between @from_date
               and @until_date) ll
        on ll.id_num = e.id_num 
     where ((isnull(@location_code,'') = '' or (e.location_code = @location_code)))-- location code
	   and ((isnull(@department_code,'') = '' or (e.department_code = @department_code))) -- department code
	   and (isnull(@id_num,'') = '' or e.id_num = @id_num)
  order by employee_name

END

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtroverride_t_overridereason on [dbo].[dtroverride]
Print 'Create Foreign Key FK_dtroverride_t_overridereason on [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	WITH CHECK
	ADD CONSTRAINT [FK_dtroverride_t_overridereason]
	FOREIGN KEY ([override_reason_code]) REFERENCES [dbo].[t_overridereason] ([override_reason_code])
ALTER TABLE [dbo].[dtroverride]
	CHECK CONSTRAINT [FK_dtroverride_t_overridereason]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtroverride_t_syncstatus on [dbo].[dtroverride]
Print 'Create Foreign Key FK_dtroverride_t_syncstatus on [dbo].[dtroverride]'
GO
ALTER TABLE [dbo].[dtroverride]
	WITH CHECK
	ADD CONSTRAINT [FK_dtroverride_t_syncstatus]
	FOREIGN KEY ([syncstatus_code]) REFERENCES [dbo].[t_syncstatus] ([syncstatus_code])
ALTER TABLE [dbo].[dtroverride]
	CHECK CONSTRAINT [FK_dtroverride_t_syncstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_employee on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_employee on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_employee]
	FOREIGN KEY ([id_num]) REFERENCES [dbo].[employee] ([id_num])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_employee]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_sysuser on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_sysuser on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_sysuser]
	FOREIGN KEY ([created_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_sysuser]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_sysuser1 on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_sysuser1 on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_sysuser1]
	FOREIGN KEY ([modified_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_sysuser1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_sysuser2 on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_sysuser2 on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_sysuser2]
	FOREIGN KEY ([status_changed_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_sysuser2]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_t_overtimereason on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_t_overtimereason on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_t_overtimereason]
	FOREIGN KEY ([overtime_reason_code]) REFERENCES [dbo].[t_overtimereason] ([overtime_reason_code])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_t_overtimereason]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_t_syncstatus on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_t_syncstatus on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_t_syncstatus]
	FOREIGN KEY ([syncstatus_code]) REFERENCES [dbo].[t_syncstatus] ([syncstatus_code])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_t_syncstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrovertime_t_timestatus on [dbo].[dtrovertime]
Print 'Create Foreign Key FK_dtrovertime_t_timestatus on [dbo].[dtrovertime]'
GO
ALTER TABLE [dbo].[dtrovertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrovertime_t_timestatus]
	FOREIGN KEY ([timestatus_code]) REFERENCES [dbo].[t_timestatus] ([timestatus_code])
ALTER TABLE [dbo].[dtrovertime]
	CHECK CONSTRAINT [FK_dtrovertime_t_timestatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_employee on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_employee on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_employee]
	FOREIGN KEY ([id_num]) REFERENCES [dbo].[employee] ([id_num])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_employee]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_sysuser on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_sysuser on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_sysuser]
	FOREIGN KEY ([created_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_sysuser]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_sysuser1 on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_sysuser1 on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_sysuser1]
	FOREIGN KEY ([modified_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_sysuser1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_sysuser2 on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_sysuser2 on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_sysuser2]
	FOREIGN KEY ([status_changed_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_sysuser2]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_t_syncstatus on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_t_syncstatus on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_t_syncstatus]
	FOREIGN KEY ([syncstatus_code]) REFERENCES [dbo].[t_syncstatus] ([syncstatus_code])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_t_syncstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_t_timestatus on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_t_timestatus on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_t_timestatus]
	FOREIGN KEY ([timestatus_code]) REFERENCES [dbo].[t_timestatus] ([timestatus_code])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_t_timestatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_dtrundertime_t_undertimereason on [dbo].[dtrundertime]
Print 'Create Foreign Key FK_dtrundertime_t_undertimereason on [dbo].[dtrundertime]'
GO
ALTER TABLE [dbo].[dtrundertime]
	WITH CHECK
	ADD CONSTRAINT [FK_dtrundertime_t_undertimereason]
	FOREIGN KEY ([undertime_reason_code]) REFERENCES [dbo].[t_undertimereason] ([undertime_reason_code])
ALTER TABLE [dbo].[dtrundertime]
	CHECK CONSTRAINT [FK_dtrundertime_t_undertimereason]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leave_employee on [dbo].[leave]
Print 'Create Foreign Key FK_leave_employee on [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	WITH CHECK
	ADD CONSTRAINT [FK_leave_employee]
	FOREIGN KEY ([id_num]) REFERENCES [dbo].[employee] ([id_num])
ALTER TABLE [dbo].[leave]
	CHECK CONSTRAINT [FK_leave_employee]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leave_sysuser on [dbo].[leave]
Print 'Create Foreign Key FK_leave_sysuser on [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	WITH CHECK
	ADD CONSTRAINT [FK_leave_sysuser]
	FOREIGN KEY ([created_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leave]
	CHECK CONSTRAINT [FK_leave_sysuser]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leave_sysuser1 on [dbo].[leave]
Print 'Create Foreign Key FK_leave_sysuser1 on [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	WITH CHECK
	ADD CONSTRAINT [FK_leave_sysuser1]
	FOREIGN KEY ([modified_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leave]
	CHECK CONSTRAINT [FK_leave_sysuser1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leave_sysuser2 on [dbo].[leave]
Print 'Create Foreign Key FK_leave_sysuser2 on [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	WITH CHECK
	ADD CONSTRAINT [FK_leave_sysuser2]
	FOREIGN KEY ([status_changed_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leave]
	CHECK CONSTRAINT [FK_leave_sysuser2]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leave_t_leaveapplicationstatus on [dbo].[leave]
Print 'Create Foreign Key FK_leave_t_leaveapplicationstatus on [dbo].[leave]'
GO
ALTER TABLE [dbo].[leave]
	WITH CHECK
	ADD CONSTRAINT [FK_leave_t_leaveapplicationstatus]
	FOREIGN KEY ([leaveappstatus_code]) REFERENCES [dbo].[t_leaveapplicationstatus] ([leaveappstatus_code])
ALTER TABLE [dbo].[leave]
	CHECK CONSTRAINT [FK_leave_t_leaveapplicationstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_leave on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_leave on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_leave]
	FOREIGN KEY ([leave_id], [location_code]) REFERENCES [dbo].[leave] ([leave_id], [location_code])
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_leave]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_sysuser on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_sysuser on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_sysuser]
	FOREIGN KEY ([created_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_sysuser]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_sysuser1 on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_sysuser1 on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_sysuser1]
	FOREIGN KEY ([modified_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_sysuser1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_sysuser2 on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_sysuser2 on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_sysuser2]
	FOREIGN KEY ([status_changed_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_sysuser2]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_t_leavereason on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_t_leavereason on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_t_leavereason]
	FOREIGN KEY ([leavereason_code]) REFERENCES [dbo].[t_leavereason] ([leavereason_code])
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_t_leavereason]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_leavedetail_t_leavestatus on [dbo].[leavedetail]
Print 'Create Foreign Key FK_leavedetail_t_leavestatus on [dbo].[leavedetail]'
GO
ALTER TABLE [dbo].[leavedetail]
	WITH CHECK
	ADD CONSTRAINT [FK_leavedetail_t_leavestatus]
	FOREIGN KEY ([leavestatus_code]) REFERENCES [dbo].[t_leavestatus] ([leavestatus_code])
	ON UPDATE CASCADE
ALTER TABLE [dbo].[leavedetail]
	CHECK CONSTRAINT [FK_leavedetail_t_leavestatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_paf_department on [dbo].[paf]
Print 'Create Foreign Key FK_paf_department on [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	WITH CHECK
	ADD CONSTRAINT [FK_paf_department]
	FOREIGN KEY ([department_code]) REFERENCES [dbo].[department] ([department_code])
ALTER TABLE [dbo].[paf]
	CHECK CONSTRAINT [FK_paf_department]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_paf_employee on [dbo].[paf]
Print 'Create Foreign Key FK_paf_employee on [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	WITH CHECK
	ADD CONSTRAINT [FK_paf_employee]
	FOREIGN KEY ([id_num]) REFERENCES [dbo].[employee] ([id_num])
ALTER TABLE [dbo].[paf]
	CHECK CONSTRAINT [FK_paf_employee]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_paf_location on [dbo].[paf]
Print 'Create Foreign Key FK_paf_location on [dbo].[paf]'
GO
ALTER TABLE [dbo].[paf]
	WITH CHECK
	ADD CONSTRAINT [FK_paf_location]
	FOREIGN KEY ([location_code]) REFERENCES [dbo].[location] ([location_code])
	ON UPDATE CASCADE
ALTER TABLE [dbo].[paf]
	CHECK CONSTRAINT [FK_paf_location]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_roster_t_syncstatus1 on [dbo].[roster]
Print 'Create Foreign Key FK_roster_t_syncstatus1 on [dbo].[roster]'
GO
ALTER TABLE [dbo].[roster]
	WITH CHECK
	ADD CONSTRAINT [FK_roster_t_syncstatus1]
	FOREIGN KEY ([syncstatus_code]) REFERENCES [dbo].[t_syncstatus] ([syncstatus_code])
ALTER TABLE [dbo].[roster]
	CHECK CONSTRAINT [FK_roster_t_syncstatus1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_roster_employee on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_roster_employee on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_roster_employee]
	FOREIGN KEY ([id_num]) REFERENCES [dbo].[employee] ([id_num])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_roster_employee]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_roster_t_syncstatus on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_roster_t_syncstatus on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_roster_t_syncstatus]
	FOREIGN KEY ([syncstatus_code]) REFERENCES [dbo].[t_syncstatus] ([syncstatus_code])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_roster_t_syncstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_rosterdetail_roster on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_rosterdetail_roster on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_rosterdetail_roster]
	FOREIGN KEY ([roster_id], [loc_dep_code]) REFERENCES [dbo].[roster] ([roster_id], [loc_dep_code])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_rosterdetail_roster]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_rosterdetail_sysuser on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_rosterdetail_sysuser on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_rosterdetail_sysuser]
	FOREIGN KEY ([created_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_rosterdetail_sysuser]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_rosterdetail_sysuser1 on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_rosterdetail_sysuser1 on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_rosterdetail_sysuser1]
	FOREIGN KEY ([status_changed_by]) REFERENCES [dbo].[sysuser] ([id_num])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_rosterdetail_sysuser1]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_rosterdetail_t_rosterdetailstatus on [dbo].[rosterdetail]
Print 'Create Foreign Key FK_rosterdetail_t_rosterdetailstatus on [dbo].[rosterdetail]'
GO
ALTER TABLE [dbo].[rosterdetail]
	WITH CHECK
	ADD CONSTRAINT [FK_rosterdetail_t_rosterdetailstatus]
	FOREIGN KEY ([rdstatus_code]) REFERENCES [dbo].[t_rosterdetailstatus] ([rdstatus_code])
ALTER TABLE [dbo].[rosterdetail]
	CHECK CONSTRAINT [FK_rosterdetail_t_rosterdetailstatus]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_t_leavereason_t_leavereason on [dbo].[t_leavereason]
Print 'Create Foreign Key FK_t_leavereason_t_leavereason on [dbo].[t_leavereason]'
GO
ALTER TABLE [dbo].[t_leavereason]
	WITH CHECK
	ADD CONSTRAINT [FK_t_leavereason_t_leavereason]
	FOREIGN KEY ([parent_reason_code]) REFERENCES [dbo].[t_leavereason] ([leavereason_code])
ALTER TABLE [dbo].[t_leavereason]
	CHECK CONSTRAINT [FK_t_leavereason_t_leavereason]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key FK_t_leavereason_t_leavetype on [dbo].[t_leavereason]
Print 'Create Foreign Key FK_t_leavereason_t_leavetype on [dbo].[t_leavereason]'
GO
ALTER TABLE [dbo].[t_leavereason]
	WITH CHECK
	ADD CONSTRAINT [FK_t_leavereason_t_leavetype]
	FOREIGN KEY ([leavetype_code]) REFERENCES [dbo].[t_leavetype] ([leavetype_code])
ALTER TABLE [dbo].[t_leavereason]
	CHECK CONSTRAINT [FK_t_leavereason_t_leavetype]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Extended Property MS_Description on [dbo].[paf]
Print 'Create Extended Property MS_Description on [dbo].[paf]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'-1 Demotion; 0 No change; 1 Promotion', 'SCHEMA', N'dbo', 'TABLE', N'paf', 'COLUMN', N'rank_movement'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

DENY ALTER ON [dbo].[hris_get_overridereasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_overridereasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_overridereasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_overridereasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_overridereasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_syncstatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY INSERT ON [dbo].[t_syncstatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_syncstatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_syncstatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_overtime_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_overtime_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_overtime_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_overtime_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_overtime_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_dtrstatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY INSERT ON [dbo].[t_dtrstatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_dtrstatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_dtrstatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_leaveapp_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_leaveapp_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_leaveapp_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_leaveapp_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_leaveapp_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_leave_types] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_leave_types] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_leave_types] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_leave_types] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_leave_types] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysconfig] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysconfig] TO [LogBoxUser]
DENY DELETE ON [dbo].[sysconfig] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysconfig] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysconfig] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysconfig] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysconfig] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysconfig] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysconfig] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysconfig] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_leave_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_leave_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_leave_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_leave_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_leave_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_undertime_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_undertime_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_undertime_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_undertime_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_undertime_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_total_hours] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_religions] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_religions] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_religions] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_religions] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_religions] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_log_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_undertime_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_undertime_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_undertime_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_undertime_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_undertime_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[employee] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[employee] TO [LogBoxUser]
DENY DELETE ON [dbo].[employee] TO [LogBoxUser]
GRANT INSERT ON [dbo].[employee] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[employee] TO [LogBoxUser]
GRANT SELECT ON [dbo].[employee] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[employee] TO [LogBoxUser]
DENY UPDATE ON [dbo].[employee] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[employee] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[employee] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_override_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_override_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_override_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_override_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_override_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[fn_get_sysconfig_value] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_location_code] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_leave_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_leave_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_leave_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_leave_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_leave_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_get_wsmessagein_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_get_wsmessagein_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_get_wsmessagein_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_get_wsmessagein_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_get_wsmessagein_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_change_roster_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_change_roster_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_change_roster_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_change_roster_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_change_roster_status] TO [LogBoxUser]
GRANT ALTER ON [dbo].[dtr] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr] TO [LogBoxUser]
DENY DELETE ON [dbo].[dtr] TO [LogBoxUser]
GRANT INSERT ON [dbo].[dtr] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtr] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr] TO [LogBoxUser]
DENY UPDATE ON [dbo].[dtr] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[dtr] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_resource_types] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_resource_types] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_resource_types] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_resource_types] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_resource_types] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_employee] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_employee] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_employee] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_employee] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_employee] TO [LogBoxUser]
DENY ALTER ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT DELETE ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT INSERT ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT SELECT ON [dbo].[rosterdetail] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[rosterdetail] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[rosterdetail] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[rosterdetail] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[rosterdetail] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_xml_to_db] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_xml_to_db] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_xml_to_db] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_xml_to_db] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_xml_to_db] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtrundertime] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtrundertime] TO [LogBoxUser]
DENY DELETE ON [dbo].[dtrundertime] TO [LogBoxUser]
GRANT INSERT ON [dbo].[dtrundertime] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtrundertime] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtrundertime] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtrundertime] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[dtrundertime] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtrundertime] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[dtrundertime] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_generate_xml] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_generate_xml] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_generate_xml] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_generate_xml] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_generate_xml] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_set_wsmessageout_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_set_wsmessageout_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_set_wsmessageout_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_set_wsmessageout_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_set_wsmessageout_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_que_record] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_que_record] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_que_record] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_que_record] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_que_record] TO [LogBoxUser]
DENY ALTER ON [dbo].[leave] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[leave] TO [LogBoxUser]
DENY DELETE ON [dbo].[leave] TO [LogBoxUser]
GRANT INSERT ON [dbo].[leave] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[leave] TO [LogBoxUser]
GRANT SELECT ON [dbo].[leave] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[leave] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[leave] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[leave] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[leave] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_get_wsmessageout_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_get_wsmessageout_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_get_wsmessageout_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_get_wsmessageout_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_get_wsmessageout_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_dtr] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_override_by_date_pm] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_override_by_date_pm] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_override_by_date_pm] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_override_by_date_pm] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_override_by_date_pm] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_roster] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_roster] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_roster] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_roster] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_roster] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_employees] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_employees] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_employees] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_employees] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_employees] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_override_by_date_am] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_override_by_date_am] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_override_by_date_am] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_override_by_date_am] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_override_by_date_am] TO [LogBoxUser]
DENY ALTER ON [dbo].[sec_get_user_rights] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sec_get_user_rights] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sec_get_user_rights] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sec_get_user_rights] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sec_get_user_rights] TO [LogBoxUser]
DENY ALTER ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT DELETE ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT INSERT ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT SELECT ON [dbo].[leavedetail] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[leavedetail] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[leavedetail] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[leavedetail] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[leavedetail] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_by_employee] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_by_employee] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_by_employee] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_by_employee] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_by_employee] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_rosterdetail] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_rosterdetail] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_rosterdetail] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_rosterdetail] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_rosterdetail] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_undertime] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_undertime] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_undertime] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_undertime] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_undertime] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_leave] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_leave] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_leave] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_leave] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_leave] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_leavedetail] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_leavedetail] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_leavedetail] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_leavedetail] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_leavedetail] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_change_leave_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_change_leave_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_change_leave_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_change_leave_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_change_leave_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_by_date] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_by_date] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_by_date] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_by_date] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_by_date] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_get_leaves] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_get_leaves] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_get_leaves] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_get_leaves] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_get_leaves] TO [LogBoxUser]
DENY ALTER ON [dbo].[wsmessagein] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[wsmessagein] TO [LogBoxUser]
GRANT DELETE ON [dbo].[wsmessagein] TO [LogBoxUser]
GRANT INSERT ON [dbo].[wsmessagein] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[wsmessagein] TO [LogBoxUser]
GRANT SELECT ON [dbo].[wsmessagein] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[wsmessagein] TO [LogBoxUser]
DENY UPDATE ON [dbo].[wsmessagein] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[wsmessagein] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[wsmessagein] TO [LogBoxUser]
DENY ALTER ON [dbo].[wsmessageout] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[wsmessageout] TO [LogBoxUser]
GRANT DELETE ON [dbo].[wsmessageout] TO [LogBoxUser]
GRANT INSERT ON [dbo].[wsmessageout] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[wsmessageout] TO [LogBoxUser]
GRANT SELECT ON [dbo].[wsmessageout] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[wsmessageout] TO [LogBoxUser]
DENY UPDATE ON [dbo].[wsmessageout] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[wsmessageout] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[wsmessageout] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_by_date_no_joins] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_by_date_no_joins] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_by_date_no_joins] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_by_date_no_joins] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_by_date_no_joins] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_dtr_for_import] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_dtr_for_import] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_dtr_for_import] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_dtr_for_import] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_dtr_for_import] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_get_employee] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_get_employee] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_get_employee] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_get_employee] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_get_employee] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_import_dtr] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_import_dtr] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_import_dtr] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_import_dtr] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_import_dtr] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_log_time] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_log_time] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[dtr_log_time] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_log_time] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_log_time] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysrole] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysrole] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysrole] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysrole] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysrole] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysrole] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysrole] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysrole] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysrole] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysrole] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysprivilege] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysprivilege] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysprivilege] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysprivilege] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysprivilege] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysprivilege] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysprivilege] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysprivilege] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysprivilege] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysprivilege] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysroleprivilege] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysroleprivilege] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysroleprivilege] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysroleprivilege] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysroleprivilege] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysroleprivilege] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysroleprivilege] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysroleprivilege] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysroleprivilege] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysroleprivilege] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysrolelevel] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysrolelevel] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysrolelevel] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysrolelevel] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysrolelevel] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysrolelevel] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysrolelevel] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysrolelevel] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysrolelevel] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysrolelevel] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysuserrole] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysuserrole] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysuserrole] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysuserrole] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[sysuserrole] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysuserrole] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysuserrole] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysuserrole] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysuserrole] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysuserrole] TO [LogBoxUser]
DENY ALTER ON [dbo].[sysuser] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sysuser] TO [LogBoxUser]
GRANT DELETE ON [dbo].[sysuser] TO [LogBoxUser]
GRANT INSERT ON [dbo].[sysuser] TO [LogBoxUser]
DENY REFERENCES ON [dbo].[sysuser] TO [LogBoxUser]
GRANT SELECT ON [dbo].[sysuser] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sysuser] TO [LogBoxUser]
DENY UPDATE ON [dbo].[sysuser] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sysuser] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[sysuser] TO [LogBoxUser]
DENY ALTER ON [dbo].[sync_employee] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[sync_employee] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[sync_employee] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[sync_employee] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[sync_employee] TO [LogBoxUser]
DENY ALTER ON [dbo].[upd_execute_update] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[upd_execute_update] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[upd_execute_update] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[upd_execute_update] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[upd_execute_update] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtroverride] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtroverride] TO [LogBoxUser]
DENY DELETE ON [dbo].[dtroverride] TO [LogBoxUser]
GRANT INSERT ON [dbo].[dtroverride] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtroverride] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtroverride] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtroverride] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[dtroverride] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtroverride] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[dtroverride] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_overridereason] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_overridereason] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_overridereason] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_overridereason] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_overridereason] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_overridereason] TO [LogBoxUser]
GRANT TAKE OWNERSHIP ON [dbo].[t_overridereason] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_overridereason] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_overridereason] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_overridereason] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_overtime_reasons] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_overtime_reasons] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_overtime_reasons] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_overtime_reasons] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_overtime_reasons] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_time_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_time_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_time_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_time_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_time_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_leaveapplicationstatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_leavestatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_leavestatus] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_leavestatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_leavestatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_leavestatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_rosterdetailstatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_undertimereason] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_undertimereason] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_undertimereason] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_undertimereason] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_undertimereason] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_timestatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_timestatus] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_timestatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_timestatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_timestatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_leavetype] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_leavetype] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_leavetype] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_leavetype] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_leavetype] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_days_covered] TO [LogBoxUser]
DENY ALTER ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
GRANT SELECT ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[dtr_fn_get_times] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_am_pm] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_am_pm] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_am_pm] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_am_pm] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_am_pm] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_civil_status] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_civil_status] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_civil_status] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_civil_status] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_civil_status] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_gender] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_gender] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_gender] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_gender] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_gender] TO [LogBoxUser]
DENY ALTER ON [dbo].[hris_dd_get_blood_types] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[hris_dd_get_blood_types] TO [LogBoxUser]
GRANT EXECUTE ON [dbo].[hris_dd_get_blood_types] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[hris_dd_get_blood_types] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[hris_dd_get_blood_types] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_leavereason] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_leavereason] TO [LogBoxUser]
GRANT INSERT ON [dbo].[t_leavereason] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_leavereason] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_leavereason] TO [LogBoxUser]
DENY ALTER ON [dbo].[roster] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[roster] TO [LogBoxUser]
DENY DELETE ON [dbo].[roster] TO [LogBoxUser]
GRANT INSERT ON [dbo].[roster] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[roster] TO [LogBoxUser]
GRANT SELECT ON [dbo].[roster] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[roster] TO [LogBoxUser]
GRANT UPDATE ON [dbo].[roster] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[roster] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[roster] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY INSERT ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_wsmessagetype] TO [LogBoxUser]
DENY ALTER ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY DELETE ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY INSERT ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
GRANT SELECT ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY UPDATE ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY VIEW CHANGE TRACKING ON [dbo].[t_wsmessagestatus] TO [LogBoxUser]
DENY ALTER ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]
GRANT CONTROL ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]
GRANT REFERENCES ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]
GRANT SELECT ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]
DENY TAKE OWNERSHIP ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]
DENY VIEW DEFINITION ON [dbo].[paf_fn_active_employees] TO [LogBoxUser]

GO

INSERT [dbo].[t_leaveapplicationstatus] ([leaveappstatus_code], [leaveappstatus_name], [leaveappstatus_description], [close_record]) VALUES (N'APP', N'Approved', N'Application has been approved', 1)
GO
INSERT [dbo].[t_leaveapplicationstatus] ([leaveappstatus_code], [leaveappstatus_name], [leaveappstatus_description], [close_record]) VALUES (N'CNL', N'Cancelled', N'Cancelled', 1)
GO
INSERT [dbo].[t_leaveapplicationstatus] ([leaveappstatus_code], [leaveappstatus_name], [leaveappstatus_description], [close_record]) VALUES (N'DND', N'Disapproved', N'Application has been disapproved', 1)
GO
INSERT [dbo].[t_leaveapplicationstatus] ([leaveappstatus_code], [leaveappstatus_name], [leaveappstatus_description], [close_record]) VALUES (N'PND', N'Pending', N'Pending', 0)
GO
INSERT [dbo].[t_leavestatus] ([leavestatus_code], [leavestatus_name], [leavestatus_description]) VALUES (N'APP', N'Approved', NULL)
GO
INSERT [dbo].[t_leavestatus] ([leavestatus_code], [leavestatus_name], [leavestatus_description]) VALUES (N'CNL', N'Cancelled', NULL)
GO
INSERT [dbo].[t_leavestatus] ([leavestatus_code], [leavestatus_name], [leavestatus_description]) VALUES (N'DND', N'Denied', NULL)
GO
INSERT [dbo].[t_leavestatus] ([leavestatus_code], [leavestatus_name], [leavestatus_description]) VALUES (N'PND', N'Pending', NULL)
GO
INSERT [dbo].[t_rosterdetailstatus] ([rdstatus_code], [rdstatus_name], [rdstatus_description]) VALUES (N'ACT', N'Active', NULL)
GO
INSERT [dbo].[t_rosterdetailstatus] ([rdstatus_code], [rdstatus_name], [rdstatus_description]) VALUES (N'CNL', N'Cancelled', NULL)
GO
INSERT [dbo].[t_rosterdetailstatus] ([rdstatus_code], [rdstatus_name], [rdstatus_description]) VALUES (N'MOV', N'Moved', NULL)
GO
INSERT [dbo].[t_rosterdetailstatus] ([rdstatus_code], [rdstatus_name], [rdstatus_description]) VALUES (N'SWP', N'Swapped', NULL)
GO
INSERT [dbo].[t_timestatus] ([timestatus_code], [timestatus_name], [timestatus_description]) VALUES (N'APP', N'Approved', NULL)
GO
INSERT [dbo].[t_timestatus] ([timestatus_code], [timestatus_name], [timestatus_description]) VALUES (N'CNL', N'Cancelled', NULL)
GO
INSERT [dbo].[t_timestatus] ([timestatus_code], [timestatus_name], [timestatus_description]) VALUES (N'DND', N'Denied', NULL)
GO
INSERT [dbo].[t_timestatus] ([timestatus_code], [timestatus_name], [timestatus_description]) VALUES (N'PND', N'Pending', NULL)
GO

IF @@TRANCOUNT>0
	COMMIT

SET NOEXEC OFF
GO

