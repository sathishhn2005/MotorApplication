USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetYearwisePolicyReport]    Script Date: 05-03-2021 11:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[SP_GetYearwisePolicyReport]
(
@UserName nvarchar(50),
@Password nvarchar(50),
@RoleId bigint,
@Year int
)
as 
begin
declare @IsExists int
if(@Password<>'' and @RoleId<>'')
begin

set @IsExists=(select count(*) RoleId from TB_Users where RoleId=@RoleId and UserName=@UserName and Password=@Password)
end
else
begin
print 3
set @IsExists=(select count(*) RoleId from TB_Users where UserName=@UserName)
set @RoleId=(Select distinct RoleId from TB_Users where UserName=@UserName)

end
print @RoleId
if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int

declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

if(@RoleId=1)
begin

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where  datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where datepart(year, PolicyToDate)=@Year and   Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end


set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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

else 
begin 
print 5
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where Producer=@UserName and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where Producer=@UserName  and datepart(year, PolicyToDate)=@Year  and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where Producer=@UserName and datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where Producer=@UserName and datepart(year, PolicyToDate)=@Year and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where Producer=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where  Producer=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where Producer=@UserName and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where  Producer=@UserName and datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where Producer=@UserName and  datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  Producer=@UserName and datepart(year, PolicyToDate)=@Year and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
end
else

select @IsExists=0
end


