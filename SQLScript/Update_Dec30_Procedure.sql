USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 31-12-2020 11:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[SP_GetBarChart] (@flag int,@UserName nvarchar(100))
AS 
BEGIN
declare @RoleId bigint
set @RoleId=(Select RoleId from TB_Users where UserName=@UserName)
if(@RoleId=1)
begin
if(@flag=1)
begin 

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Motor') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=2)
begin 

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Motor') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=3)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Individual') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=4)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Domestic') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=5)
begin
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Travel') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId


end
end
else
begin
if(@flag=1)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)  where Producer=@UserName) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId


--a.* b* totcnt
END
if(@flag=2)
begin 

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Motor' and Producer=@UserName) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=3)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Individual' and Producer=@UserName) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=4)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Domestic' and Producer=@UserName) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=5)
begin
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Travel' and Producer=@UserName) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
end
end
end