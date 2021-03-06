USE [LogBox_Live]
GO
/****** Object:  StoredProcedure [dbo].[sync_generate_xml]    Script Date: 10/03/2014 06:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sync_generate_xml]
AS
BEGIN
	declare @event_object char(3),
			@pk_event_object int,
			@ws_message varchar(max),
			@ws_message_date datetime,
			@priority int,
			@source_branch char(3),
			@destination_branch char(3),
			@messagetype_code char(3),
			@messagestatus_code char(3)
			
	select top 1
	       @event_object = wmo.event_object,
	       @pk_event_object = wmo.pk_event_object,
	       @ws_message_date = wmo.ws_message_date,
	       @messagetype_code = wmo.messagetype_code
	  from wsmessageout wmo (nolock)
	 where wmo.messagestatus_code = 'QUE'
  order by ws_message_date asc
  
	-- get xml message
	set @ws_message = (select * 
					     from dtr d (nolock)
				    	where d.dtr_id = @pk_event_object
					      for xml raw ('dtr'), 
					          elements)
				   
	select @event_object as event_object,
		   @pk_event_object as pk_event_object,
		   @ws_message as ws_message,
		   @ws_message_date as ws_message_date,
		   null as priority,
		   dbo.dtr_fn_get_branch_code(0) as source_branch, -- note: for the employee_id parameter, pass 0 always to get the actual branch code
		   'SVR' as destination_branch,
		   @messagetype_code as messagetype_code,
		   'QUE' as messagestatus_code 
END
