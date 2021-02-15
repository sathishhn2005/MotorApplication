USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 31-12-2020 11:43:30 ******/
DROP PROCEDURE [dbo].[SP_GetUserTravelDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 31-12-2020 11:43:30 ******/
DROP PROCEDURE [dbo].[SP_GetUserMDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 31-12-2020 11:43:30 ******/
DROP PROCEDURE [dbo].[SP_GetUserIndividualDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 31-12-2020 11:43:30 ******/
DROP PROCEDURE [dbo].[SP_GetUserDomesticDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 31-12-2020 11:43:30 ******/
DROP PROCEDURE [dbo].[SP_GetBarChart]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 31-12-2020 11:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetBarChart] (@flag int,@UserName nvarchar(100))
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
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 31-12-2020 11:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GetUserDomesticDB]
(
@UserName nvarchar(50)
)
as 
begin
declare @IsExists int,@RoleId int

set @RoleId=(select distinct roleid from TB_Users where UserName=@UserName)
set @IsExists=(select count(*) from TB_Users where  UserName=@UserName)

if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

--if(@UserName<>'' and @RoleId<>1)
--begin
if(@RoleId=1)
begin
print 1

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Domestic' and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end



set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end


set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end

select ISNULL(@TotalNoPoliciesYear,0)                 as TNPYear, 
       ISNULL(@TotalNoPolUnderProcessYear,0)          as TNPUnderProcessYear, 
       ISNULL(@TotNoPolLostYear,0)                    as TNPLostYear, 
       ISNULL(@TotalNoPolRenewedYear ,0)              as TNPRenewedYear, 
       ISNULL(@TotalNPYearPercent   ,0)               as PercentageRenewedYear, 
       ISNULL(@TotalNoPoliciesMonth,0)                as TNPMonth, 
       ISNULL(@TotalNoPoliciesLostMonth,0)            as TNPLostMonth, 
       ISNULL(@TotalNoPoliciesUPMonth,0)              as TNPUnderProcessMonth, 
       ISNULL(@TotalNoPoliciesRenewedMonth,0)         as TNPRenewedMonth, 
       ISNULL(@TotalNPMonthPercent,0)                 as PercentageRenewedMonth, 
       ISNULL(@TotalNoPoliciesYearPremium,0)          as TNPYearPremium, 
       ISNULL(@TotalNoPolUnderProcessYearPremium,0)   as TNPUPYearPremium, 
       ISNULL(@TotNoPolLostYearPremium,0)             as TNPLostYearPremium, 
       ISNULL(@TotalNoPolRenewedYearPremium,0)        as TNPRenewedYearPremium, 
       ISNULL(@TotalNPYearPercentPremium,0)           as PercentPremiumRenewedYear, 
       ISNULL(@TotalNoPoliciesMonthPremium,0)         as TNPMonthPremium, 
       ISNULL(@TotalNoPoliciesLostMonthPremium,0)     as TNPLostMonthPremium, 
       ISNULL(@TotalNoPoliciesUPMonthPremium,0)       as TNPUPMonthPremium, 
       ISNULL(@TotalNoPoliciesRenewedMonthPremium,0)  as TNPRenewedMonthPremium, 
       ISNULL(@TotalNPMonthPercentPremium,0)          as PercentPremiumRenewedMonth, 
       ISNULL(@UserName,'')                           as UserName 
end
else
begin

print 5
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Domestic' and Producer=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Domestic' and Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  Producer=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolUnderProcessYear,0)         as TNPUnderProcessYear, 
       isnull(@TotNoPolLostYear          ,0)         as TNPLostYear, 
       isnull(@TotalNoPolRenewedYear     ,0)         as TNPRenewedYear, 
       isnull(@TotalNPYearPercent        ,0)         as PercentageRenewedYear, 
       isnull(@TotalNoPoliciesMonth      ,0)         as TNPMonth, 
       isnull(@TotalNoPoliciesLostMonth  ,0)         as TNPLostMonth, 
       isnull(@TotalNoPoliciesUPMonth    ,0)         as TNPUnderProcessMonth, 
       isnull(@TotalNoPoliciesRenewedMonth ,0)       as TNPRenewedMonth, 
       isnull(@TotalNPMonthPercent       ,0)         as PercentageRenewedMonth, 
       isnull(@TotalNoPoliciesYearPremium,0)         as TNPYearPremium, 
       isnull(@TotalNoPolUnderProcessYearPremium,0)  as TNPUPYearPremium, 
       isnull(@TotNoPolLostYearPremium   ,0)         as TNPLostYearPremium, 
       isnull(@TotalNoPolRenewedYearPremium,0)       as TNPRenewedYearPremium, 
       isnull(@TotalNPYearPercentPremium ,0)         as PercentPremiumRenewedYear, 
       isnull(@TotalNoPoliciesMonthPremium,0)        as TNPMonthPremium, 
       isnull(@TotalNoPoliciesLostMonthPremium,0)    as TNPLostMonthPremium, 
       isnull(@TotalNoPoliciesUPMonthPremium,0)      as TNPUPMonthPremium, 
       isnull(@TotalNoPoliciesRenewedMonthPremium,0) as TNPRenewedMonthPremium, 
       isnull(@TotalNPMonthPercentPremium,0)         as PercentPremiumRenewedMonth, 
       @UserName as UserName
end

--else
--begin

--exec [SP_GetMIDashBoard] @UserName
--end

end


end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 31-12-2020 11:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GetUserIndividualDB]
(
@UserName nvarchar(50)
)
as 
begin
declare @IsExists int,@RoleId int

set @RoleId=(select distinct roleid from TB_Users where UserName=@UserName)
set @IsExists=(select count(*) from TB_Users where  UserName=@UserName)

if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

--if(@UserName<>'' and @RoleId<>1)
--begin
if(@RoleId=1)
begin
print 1

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Individual' and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end



set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end
select ISNULL(@TotalNoPoliciesYear,0)                 as TNPYear, 
       ISNULL(@TotalNoPolUnderProcessYear,0)          as TNPUnderProcessYear, 
       ISNULL(@TotNoPolLostYear,0)                    as TNPLostYear, 
       ISNULL(@TotalNoPolRenewedYear ,0)              as TNPRenewedYear, 
       ISNULL(@TotalNPYearPercent   ,0)               as PercentageRenewedYear, 
       ISNULL(@TotalNoPoliciesMonth,0)                as TNPMonth, 
       ISNULL(@TotalNoPoliciesLostMonth,0)            as TNPLostMonth, 
       ISNULL(@TotalNoPoliciesUPMonth,0)              as TNPUnderProcessMonth, 
       ISNULL(@TotalNoPoliciesRenewedMonth,0)         as TNPRenewedMonth, 
       ISNULL(@TotalNPMonthPercent,0)                 as PercentageRenewedMonth, 
       ISNULL(@TotalNoPoliciesYearPremium,0)          as TNPYearPremium, 
       ISNULL(@TotalNoPolUnderProcessYearPremium,0)   as TNPUPYearPremium, 
       ISNULL(@TotNoPolLostYearPremium,0)             as TNPLostYearPremium, 
       ISNULL(@TotalNoPolRenewedYearPremium,0)        as TNPRenewedYearPremium, 
       ISNULL(@TotalNPYearPercentPremium,0)           as PercentPremiumRenewedYear, 
       ISNULL(@TotalNoPoliciesMonthPremium,0)         as TNPMonthPremium, 
       ISNULL(@TotalNoPoliciesLostMonthPremium,0)     as TNPLostMonthPremium, 
       ISNULL(@TotalNoPoliciesUPMonthPremium,0)       as TNPUPMonthPremium, 
       ISNULL(@TotalNoPoliciesRenewedMonthPremium,0)  as TNPRenewedMonthPremium, 
       ISNULL(@TotalNPMonthPercentPremium,0)          as PercentPremiumRenewedMonth, 
       ISNULL(@UserName,'')                           as UserName 
end
else
begin

print 5
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Individual' and Producer=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Individual' and Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Individual' and  Producer=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Individual' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolUnderProcessYear,0)         as TNPUnderProcessYear, 
       isnull(@TotNoPolLostYear          ,0)         as TNPLostYear, 
       isnull(@TotalNoPolRenewedYear     ,0)         as TNPRenewedYear, 
       isnull(@TotalNPYearPercent        ,0)         as PercentageRenewedYear, 
       isnull(@TotalNoPoliciesMonth      ,0)         as TNPMonth, 
       isnull(@TotalNoPoliciesLostMonth  ,0)         as TNPLostMonth, 
       isnull(@TotalNoPoliciesUPMonth    ,0)         as TNPUnderProcessMonth, 
       isnull(@TotalNoPoliciesRenewedMonth ,0)       as TNPRenewedMonth, 
       isnull(@TotalNPMonthPercent       ,0)         as PercentageRenewedMonth, 
       isnull(@TotalNoPoliciesYearPremium,0)         as TNPYearPremium, 
       isnull(@TotalNoPolUnderProcessYearPremium,0)  as TNPUPYearPremium, 
       isnull(@TotNoPolLostYearPremium   ,0)         as TNPLostYearPremium, 
       isnull(@TotalNoPolRenewedYearPremium,0)       as TNPRenewedYearPremium, 
       isnull(@TotalNPYearPercentPremium ,0)         as PercentPremiumRenewedYear, 
       isnull(@TotalNoPoliciesMonthPremium,0)        as TNPMonthPremium, 
       isnull(@TotalNoPoliciesLostMonthPremium,0)    as TNPLostMonthPremium, 
       isnull(@TotalNoPoliciesUPMonthPremium,0)      as TNPUPMonthPremium, 
       isnull(@TotalNoPoliciesRenewedMonthPremium,0) as TNPRenewedMonthPremium, 
       isnull(@TotalNPMonthPercentPremium,0)         as PercentPremiumRenewedMonth, 
       @UserName as UserName
end

--else
--begin

--exec [SP_GetMIDashBoard] @UserName
--end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 31-12-2020 11:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetUserMDB]
(
@UserName nvarchar(50)
)
as 
begin
declare @IsExists int,@RoleId int

set @RoleId=(select distinct roleid from TB_Users where UserName=@UserName)
set @IsExists=(select count(*) from TB_Users where  UserName=@UserName)

if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

--if(@UserName<>'' and @RoleId<>1)
--begin
if(@RoleId=1)
begin
print 1

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Motor' and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end


select ISNULL(@TotalNoPoliciesYear,0)                 as TNPYear, 
       ISNULL(@TotalNoPolUnderProcessYear,0)          as TNPUnderProcessYear, 
       ISNULL(@TotNoPolLostYear,0)                    as TNPLostYear, 
       ISNULL(@TotalNoPolRenewedYear ,0)              as TNPRenewedYear, 
       ISNULL(@TotalNPYearPercent   ,0)               as PercentageRenewedYear, 
       ISNULL(@TotalNoPoliciesMonth,0)                as TNPMonth, 
       ISNULL(@TotalNoPoliciesLostMonth,0)            as TNPLostMonth, 
       ISNULL(@TotalNoPoliciesUPMonth,0)              as TNPUnderProcessMonth, 
       ISNULL(@TotalNoPoliciesRenewedMonth,0)         as TNPRenewedMonth, 
       ISNULL(@TotalNPMonthPercent,0)                 as PercentageRenewedMonth, 
       ISNULL(@TotalNoPoliciesYearPremium,0)          as TNPYearPremium, 
       ISNULL(@TotalNoPolUnderProcessYearPremium,0)   as TNPUPYearPremium, 
       ISNULL(@TotNoPolLostYearPremium,0)             as TNPLostYearPremium, 
       ISNULL(@TotalNoPolRenewedYearPremium,0)        as TNPRenewedYearPremium, 
       ISNULL(@TotalNPYearPercentPremium,0)           as PercentPremiumRenewedYear, 
       ISNULL(@TotalNoPoliciesMonthPremium,0)         as TNPMonthPremium, 
       ISNULL(@TotalNoPoliciesLostMonthPremium,0)     as TNPLostMonthPremium, 
       ISNULL(@TotalNoPoliciesUPMonthPremium,0)       as TNPUPMonthPremium, 
       ISNULL(@TotalNoPoliciesRenewedMonthPremium,0)  as TNPRenewedMonthPremium, 
       ISNULL(@TotalNPMonthPercentPremium,0)          as PercentPremiumRenewedMonth, 
       ISNULL(@UserName,'')                           as UserName 
end
else
begin

print 5
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and Producer=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  Producer=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Motor' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolUnderProcessYear,0)         as TNPUnderProcessYear, 
       isnull(@TotNoPolLostYear          ,0)         as TNPLostYear, 
       isnull(@TotalNoPolRenewedYear     ,0)         as TNPRenewedYear, 
       isnull(@TotalNPYearPercent        ,0)         as PercentageRenewedYear, 
       isnull(@TotalNoPoliciesMonth      ,0)         as TNPMonth, 
       isnull(@TotalNoPoliciesLostMonth  ,0)         as TNPLostMonth, 
       isnull(@TotalNoPoliciesUPMonth    ,0)         as TNPUnderProcessMonth, 
       isnull(@TotalNoPoliciesRenewedMonth ,0)       as TNPRenewedMonth, 
       isnull(@TotalNPMonthPercent       ,0)         as PercentageRenewedMonth, 
       isnull(@TotalNoPoliciesYearPremium,0)         as TNPYearPremium, 
       isnull(@TotalNoPolUnderProcessYearPremium,0)  as TNPUPYearPremium, 
       isnull(@TotNoPolLostYearPremium   ,0)         as TNPLostYearPremium, 
       isnull(@TotalNoPolRenewedYearPremium,0)       as TNPRenewedYearPremium, 
       isnull(@TotalNPYearPercentPremium ,0)         as PercentPremiumRenewedYear, 
       isnull(@TotalNoPoliciesMonthPremium,0)        as TNPMonthPremium, 
       isnull(@TotalNoPoliciesLostMonthPremium,0)    as TNPLostMonthPremium, 
       isnull(@TotalNoPoliciesUPMonthPremium,0)      as TNPUPMonthPremium, 
       isnull(@TotalNoPoliciesRenewedMonthPremium,0) as TNPRenewedMonthPremium, 
       isnull(@TotalNPMonthPercentPremium,0)         as PercentPremiumRenewedMonth, 
       @UserName as UserName
end

--else
--begin

--exec [SP_GetMIDashBoard] @UserName
--end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 31-12-2020 11:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GetUserTravelDB]
(
@UserName nvarchar(50)
)
as 
begin
declare @IsExists int,@RoleId int

set @RoleId=(select distinct roleid from TB_Users where UserName=@UserName)
set @IsExists=(select count(*) from TB_Users where  UserName=@UserName)

if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

--if(@UserName<>'' and @RoleId<>1)
--begin
if(@RoleId=1)
begin
print 1

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Travel' and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end



set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')

if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end

select ISNULL(@TotalNoPoliciesYear,0)                 as TNPYear, 
       ISNULL(@TotalNoPolUnderProcessYear,0)          as TNPUnderProcessYear, 
       ISNULL(@TotNoPolLostYear,0)                    as TNPLostYear, 
       ISNULL(@TotalNoPolRenewedYear ,0)              as TNPRenewedYear, 
       ISNULL(@TotalNPYearPercent   ,0)               as PercentageRenewedYear, 
       ISNULL(@TotalNoPoliciesMonth,0)                as TNPMonth, 
       ISNULL(@TotalNoPoliciesLostMonth,0)            as TNPLostMonth, 
       ISNULL(@TotalNoPoliciesUPMonth,0)              as TNPUnderProcessMonth, 
       ISNULL(@TotalNoPoliciesRenewedMonth,0)         as TNPRenewedMonth, 
       ISNULL(@TotalNPMonthPercent,0)                 as PercentageRenewedMonth, 
       ISNULL(@TotalNoPoliciesYearPremium,0)          as TNPYearPremium, 
       ISNULL(@TotalNoPolUnderProcessYearPremium,0)   as TNPUPYearPremium, 
       ISNULL(@TotNoPolLostYearPremium,0)             as TNPLostYearPremium, 
       ISNULL(@TotalNoPolRenewedYearPremium,0)        as TNPRenewedYearPremium, 
       ISNULL(@TotalNPYearPercentPremium,0)           as PercentPremiumRenewedYear, 
       ISNULL(@TotalNoPoliciesMonthPremium,0)         as TNPMonthPremium, 
       ISNULL(@TotalNoPoliciesLostMonthPremium,0)     as TNPLostMonthPremium, 
       ISNULL(@TotalNoPoliciesUPMonthPremium,0)       as TNPUPMonthPremium, 
       ISNULL(@TotalNoPoliciesRenewedMonthPremium,0)  as TNPRenewedMonthPremium, 
       ISNULL(@TotalNPMonthPercentPremium,0)          as PercentPremiumRenewedMonth, 
       ISNULL(@UserName,'')                           as UserName 
end
else
begin

print 5
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Travel' and Producer=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Travel' and Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Travel' and  Producer=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



if(@TotalNoPoliciesRenewedMonthPremium>0 and @TotalNoPoliciesRenewedMonthPremium>0) 
begin
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )
end
else
begin
set @TotalNPMonthPercentPremium=0
end
select isnull(@TotalNoPoliciesYear,0)                as TNPYear, 
       isnull(@TotalNoPolUnderProcessYear,0)         as TNPUnderProcessYear, 
       isnull(@TotNoPolLostYear          ,0)         as TNPLostYear, 
       isnull(@TotalNoPolRenewedYear     ,0)         as TNPRenewedYear, 
       isnull(@TotalNPYearPercent        ,0)         as PercentageRenewedYear, 
       isnull(@TotalNoPoliciesMonth      ,0)         as TNPMonth, 
       isnull(@TotalNoPoliciesLostMonth  ,0)         as TNPLostMonth, 
       isnull(@TotalNoPoliciesUPMonth    ,0)         as TNPUnderProcessMonth, 
       isnull(@TotalNoPoliciesRenewedMonth ,0)       as TNPRenewedMonth, 
       isnull(@TotalNPMonthPercent       ,0)         as PercentageRenewedMonth, 
       isnull(@TotalNoPoliciesYearPremium,0)         as TNPYearPremium, 
       isnull(@TotalNoPolUnderProcessYearPremium,0)  as TNPUPYearPremium, 
       isnull(@TotNoPolLostYearPremium   ,0)         as TNPLostYearPremium, 
       isnull(@TotalNoPolRenewedYearPremium,0)       as TNPRenewedYearPremium, 
       isnull(@TotalNPYearPercentPremium ,0)         as PercentPremiumRenewedYear, 
       isnull(@TotalNoPoliciesMonthPremium,0)        as TNPMonthPremium, 
       isnull(@TotalNoPoliciesLostMonthPremium,0)    as TNPLostMonthPremium, 
       isnull(@TotalNoPoliciesUPMonthPremium,0)      as TNPUPMonthPremium, 
       isnull(@TotalNoPoliciesRenewedMonthPremium,0) as TNPRenewedMonthPremium, 
       isnull(@TotalNPMonthPercentPremium,0)         as PercentPremiumRenewedMonth, 
       @UserName as UserName
end

--else
--begin

--exec [SP_GetMIDashBoard] @UserName
--end

end

end
GO
