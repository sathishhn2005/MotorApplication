USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 26-04-2021 09:36:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[SP_GetSpecificBIDB] (@BusinessType nvarchar(50),@ProducerName nvarchar(50))
AS 
BEGIN
declare @tt table(
Calenderid int,
MonthName nvarchar(50),
Lost int,
Renewed int,
[Under process] int
)

begin 
if(@BusinessType='DirectSales')
begin
set @BusinessType='Direct'
end
if(@BusinessType<>'Branches')
begin
insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
where BusinessType=@BusinessType and CustomerName=@ProducerName
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
end
else
begin
insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
where DivisionCode=@ProducerName
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
end

END
END



----delete from @tt

--insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

--select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
--TB_Insurance M 

--right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
--where BusinessType='Agent'
--) t
--pivot
--(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
--select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,'Agent' as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid

--insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

--select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
--TB_Insurance M 

--right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
--where BusinessType='Broker'
--) t
--pivot
--(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
--select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,'Broker' as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid

--insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

--select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
--TB_Insurance M 

--right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
--where BusinessType='Branch'
--) t
--pivot
--(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

--select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,'Branch' as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
--END
--END

go

/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 26-04-2021 09:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[SP_GetUserList]
(
@BusinessType nvarchar(40)
)
as
begin
--declare @RoleId bigint
--set @RoleId=(select RoleId from TB_RoleMaster where RoleName=@BusinessType)
--select UserId,UserName,Password,RoleId,RoleName from TB_Users where RoleId=@RoleId
if(@BusinessType='DirectSales')
set @BusinessType='Direct'
if(@BusinessType<>'Branches')
begin
select distinct 1 as UserId,'Password' as Password,1 as RoleId,'Admin' as RoleName,CustomerName as UserName from TB_Insurance where BusinessType=@BusinessType
end
else
begin
select distinct 1 as UserId,'Password' as Password,1 as RoleId,'Admin' as RoleName,DivisionCode as UserName from TB_Insurance --where BusinessType=@BusinessType
end
end
