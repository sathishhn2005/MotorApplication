USE [MotorIns]
GO
alter table tb_insurance add Description nvarchar(500)
/****** Object:  StoredProcedure [dbo].[SP_TravelBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_TravelBulkUpload]
GO
/****** Object:  StoredProcedure [dbo].[SP_RegisterUser]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_RegisterUser]
GO
/****** Object:  StoredProcedure [dbo].[SP_NewInsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_NewInsUpdate]
GO
/****** Object:  StoredProcedure [dbo].[SP_NewInsSave]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_NewInsSave]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorTravelSave]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorTravelSave]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorInsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorInsUpdate]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorInsSave]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorInsSave]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorIndividualSave]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorIndividualSave]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorDomesticSave]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorDomesticSave]
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_MotorBulkUpload]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_InsUpdate]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_InsBulkUpload]
GO
/****** Object:  StoredProcedure [dbo].[SP_IndividualBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_IndividualBulkUpload]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseReport]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserwiseReport]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseInfo]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserwiseInfo]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserTravelDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserMDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserList]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo_bak]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserInsInfo_bak]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserInsInfo]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserIndividualDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetUserDomesticDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetSpecificBIDB]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSearch]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProducerMaster]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetProducerMaster]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPMDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetPMDashBoard]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMIDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetMIDashBoard]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetMastersView]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInsurance]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetInsurance]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoardYearWise]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetBIDashBoardYearWise]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard_bak]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetBIDashBoard_bak]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetBIDashBoard]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_GetBarChart]
GO
/****** Object:  StoredProcedure [dbo].[SP_DomesticBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
DROP PROCEDURE [dbo].[SP_DomesticBulkUpload]
GO
/****** Object:  StoredProcedure [dbo].[SP_DomesticBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop proc [SP_DomesticBulkUpload]
create proc [dbo].[SP_DomesticBulkUpload]
(
@UDT_MotorBulkUpload dbo.UDT_DomesticBulkUpload readonly

)
as
begin


insert into TB_Domestic(DraftNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NoofYears,Marketer,Broker_AgentCode,IssueFrom,SpecialDiscount,
Amount,AssuredName,AssuredName_Arabic,CivilID,PostBox,PostalCode,City,ResPhoneNo,OfficePhoneNo,MobileNo,HelperProfession,Gender,DateofBirth,Age,
PassportNo,Nationality,MazayaCard,SameasHouseMaidAddress,Sponsor_ProposerName,SponsorPostBox,SponsorPostalCode,SponsorCity,SponsorMobileNo,
SponsorOfficePhone,SponsorNationality,VIPCustomer,Email)

select 
DraftNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NoofYears,Marketer,Broker_AgentCode,IssueFrom,SpecialDiscount,
Amount,AssuredName,AssuredName_Arabic,CivilID,PostBox,PostalCode,City,ResPhoneNo,OfficePhoneNo,MobileNo,HelperProfession,Gender,DateofBirth,Age,
PassportNo,Nationality,MazayaCard,SameasHouseMaidAddress,Sponsor_ProposerName,SponsorPostBox,SponsorPostalCode,SponsorCity,SponsorMobileNo,
SponsorOfficePhone,SponsorNationality,VIPCustomer,Email
FROM @UDT_MotorBulkUpload WHERE PolicyNo NOT IN (SELECT DISTINCT POLICYNO FROM TB_Domestic )
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 30-12-2020 22:58:53 ******/
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

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId


--a.* b* totcnt
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
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetBIDashBoard] (@BusinessType nvarchar(50))
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

insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
where BusinessType=@BusinessType
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
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

GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard_bak]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetBIDashBoard_bak]  
(
@flag int
)
as Begin  
declare @sql nvarchar(max),@Day INT 

set @sql='


select P.UserId,Name, sum(case when IsDebitorCredit=''Debited'' 
                then -Amount 
                else Amount 
           end ) as WalletAmount, S.StartDate, O.DeliveryId,U.MobileNumber,u.Address, S.ProductName,O.Quantity,Day'+CAST(@Day AS nvarchar(5))+ ' AS Day,BottleCount,
DeliveryOrder,O.Quantity as IssuedQty,BottleReturned as ReceivedQty,S.Pincode,S.ProductId,o.Month,O.Year,O.CreditLimit   into #tt  from TB_Payment P
		   
		   Inner join TB_Users U on U.UserId=P.UserId
		   Inner join TB_Orders o on o.UserId=P.UserId
		   INNER JOIN TB_Subscription S ON S.UserId=O.UserId AND S.UserId=U.UserId
		   where IsDebitorCredit IN (''Credited'',''Debited'')
		   group by Name,p.UserId,S.StartDate, O.DeliveryId,U.MobileNumber,u.Address, S.ProductName,O.Quantity,BottleCount,
DeliveryOrder,BottleReturned,S.Pincode,S.ProductId,o.Month,O.Year,Day'+CAST(@Day AS nvarchar(5))+',CreditLimit
 select Cast(T.UserId as int) as UserId ,T.Name,sum(t.WalletAmount+t.CreditLimit) as CreditWalletAmount,T.WalletAmount ,T.StartDate ,T.DeliveryId ,T.MobileNumber ,T.Address,T.ProductName,T.Quantity ,T.Day ,T.BottleCount ,T.DeliveryOrder, T.ReceivedQty ,
T.IssuedQty ,T.Pincode,T.ProductId, CityName as Cityfrom,T.CreditLimit,dc.CityName as City FROM #tt t
inner join TB_DeliveryCity dc on dc.pincode=T.pincode
where T.ProductId=5 and  Month = DATEPART(m,  getdate())
AND year = DATEPART(yyyy,  getdate()) and T.Day>0 and t.Day*100<=(t.CreditLimit+t.WalletAmount)  
group by T.UserId ,T.Name,T.WalletAmount ,T.StartDate ,T.DeliveryId ,T.MobileNumber ,T.Address,T.ProductName,T.Quantity ,T.Day ,T.BottleCount ,T.DeliveryOrder, T.ReceivedQty ,
T.IssuedQty ,T.Pincode,T.ProductId, CityName ,t.creditlimit
having sum(t.WalletAmount+t.CreditLimit)>100'
exec sp_executesql @sql;
end
print @sql
--drop table #tt



GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoardYearWise]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetBIDashBoardYearWise] (@BusinessType nvarchar(50))
AS 
BEGIN
declare @tt table(
Calenderid int,
MonthName nvarchar(50),
Lost int,
Renewed int,
[Under process] int,
Year int
)
insert into @tt(Year,Lost,Renewed,[Under process])

select * from (select Year(PolicyFromDate) Year,PolicyNo,IsNull(Status,'Under process') as Status from
TB_Insurance M 


where BusinessType=@BusinessType
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table 

select Year as y,Renewed as a, sum(lost+Renewed+[Under process])  as b,@BusinessType as BusinessType from @tt  group by Lost,year,Renewed order by year

--declare @tt table(
--Calenderid int,
--MonthName nvarchar(50),
--Lost int,
--Renewed int,
--[Under process] int
--)

--begin 

--select  [2011], [2012], [2013], [2014], [2015], [2016], [2017],[2018],[2019],[2020],[2021]
--from
--(
--  SELECT i.PolicyNo, 
--     Cast(I.PolicyFromDate as Date) as M_Date,
--     year(i.PolicyFromDate) yr
--  FROM TB_Insurance I where BusinessType=@BusinessType
 
--) d
--pivot
--(

--  count(PolicyNo)
--  for yr in ([2011], [2012], [2013], [2014], [2015], [2016], [2017],[2018],[2019],[2020],[2021])
--) piv;
--END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetInsurance]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetInsurance]
(
@UserName nvarchar(50),
@Password nvarchar(50),
@RoleId bigint
)
as 
begin
declare @IsExists int
set @IsExists=(select count(*) RoleId from TB_Users where RoleId=@RoleId and UserName=@UserName and Password=@Password)
if(@IsExists>0)

begin

declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int,@MonPercent int,@YearPercent int

set @TotPoltoBeRenewed=(select count(*) from TB_Ins where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(
select count(*) from TB_Motor where status='OnHold')+
(select count(*) from TB_Domestic where status='OnHold')+
(select count(*) from TB_Individual where status='OnHold')+
(select count(*) from TB_Travel where status='OnHold')

set @NoOfPoRenewed=(
select count(*) from TB_Motor where status='Completed')+
(select count(*) from TB_Domestic where status='Completed')+
(select count(*) from TB_Individual where status='Completed')+
(select count(*) from TB_Travel where status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped')+
(select count(*) from TB_Domestic where status='Dropped')+
(select count(*) from TB_Individual where status='Dropped')+
(select count(*) from TB_Travel where status='Dropped')

set @YearPercent=sum(@TotPoltoBeRenewed+@TotPolforRenewal+@NoOfPoRenewed+@PolicyLost)/4

set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Ins WHERE cast(PolicyToDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(
select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Completed' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @MonPercent=sum(@TotPoltoBeRenewedCM+@TotPolOnHoldCM+@NoOfPoRenewedCM+@PolicyLostCM)/4

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@YearPercent as YP, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM,@MonPercent as MP
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GetMastersView]
as
begin

SELECT MOTORID, convert(NVARCHAR, IssueDate, 105) AS IssueDate,PolicyNo,TypeofTransaction,PolicyNumberifRenewal,Branch,PolicyStartDate,PolicyEndDate,AgentCode_BrokerCode,
UAEExtensionNilPremiaum,MazayaCard,Make_Model,BodyType,VehicleType,YearofManufacture,VehicleAge,Tonnage,DriverAge,
GeographicalArea,FirstRegDate,SeatingCapacity,RoadAssistance,SumInsured_RO,Voluntaryexcess,NoClaimsDiscount,LicenceFirstIssued,
SpecialDiscount,PurchaseType,AgencyRepair,RegistrationNo,MakeModel,EngineNo,ChassisNo,VehicleCC ,PlateColor,Color,Cylinder,
Hirepurchase_BankName,AssuredName,isnull(AssuredName_Arabic,'') as AssuredName_Arabic,CivilID_CRNo,PostBox,PostalCode,City,ResPhoneNo,Nationality,MobileNo,
EmailId,NillAdditionalDriver,Marketer,IssueFrom,VIPCustomer,isnull(SumInsured,0) as SumInsured	,isnull(PremiumAmount,0) as PremiumAmount	,
isnull(RivisedSI,0) as RivisedSI	,isnull(CustomerCode	,'') as CustomerCode	,isnull(CustomerName ,'') as CustomerName ,isnull(Status,'') as Status,
CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end as AgentCode

FROM TB_MOTOR where PolicyNo is not null and MotorId=-1

select TravelId,IssueDate,PolicyNo,Branch,Planning,NoOfDays,CoverageType,DepartureDate,DateOfReturn,DateOfBirth,TravelDestination,PurposeOfVisit,
Marketer,Broker_AgentCode,IssueFrom,AssuredName,Gender,CivilID,Mobile,PostBox,PostalCode,City,Email,LocalPersonName,LocalPersonNo,Nationality,
PassportNo,Extension,VipCustomer,Remarks,PolicyIsForOmanNationals_LegalResidentsOfOman,SpecialDiscount,AdditionalConditions,MazayaCard,
AssuredNameFamilyMember,DateOfBirthFamilyMember,Age,Relationship,Sex,PassportNoFamilyMember,ExtensionFamilyMember,isnull(SumInsured,0) as SumInsured	,isnull(PremiumAmount,0) as PremiumAmount	,
isnull(RivisedSI,0) as RivisedSI	,isnull(CustomerCode	,'') as CustomerCode	,isnull(CustomerName ,'') as CustomerName ,isnull(Status,'') as Status,
CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end as AgentCode
 from TB_Travel where TravelId=-1
 
select IndividualId,QuotationNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NameofthePlan,SumAssured,DateofBirth,Age,Gender,Broker_AgentCode,
LifeAssuredName,LifeAssuredName_Arabic,AssuredGender,AssuredDateofBirth,AssuredCountryofBirth,AssuredCivilID,AssuredBldgNo_Street,
AssuredPostBox,AssuredPostalCode,AssuredCity,AssuredResPhoneNo,AssuredMobileNo,AssuredEMail,Marketer,IssueFrom,Referral,ReferralRemarks,
NomineeName,NomineeName_Arabic,NomineeGender,NomineeDOB,NomineeCountryofBirth,NomineeCivilID,NomineeBldgNo_Street,NomineePostBox,NomineePostalCode,
NomineeCity,NomineeResPhoneNo,NomineeOfficePhoneNo,NomineeMobileNo,isnull(NomineeEMail,'') as NomineeEMail,isnull(AppointeeName,'') as 
AppointeeName,isnull(AppointeeAge,0) as AppointeeAge,AppointeeContactNo,
RelationshiptotheNominee,AppointeeCivilIDNo,isnull(SumInsured,0) as SumInsured	,isnull(PremiumAmount,0) as PremiumAmount	,
isnull(RivisedSI,0) as RivisedSI	,isnull(CustomerCode	,'') as CustomerCode	,isnull(CustomerName ,'') as CustomerName ,isnull(Status,'') as Status,
CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end as AgentCode

 from TB_Individual where IndividualId=-1
select DomesticId,DraftNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NoofYears,Marketer,Broker_AgentCode,IssueFrom,SpecialDiscount,
Amount,AssuredName,AssuredName_Arabic,CivilID,PostBox,PostalCode,City,ResPhoneNo,OfficePhoneNo,MobileNo,HelperProfession,Gender,DateofBirth,
Age,PassportNo,Nationality,MazayaCard,SameasHouseMaidAddress,Sponsor_ProposerName,SponsorPostBox,SponsorPostalCode,SponsorCity,SponsorMobileNo,
SponsorOfficePhone,SponsorNationality,VIPCustomer,Email,isnull(SumInsured,0) as SumInsured	,isnull(PremiumAmount,0) as PremiumAmount	,
isnull(RivisedSI,0) as RivisedSI	,isnull(CustomerCode	,'') as CustomerCode	,isnull(CustomerName ,'') as CustomerName ,isnull(Status,'') as Status,
CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end as AgentCode
from TB_DOMESTIC where DomesticId=-1
print 1
select ProducerCodeId,ProducerCode,ProducerName from tb_producercodemaster
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,Isnull(Status,'Under Process') as Status,
Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description
From TB_Insurance order by InsuranceID desc
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetMIDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetMIDashBoard]
(
@UserName nvarchar(50)
)
as
Begin

declare @TotalNoPoliciesYear bigint,@TotalNoPolUnderProcessYear bigint,@TotNoPolLostYear bigint,@TotalNoPolRenewedYear bigint,
@TotalNoPoliciesMonth bigint ,@TotalNoPoliciesLostMonth bigint,@TotalNoPoliciesUPMonth bigint,@TotalNoPoliciesRenewedMonth bigint
,@TotalNoPoliciesYearPremium bigint,@TotalNoPolUnderProcessYearPremium bigint,@TotNoPolLostYearPremium bigint,@TotalNoPolRenewedYearPremium bigint
,@TotalNoPoliciesMonthPremium bigint,@TotalNoPoliciesLostMonthPremium bigint,@TotalNoPoliciesUPMonthPremium bigint,@TotalNoPoliciesRenewedMonthPremium bigint,
@TotalNPYearPercent decimal(18,2),@TotalNPMonthPercent decimal(18,2),@TotalNPYearPercentPremium decimal(18,2),@TotalNPMonthPercentPremium decimal(18,2)

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Renewed')
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where status='Under Process' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where status='Renewed' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Lost' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Under Process' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where status='Renewed' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )


select  @TotalNoPoliciesYear as TNPYear , @TotalNoPolUnderProcessYear as TNPUnderProcessYear ,@TotNoPolLostYear as TNPLostYear,@TotalNoPolRenewedYear  as TNPRenewedYear,@TotalNPYearPercent as PercentageRenewedYear
,  @TotalNoPoliciesMonth as TNPMonth , @TotalNoPoliciesLostMonth as  TNPLostMonth,@TotalNoPoliciesUPMonth as TNPUnderProcessMonth,@TotalNoPoliciesRenewedMonth  as TNPRenewedMonth,@TotalNPMonthPercent as PercentageRenewedMonth

,  @TotalNoPoliciesYearPremium as TNPYearPremium , @TotalNoPolUnderProcessYearPremium as TNPUPYearPremium ,@TotNoPolLostYearPremium as TNPLostYearPremium,
@TotalNoPolRenewedYearPremium  as TNPRenewedYearPremium,@TotalNPYearPercentPremium as PercentPremiumRenewedYear
,  @TotalNoPoliciesMonthPremium as TNPMonthPremium , @TotalNoPoliciesLostMonthPremium as  TNPLostMonthPremium,@TotalNoPoliciesUPMonthPremium as TNPUPMonthPremium,
@TotalNoPoliciesRenewedMonthPremium  as TNPRenewedMonthPremium,@TotalNPMonthPercentPremium as PercentPremiumRenewedMonth,@UserName as UserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPMDashBoard]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetPMDashBoard]
(@RoleName nvarchar(50)
)
as
begin
declare @RoleId int
set @RoleId=(select RoleId FROM TB_RoleMaster WHERE RoleName=@RoleName)
select distinct ProducerCodeId, U.UserName+' - '+PCM.ProducerName as ProducerName,u.UserName from TB_Users U 

Inner join TB_ProducerCodeMaster PCM on PCM.ProducerCode=U.UserName where u.RoleId=@RoleId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProducerMaster]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_GetProducerMaster]

(@AgentCodeBrokerCode nvarchar(50)
)
as
begin
declare @U_Name nvarchar(20)
if(@AgentCodeBrokerCode like '%-%')
begin
set @U_Name=(select LEFT(@AgentCodeBrokerCode, CHARINDEX('-', @AgentCodeBrokerCode) - 1) )
end
else
set @U_Name=@AgentCodeBrokerCode

select ProducerCodeId,ProducerCode,ProducerName from tb_producercodemaster where ProducerCode=@U_Name
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSearch]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetSearch]
(
 @RoleId bigint,
 @PolicyNo nvarchar(50),
 @DivisionName nvarchar(50),
 @AssuredName nvarchar(50),
 @ProductName nvarchar(50),
 @Status nvarchar(50),
 @ProducerName nvarchar(50)


)
as 
begin
if(@PolicyNo='') set @PolicyNo=null 
if(@DivisionName='') set @DivisionName=null 
if(@AssuredName='') set @AssuredName=null 
if(@ProductName='') set @ProductName=null 
if(@Status='') set @Status=null 
if(@RoleId=1)
begin
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName from TB_Insurance 
where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status)
order by InsuranceID desc

end
else
begin
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName from TB_Insurance 
where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status) and Producer=@ProducerName
order by InsuranceID desc
end
--select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
--Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
--Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
--Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
--Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,Isnull(Status,'Under Process') as Status,
--Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode  From TB_Insurance
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetSpecificBIDB] (@BusinessType nvarchar(50),@ProducerName nvarchar(50))
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

insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
where BusinessType=@BusinessType and Producer=@ProducerName
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under process]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
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

GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 30-12-2020 22:58:53 ******/
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
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Domestic' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 30-12-2020 22:58:53 ******/
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
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Individual' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Individual' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetUserInsInfo]
(
@UserName nvarchar(50),
@Password nvarchar(50),
@RoleId bigint
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

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
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

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



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
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
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

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



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


GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo_bak]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetUserInsInfo_bak]
(
@UserName nvarchar(50),
@Password nvarchar(50),
@RoleId bigint
)
as 
begin
declare @IsExists int
set @IsExists=(select count(*) RoleId from TB_Users where RoleId=@RoleId and UserName=@UserName and Password=@Password)
if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
if(@RoleId=1)
begin
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Domestic where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Individual where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Travel where DateOfReturn between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(
select count(*) from TB_Motor where status='OnHold')+
(select count(*) from TB_Domestic where status='OnHold')+
(select count(*) from TB_Individual where status='OnHold')+
(select count(*) from TB_Travel where status='OnHold')

set @NoOfPoRenewed=(
select count(*) from TB_Motor where status='Completed')+
(select count(*) from TB_Domestic where status='Completed')+
(select count(*) from TB_Individual where status='Completed')+
(select count(*) from TB_Travel where status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped')+
(select count(*) from TB_Domestic where status='Dropped')+
(select count(*) from TB_Individual where status='Dropped')+
(select count(*) from TB_Travel where status='Dropped')

set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(
select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Completed' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0))



select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM,@UserName as UserName
end
else if(@RoleId=2)
begin

set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and 
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName
)+
(select count(*) from TB_Domestic where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+
(select count(*) from TB_Domestic where Status='OnHold' and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where Status='OnHold'and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where Status='OnHold'and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @NoOfPoRenewed=(select count(*) from TB_Motor where status='Completed' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+ --PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+-- PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @TotPolOnHoldCM=(
select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where status='Completed' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between GETDATE() and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)


select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName,0,0,0,0
end
else if(@RoleId=3)
begin
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+
(select count(*) from TB_Domestic where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and

@UserName=
CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)+
(select count(*) from TB_Individual where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)+
(select count(*) from TB_Travel where DateOfReturn<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)


set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold' and 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+
(select count(*) from TB_Domestic where Status='OnHold' and 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where Status='OnHold'and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where Status='OnHold'and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @NoOfPoRenewed=(select count(*) from TB_Motor where status='Completed' and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+ --PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped' and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+-- PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)
select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName,0,0,0,0
end
else if(@RoleId=4)
begin
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Domestic where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Individual where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Travel where DateOfReturn<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold')+
(select count(*) from TB_Domestic where Status='OnHold')+
(select count(*) from TB_Individual where Status='OnHold')+
(select count(*) from TB_Travel where Status='OnHold')

set @NoOfPoRenewed=(
select count(*) from TB_Motor where status='Completed')+
(select count(*) from TB_Domestic where status='Completed')+
(select count(*) from TB_Individual where status='Completed')+
(select count(*) from TB_Travel where status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped')+
(select count(*) from TB_Domestic where status='Dropped')+
(select count(*) from TB_Individual where status='Dropped')+
(select count(*) from TB_Travel where status='Dropped')



select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName,0,0,0,0
end

else if(@RoleId=5)
begin
print 1
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and 
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName
)+
(select count(*) from TB_Domestic where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+
(select count(*) from TB_Domestic where Status='OnHold' and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where Status='OnHold'and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where Status='OnHold'and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @NoOfPoRenewed=(select count(*) from TB_Motor where status='Completed' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+ --PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped' and LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 1)=@UserName)+-- PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 1)=@UserName)
select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName,0,0,0,0
end
end
else

select @IsExists=0
end


GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetUserList]
(
@BusinessType nvarchar(40)
)
as
begin
declare @RoleId bigint
set @RoleId=(select RoleId from TB_RoleMaster where RoleName=@BusinessType)
select UserId,UserName,Password,RoleId,RoleName from TB_Users where RoleId=@RoleId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 30-12-2020 22:58:53 ******/
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
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Motor' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Motor' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 30-12-2020 22:58:53 ******/
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


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Travel' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)

--set @TotalNPMonthPercent=(select Cast(Cast((@TotalNoPoliciesRenewedMonth*100)/@TotalNoPoliciesMonth as decimal(18,2)) as varchar(5)) + ' %' as Percentage)


set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where  InsType='Travel' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Travel' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseInfo]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetUserwiseInfo]
(
@UserName nvarchar(50),
@Password nvarchar(50),
@RoleId bigint
)
as 
begin
declare @IsExists int
set @IsExists=(select count(*) RoleId from TB_Users where RoleId=@RoleId and UserName=@UserName and Password=@Password)
if(@IsExists>0)

begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
declare @TotPoltoBeRenewedCM int,@TotPolOnHoldCM int,@NoOfPoRenewedCM int,@PolicyLostCM int
if(@RoleId=1)
begin
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Domestic where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Individual where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))+
(select count(*) from TB_Travel where DateOfReturn between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(
select count(*) from TB_Motor where status='OnHold')+
(select count(*) from TB_Domestic where status='OnHold')+
(select count(*) from TB_Individual where status='OnHold')+
(select count(*) from TB_Travel where status='OnHold')

set @NoOfPoRenewed=(
select count(*) from TB_Motor where status='Completed')+
(select count(*) from TB_Domestic where status='Completed')+
(select count(*) from TB_Individual where status='Completed')+
(select count(*) from TB_Travel where status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped')+
(select count(*) from TB_Domestic where status='Dropped')+
(select count(*) from TB_Individual where status='Dropped')+
(select count(*) from TB_Travel where status='Dropped')

set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(
select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Completed' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))+
(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))



select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end
else 
begin
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode else LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) end)+
(select count(*) from TB_Domestic where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)+
(select count(*) from TB_Individual where PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)+
(select count(*) from TB_Travel where DateOfReturn between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)


set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold' and @UserName=CASE WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) end)+(select count(*) from TB_Domestic where Status='OnHold' and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)+
(select count(*) from TB_Individual where Status='OnHold'and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)+(select count(*) from TB_Travel where Status='OnHold'and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)
set @NoOfPoRenewed=(select count(*) from TB_Motor where status='Completed' and @UserName=CASE WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) end)+ 
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped' and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+-- PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @TotPolOnHoldCM=(
select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2)	
end
)+
(select count(*) from TB_Travel where status='Completed' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)

and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end

)+
(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)+
(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end

)


select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseReport]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetUserwiseReport]
(@UserName nvarchar(50))
as
begin
declare @TotPoltoBeRenewed int,@TotPolforRenewal int,@NoOfPoRenewed int,@PolicyLost int
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+
(select count(*) from TB_Domestic where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and

@UserName=
CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)+
(select count(*) from TB_Individual where PolicyEndDate<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)+
(select count(*) from TB_Travel where DateOfReturn<DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0))and

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)


set @TotPolforRenewal=(select count(*) from TB_Motor where Status='OnHold' and 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+
(select count(*) from TB_Domestic where Status='OnHold' and 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where Status='OnHold'and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn< EOMONTH(getdate(),1)and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @NoOfPoRenewed=(select count(*) from TB_Motor where status='Completed' and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+ --PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)

set @PolicyLost=(select count(*) from TB_Motor where status='Dropped' and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end
)+-- PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)))+
(select count(*) from TB_Domestic where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Individual where PolicyEndDate=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)+
(select count(*) from TB_Travel where DateOfReturn=DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0))and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end
)
select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName

end
GO
/****** Object:  StoredProcedure [dbo].[SP_IndividualBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_IndividualBulkUpload]
(
@UDT_MotorBulkUpload dbo.UDT_IndividualBulkUpload readonly

)
as
begin
insert into TB_Individual(QuotationNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NameofthePlan,SumAssured,DateofBirth,Age,Gender,Broker_AgentCode,
LifeAssuredName,LifeAssuredName_Arabic,AssuredGender,AssuredDateofBirth,AssuredCountryofBirth,AssuredCivilID,AssuredBldgNo_Street,AssuredPostBox,
AssuredPostalCode,AssuredCity,AssuredResPhoneNo,AssuredMobileNo,AssuredEMail,Marketer,IssueFrom,Referral,ReferralRemarks,NomineeName,NomineeName_Arabic,
NomineeGender,NomineeDOB,NomineeCountryofBirth,NomineeCivilID,NomineeBldgNo_Street,NomineePostBox,NomineePostalCode,NomineeCity,NomineeResPhoneNo,
NomineeOfficePhoneNo,NomineeMobileNo,NomineeEMail,AppointeeName,AppointeeAge,AppointeeContactNo,RelationshiptotheNominee,AppointeeCivilIDNo)

select 
QuotationNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NameofthePlan,SumAssured,DateofBirth,Age,Gender,Broker_AgentCode,
LifeAssuredName,LifeAssuredName_Arabic,AssuredGender,AssuredDateofBirth,AssuredCountryofBirth,AssuredCivilID,AssuredBldgNo_Street,AssuredPostBox,
AssuredPostalCode,AssuredCity,AssuredResPhoneNo,AssuredMobileNo,AssuredEMail,Marketer,IssueFrom,Referral,ReferralRemarks,NomineeName,NomineeName_Arabic,
NomineeGender,NomineeDOB,NomineeCountryofBirth,NomineeCivilID,NomineeBldgNo_Street,NomineePostBox,NomineePostalCode,NomineeCity,NomineeResPhoneNo,
NomineeOfficePhoneNo,NomineeMobileNo,NomineeEMail,AppointeeName,AppointeeAge,AppointeeContactNo,RelationshiptotheNominee,AppointeeCivilIDNo
FROM @UDT_MotorBulkUpload WHERE QuotationNo NOT IN (SELECT DISTINCT QuotationNo FROM TB_Individual) AND PolicyNo NOT IN 
(SELECT DISTINCT PolicyNo FROM TB_Individual)

end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_InsBulkUpload] (@UDT_NewInsSave dbo.UDT_NewInsSave 
readonly,
@UserName nvarchar(100) )
AS 
  BEGIN 

            INSERT INTO TB_Insurance
                        (DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,PolicyFromDate,
PolicyToDate,GrossPremium,RevisedSumInsured,RenewalPremium,MarketingExecutive,Remarks,DivnCode,CustomerCode,Charges,Status,InsType,Producer,EntryType,CreatedBy) 
            SELECT DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,PolicyFromDate,
PolicyToDate,GrossPremium,RevisedSumInsured,RenewalPremium,MarketingExecutive,Remarks,DivisionCode,CustomerCode,Charges,Status,InsType,ProducerName,'Bulk Upload',@UserName
				   
            FROM   @UDT_NewInsSave where PolicyNo not in (select distinct PolicyNo from TB_Insurance)
        
		
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_InsUpdate] (
@PremiumAmount bigint,
@RivisedSI bigint,
@InsId bigint,


@GrossPremium bigint,
@Status nvarchar(40),
@Description nvarchar(500),
@UserName nvarchar(100)

) 
AS 
  BEGIN 
     UPDATE TB_Insurance SET RevisedSumInsured =@RivisedSI,	RenewalPremium =@PremiumAmount,	GrossPremium=@GrossPremium,status=@Status,Description=@Description,ModifiedAt=GETDATE(),
	 ModifiedBy=@UserName where InsuranceID=@InsId
	
           
        END 
  
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_MotorBulkUpload]
(
@UDT_MotorBulkUpload dbo.UDT_MotorBulkUpload readonly

)
as
begin

insert into tb_motor(
IssueDate,PolicyNo,TypeofTransaction,PolicyNumberifRenewal,Branch,PolicyStartDate,PolicyEndDate,AgentCode_BrokerCode,
UAEExtensionNilPremiaum,MazayaCard,Make_Model,BodyType,VehicleType,YearofManufacture,VehicleAge,Tonnage,DriverAge,
GeographicalArea,FirstRegDate,SeatingCapacity,RoadAssistance,SumInsured_RO,Voluntaryexcess,NoClaimsDiscount,LicenceFirstIssued,SpecialDiscount,PurchaseType,
AgencyRepair,RegistrationNo,MakeModel,EngineNo,ChassisNo,VehicleCC ,PlateColor,Color,Cylinder,
Hirepurchase_BankName,AssuredName,CivilID_CRNo,PostBox,PostalCode,City,ResPhoneNo,Nationality,MobileNo,
EmailId,NillAdditionalDriver,Marketer,IssueFrom,VIPCustomer
)
select 
IssueDate,PolicyNo,TypeofTransaction,PolicyNumberifRenewal,Branch,PolicyStartDate,PolicyEndDate,AgentCode_BrokerCode,
UAEExtensionNilPremiaum,MazayaCard,Make_Model,BodyType,VehicleType,YearofManufacture,VehicleAge,Tonnage,DriverAge,
GeographicalArea,FirstRegDate,SeatingCapacity,RoadAssistance,SumInsured_RO,Voluntaryexcess,NoClaimsDiscount,LicenceFirstIssued,SpecialDiscount,PurchaseType,
AgencyRepair,RegistrationNo,MakeModel,EngineNo,ChassisNo,VehicleCC ,PlateColor,Color,Cylinder,
Hirepurchase_BankName,AssuredName,CivilID_CRNo,PostBox,PostalCode,City,ResPhoneNo,Nationality,AssuredMobileNo,
EmailId,NillAdditionalDriver,Marketer,IssueFrom,VIPCustomer 
FROM @UDT_MotorBulkUpload WHERE PolicyNo NOT IN (SELECT DISTINCT PolicyNo FROM TB_Motor)

end
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorDomesticSave]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_MotorDomesticSave] (@UDT_MotorDomesticInsert dbo.[UDT_DomesticInsSave] 
readonly) 
AS 
  BEGIN 
      DECLARE @PolicyNo NVARCHAR(50) 

      SET @PolicyNo=(SELECT DISTINCT PolicyNo 
                     FROM   @UDT_MotorDomesticInsert) 

      IF NOT EXISTS(SELECT 1 
                    FROM   TB_Domestic M 
                    WHERE  PolicyNo = @PolicyNo) 
        BEGIN 
		PRINT 1
            INSERT INTO TB_Domestic 
                        (
DraftNo,
PolicyNo,
IssueDate,
Branch,
PolicyStartDate,
PolicyEndDate,
NoofYears,
Marketer,
Broker_AgentCode,
IssueFrom,
SpecialDiscount,
Amount,
AssuredName,
AssuredName_Arabic,
CivilID,
PostBox,
PostalCode,
City,
ResPhoneNo,
OfficePhoneNo,
MobileNo,
HelperProfession,
Gender,
DateofBirth,
Age,
PassportNo,
Nationality,
MazayaCard,
SameasHouseMaidAddress,
Sponsor_ProposerName,
SponsorPostBox,
SponsorPostalCode,
SponsorCity,
SponsorMobileNo,
SponsorOfficePhone,
SponsorNationality,
VIPCustomer,
Email)
select 
DraftNo,
PolicyNo,
IssueDate,
Branch,
PolicyStartDate,
PolicyEndDate,
NoofYears,
Marketer,
Broker_AgentCode,
IssueFrom,
SpecialDiscount,
Amount,
AssuredName,
AssuredName_Arabic,
CivilID,
PostBox,
PostalCode,
City,
ResPhoneNo,
OfficePhoneNo,
MobileNo,
HelperProfession,
Gender,
DateofBirth,
Age,
PassportNo,
Nationality,
MazayaCard,
SameasHouseMaidAddress,
Sponsor_ProposerName,
SponsorPostBox,
SponsorPostalCode,
SponsorCity,
SponsorMobileNo,
SponsorOfficePhone,
SponsorNationality,
VIPCustomer,
Email
            FROM   @UDT_MotorDomesticInsert 
        END 

ELSE
        BEGIN 
		PRINT 2
            UPDATE M 
            SET    
			M.DraftNo=UDT.DraftNo,
M.PolicyNo=UDT.PolicyNo,
M.IssueDate=UDT.IssueDate,
M.Branch=UDT.Branch,
M.PolicyStartDate=UDT.PolicyStartDate,
M.PolicyEndDate=UDT.PolicyEndDate,
M.NoofYears=UDT.NoofYears,
M.Marketer=UDT.Marketer,
M.Broker_AgentCode=UDT.Broker_AgentCode,
M.IssueFrom=UDT.IssueFrom,
M.SpecialDiscount=UDT.SpecialDiscount,
M.Amount=UDT.Amount,
M.AssuredName=UDT.AssuredName,
M.AssuredName_Arabic=UDT.AssuredName_Arabic,
M.CivilID=UDT.CivilID,
M.PostBox=UDT.PostBox,
M.PostalCode=UDT.PostalCode,
M.City=UDT.City,
M.ResPhoneNo=UDT.ResPhoneNo,
M.OfficePhoneNo=UDT.OfficePhoneNo,
M.MobileNo=UDT.MobileNo,
M.HelperProfession=UDT.HelperProfession,
M.Gender=UDT.Gender,
M.DateofBirth=UDT.DateofBirth,
M.Age=UDT.Age,
M.PassportNo=UDT.PassportNo,
M.Nationality=UDT.Nationality,
M.MazayaCard=UDT.MazayaCard,
M.SameasHouseMaidAddress=UDT.SameasHouseMaidAddress,
M.Sponsor_ProposerName=UDT.Sponsor_ProposerName,
M.SponsorPostBox=UDT.SponsorPostBox,
M.SponsorPostalCode=UDT.SponsorPostalCode,
M.SponsorCity=UDT.SponsorCity,
M.SponsorMobileNo=UDT.SponsorMobileNo,
M.SponsorOfficePhone=UDT.SponsorOfficePhone,
M.SponsorNationality=UDT.SponsorNationality,
M.VIPCustomer=UDT.VIPCustomer,
M.Email=UDT.Email

				   
            FROM   TB_Domestic M 
                   INNER JOIN @UDT_MotorDomesticInsert UDT 
                           ON UDT.PolicyNo = M.PolicyNo 
        END 
  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorIndividualSave]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_MotorIndividualSave] (@UDT_MotorIndividualInsert dbo.[UDT_IndividualInsSave] 
readonly) 
AS 
  BEGIN 
      DECLARE @PolicyNo NVARCHAR(50) 

      SET @PolicyNo=(SELECT DISTINCT PolicyNo 
                     FROM   @UDT_MotorIndividualInsert) 

      IF NOT EXISTS(SELECT 1 
                    FROM   TB_Individual M 
                    WHERE  PolicyNo = @PolicyNo) 
        BEGIN 
		PRINT 1
            INSERT INTO TB_Individual 
                        (QuotationNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NameofthePlan,SumAssured,DateofBirth,
Age,Gender,Broker_AgentCode,LifeAssuredName,LifeAssuredName_Arabic,AssuredGender,AssuredDateofBirth,AssuredCountryofBirth,AssuredCivilID,
AssuredBldgNo_Street,AssuredPostBox,AssuredPostalCode,AssuredCity,AssuredResPhoneNo,AssuredMobileNo,AssuredEMail,Marketer,IssueFrom,Referral,
ReferralRemarks,NomineeName,NomineeName_Arabic,NomineeGender,NomineeDOB,NomineeCountryofBirth,NomineeCivilID,NomineeBldgNo_Street,NomineePostBox,
NomineePostalCode,NomineeCity,NomineeResPhoneNo,NomineeOfficePhoneNo,NomineeMobileNo,NomineeEMail,AppointeeName)
select QuotationNo,PolicyNo,IssueDate,Branch,PolicyStartDate,PolicyEndDate,NameofthePlan,SumAssured,DateofBirth,
Age,Gender,Broker_AgentCode,LifeAssuredName,LifeAssuredName_Arabic,AssuredGender,AssuredDateofBirth,AssuredCountryofBirth,AssuredCivilID,
AssuredBldgNo_Street,AssuredPostBox,AssuredPostalCode,AssuredCity,AssuredResPhoneNo,AssuredMobileNo,AssuredEMail,Marketer,IssueFrom,Referral,
ReferralRemarks,NomineeName,NomineeName_Arabic,NomineeGender,NomineeDOB,NomineeCountryofBirth,NomineeCivilID,NomineeBldgNo_Street,NomineePostBox,
NomineePostalCode,NomineeCity,NomineeResPhoneNo,NomineeOfficePhoneNo,NomineeMobileNo,NomineeEMail,AppointeeName
            FROM   @UDT_MotorIndividualInsert 
        END 

ELSE
        BEGIN 
		PRINT 2
            UPDATE M 
            SET    
			M.QuotationNo=UDT.QuotationNo,
M.PolicyNo=UDT.PolicyNo,
M.IssueDate=UDT.IssueDate,
M.Branch=UDT.Branch,
M.PolicyStartDate=UDT.PolicyStartDate,
M.PolicyEndDate=UDT.PolicyEndDate,
M.NameofthePlan=UDT.NameofthePlan,
M.SumAssured=UDT.SumAssured,
M.DateofBirth=UDT.DateofBirth,
M.Age=UDT.Age,
M.Gender=UDT.Gender,
M.Broker_AgentCode=UDT.Broker_AgentCode,
M.LifeAssuredName=UDT.LifeAssuredName,
M.LifeAssuredName_Arabic=UDT.LifeAssuredName_Arabic,
M.AssuredGender=UDT.AssuredGender,
M.AssuredDateofBirth=UDT.AssuredDateofBirth,
M.AssuredCountryofBirth=UDT.AssuredCountryofBirth,
M.AssuredCivilID=UDT.AssuredCivilID,
M.AssuredBldgNo_Street=UDT.AssuredBldgNo_Street,
M.AssuredPostBox=UDT.AssuredPostBox,
M.AssuredPostalCode=UDT.AssuredPostalCode,
M.AssuredCity=UDT.AssuredCity,
M.AssuredResPhoneNo=UDT.AssuredResPhoneNo,
M.AssuredMobileNo=UDT.AssuredMobileNo,
M.AssuredEMail=UDT.AssuredEMail,
M.Marketer=UDT.Marketer,
M.IssueFrom=UDT.IssueFrom,
M.Referral=UDT.Referral,
M.ReferralRemarks=UDT.ReferralRemarks,
M.NomineeName=UDT.NomineeName,
M.NomineeName_Arabic=UDT.NomineeName_Arabic,
M.NomineeGender=UDT.NomineeGender,
M.NomineeDOB=UDT.NomineeDOB,
M.NomineeCountryofBirth=UDT.NomineeCountryofBirth,
M.NomineeCivilID=UDT.NomineeCivilID,
M.NomineeBldgNo_Street=UDT.NomineeBldgNo_Street,
M.NomineePostBox=UDT.NomineePostBox,
M.NomineePostalCode=UDT.NomineePostalCode,
M.NomineeCity=UDT.NomineeCity,
M.NomineeResPhoneNo=UDT.NomineeResPhoneNo,
M.NomineeOfficePhoneNo=UDT.NomineeOfficePhoneNo,
M.NomineeMobileNo=UDT.NomineeMobileNo,
M.NomineeEMail=UDT.NomineeEMail,
M.AppointeeName=UDT.AppointeeName,
M.AppointeeAge=UDT.AppointeeAge,
M.AppointeeContactNo=UDT.AppointeeContactNo,
M.RelationshiptotheNominee=UDT.RelationshiptotheNominee,
M.AppointeeCivilIDNo=UDT.AppointeeCivilIDNo

				   
            FROM   TB_Individual M 
                   INNER JOIN @UDT_MotorIndividualInsert UDT 
                           ON UDT.PolicyNo = M.PolicyNo 
        END 
  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorInsSave]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_MotorInsSave] (@UDT_MotorInsSave dbo.UDT_MOTORINSSAVE 
readonly) 
AS 
  BEGIN 
      DECLARE @PolicyNo NVARCHAR(50) 

      SET @PolicyNo=(SELECT DISTINCT PolicyNo 
                     FROM   @UDT_MotorInsSave) 

      IF NOT EXISTS(SELECT 1 
                    FROM   TB_Motor M 
                    WHERE  PolicyNo = @PolicyNo) 
        BEGIN 
		PRINT 1
            INSERT INTO tb_motor 
                        (IssueDate, 
                         PolicyNo, 
                         TypeofTransaction, 
                         PolicyNumberifRenewal, 
                         Branch, 
                         PolicyStartDate, 
                         PolicyEndDate, 
                         AgentCode_BrokerCode, 
                         UAEExtensionNilPremiaum, 
                         MazayaCard, 
                         Make_Model, 
                         BodyType, 
                         VehicleType, 
                         YearofManufacture, 
                         VehicleAge, 
                         Tonnage, 
                         DriverAge, 
                         GeographicalArea, 
                         FirstRegDate, 
                         SeatingCapacity, 
                         RoadAssistance, 
                         SumInsured_RO, 
                         Voluntaryexcess, 
                         NoClaimsDiscount, 
                         LicenceFirstIssued, 
                         SpecialDiscount, 
                         PurchaseType, 
                         AgencyRepair, 
                         RegistrationNo, 
                         MakeModel, 
                         EngineNo, 
                         ChassisNo, 
                         VehicleCC , 
                         PlateColor, 
                         Color, 
                         Cylinder, 
                         Hirepurchase_BankName, 
                         AssuredName, 
                         AssuredName_Arabic, 
                         CivilID_CRNo, 
                         PostBox, 
                         PostalCode, 
                         City, 
                         ResPhoneNo, 
                         Nationality, 
                         MobileNo, 
                         EmailId, 
                         NillAdditionalDriver, 
                         Marketer, 
                         IssueFrom, 
                         VIPCustomer,CreatedAt) 
            SELECT IssueDate, 
                   PolicyNo, 
                   TypeofTransaction, 
                   PolicyNumberifRenewal, 
                   Branch, 
                   PolicyStartDate, 
                   PolicyEndDate, 
                   AgentCode_BrokerCode, 
                   UAEExtensionNilPremiaum, 
                   MazayaCard, 
                   Make_Model, 
                   BodyType, 
                   VehicleType, 
                   YearofManufacture, 
                   VehicleAge, 
                   Tonnage, 
                   DriverAge, 
                   GeographicalArea, 
                   FirstRegDate, 
                   SeatingCapacity, 
                   RoadAssistance, 
                   SumInsured_RO, 
                   Voluntaryexcess, 
                   NoClaimsDiscount, 
                   LicenceFirstIssued, 
                   SpecialDiscount, 
                   PurchaseType, 
                   AgencyRepair, 
                   RegistrationNo, 
                   MakeModel, 
                   EngineNo, 
                   ChassisNo, 
                   VehicleCC , 
                   PlateColor, 
                   Color, 
                   Cylinder, 
                   Hirepurchase_BankName, 
                   AssuredName, 
                   AssuredName_Arabic, 
                   CivilID_CRNo, 
                   PostBox, 
                   PostalCode, 
                   City, 
                   ResPhoneNo, 
                   Nationality, 
                   MobileNo, 
                   EmailId, 
                   NillAdditionalDriver, 
                   Marketer, 
                   IssueFrom, 
                   VIPCustomer ,
				   GETDATE()
            FROM   @UDT_MotorInsSave 
        END 

ELSE
        BEGIN 
		PRINT 2
            UPDATE M 
            SET    M.IssueDate = UDT.IssueDate, 
                   M.PolicyNo = UDT.PolicyNo, 
                   M.TypeofTransaction = UDT.TypeofTransaction, 
                   M.PolicyNumberifRenewal = UDT.PolicyNumberifRenewal, 
                   M.Branch = UDT.Branch, 
                   M.PolicyStartDate = UDT.PolicyStartDate , 
                   M.PolicyEndDate = UDT.PolicyEndDate, 
                   M.AgentCode_BrokerCode = UDT.AgentCode_BrokerCode, 
                   M.UAEExtensionNilPremiaum = UDT.UAEExtensionNilPremiaum, 
                   M.MazayaCard = UDT.MazayaCard, 
                   M.Make_Model = UDT.Make_Model, 
                   M.BodyType = UDT.BodyType, 
                   M.VehicleType = UDT.VehicleType, 
                   M.YearofManufacture = UDT.YearofManufacture, 
                   M.VehicleAge = UDT.VehicleAge, 
                   M.Tonnage = UDT.Tonnage, 
                   M.DriverAge = UDT.DriverAge, 
                   M.GeographicalArea = UDT.GeographicalArea, 
                   M.FirstRegDate = UDT.FirstRegDate, 
                   M.SeatingCapacity = UDT.SeatingCapacity, 
                   M.RoadAssistance = UDT.RoadAssistance, 
                   M.SumInsured_RO = UDT.SumInsured_RO, 
                   M.Voluntaryexcess = UDT.Voluntaryexcess, 
                   M.NoClaimsDiscount = UDT.NoClaimsDiscount, 
                   M.LicenceFirstIssued = UDT.LicenceFirstIssued, 
                   M.SpecialDiscount = UDT.SpecialDiscount, 
                   M.PurchaseType = UDT.PurchaseType, 
                   M.AgencyRepair = UDT.AgencyRepair, 
                   M.RegistrationNo = UDT.RegistrationNo, 
                   M.MakeModel = UDT.MakeModel, 
                   M.EngineNo = UDT.EngineNo, 
                   M.ChassisNo = UDT.ChassisNo, 
                   M.VehicleCC  = UDT.VehicleCC , 
                   M.PlateColor = UDT.PlateColor, 
                   M.Color = UDT.Color, 
                   M.Cylinder = UDT.Cylinder, 
                   M.Hirepurchase_BankName = UDT.Hirepurchase_BankName, 
                   M.AssuredName = UDT.AssuredName, 
                   M.AssuredName_Arabic = UDT.AssuredName_Arabic, 
                   M.CivilID_CRNo = UDT.CivilID_CRNo, 
                   M.PostBox = UDT.PostBox, 
                   M.PostalCode = UDT.PostalCode, 
                   M.City = UDT.City, 
                   M.ResPhoneNo = UDT.ResPhoneNo, 
                   M.Nationality = UDT.Nationality, 
                   M.MobileNo = UDT.MobileNo, 
                   M.EmailId = UDT.EmailId, 
                   M.NillAdditionalDriver = UDT.NillAdditionalDriver, 
                   M.Marketer = UDT.Marketer, 
                   M.IssueFrom = UDT.IssueFrom, 
                   M.VIPCustomer = UDT.VIPCustomer ,
				   M.ModifiedAt=getdate()
            FROM   TB_Motor M 
                   INNER JOIN @UDT_MotorInsSave UDT 
                           ON UDT.PolicyNo = M.PolicyNo 
        END 
  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorInsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_MotorInsUpdate] (
@CustomerCode nvarchar(50),
@CustomerName nvarchar(50),
@SumInsured bigint,
@PremiumAmount bigint,
@RivisedSI bigint,
@MotorId bigint,
@Status nvarchar(40)
) 
AS 
  BEGIN 
     UPDATE TB_Motor SET SumInsured =@SumInsured,	PremiumAmount =@PremiumAmount,	RivisedSI =@RivisedSI,	CustomerCode=@CustomerCode
	 ,	CustomerName=@CustomerName,status=@Status where MotorId=@MotorId
	
           
        END 
  
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorTravelSave]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_MotorTravelSave] (@UDT_MotorTravelInsert dbo.[UDT_TravelInsSave] 
readonly) 
AS 
  BEGIN 
      DECLARE @PolicyNo NVARCHAR(50) 

      SET @PolicyNo=(SELECT DISTINCT PolicyNo 
                     FROM   @UDT_MotorTravelInsert) 

      IF NOT EXISTS(SELECT 1 
                    FROM   TB_Travel M 
                    WHERE  PolicyNo = @PolicyNo) 
        BEGIN 
		PRINT 1
            INSERT INTO TB_Travel 
                        (IssueDate,
PolicyNo,
Branch,
Planning,
NoOfDays,
CoverageType,
DepartureDate,
DateOfReturn,
DateOfBirth,
TravelDestination,
PurposeOfVisit,
Marketer,
Broker_AgentCode,
IssueFrom,
AssuredName,
Gender,
CivilID,
Mobile,
PostBox,
PostalCode,
City,
Email,
LocalPersonName,
LocalPersonNo,
Nationality,
PassportNo,
Extension,
VipCustomer,
Remarks,
PolicyIsForOmanNationals_LegalResidentsOfOman,
SpecialDiscount,
AdditionalConditions,
MazayaCard,
AssuredNameFamilyMember,
DateOfBirthFamilyMember,
Age,
Relationship,
Sex,
PassportNoFamilyMember,
ExtensionFamilyMember) 
            SELECT IssueDate,
PolicyNo,
Branch,
Planning,
NoOfDays,
CoverageType,
DepartureDate,
DateOfReturn,
DateOfBirth,
TravelDestination,
PurposeOfVisit,
Marketer,
Broker_AgentCode,
IssueFrom,
AssuredName,
Gender,
CivilID,
Mobile,
PostBox,
PostalCode,
City,
Email,
LocalPersonName,
LocalPersonNo,
Nationality,
PassportNo,
Extension,
VipCustomer,
Remarks,
PolicyIsForOmanNationals_LegalResidentsOfOman,
SpecialDiscount,
AdditionalConditions,
MazayaCard,
AssuredNameFamilyMember,
DateOfBirthFamilyMember,
Age,
Relationship,
Sex,
PassportNoFamilyMember,
ExtensionFamilyMember
            FROM   @UDT_MotorTravelInsert 
        END 

ELSE
        BEGIN 
		PRINT 2
            UPDATE M 
            SET    M.IssueDate = UDT.IssueDate, 
                   M.PolicyNo = UDT.PolicyNo, 
                   M.Branch = UDT.Branch, 
                   M.Planning = UDT.Planning , 
                   M.NoOfDays = UDT.NoOfDays , 
                   M.MazayaCard = UDT.MazayaCard, 
                   M.CoverageType = UDT.CoverageType, 
                   M.DepartureDate = UDT.DepartureDate, 
                   M.DateOfBirth = UDT.DateOfBirth, 
                   M.DateOfReturn = UDT.DateOfReturn, 
                   M.TravelDestination = UDT.TravelDestination, 
                   M.PurposeOfVisit = UDT.PurposeOfVisit, 
                   M.Marketer = UDT.Marketer, 
                   M.Broker_AgentCode = UDT.Broker_AgentCode, 
                   M.IssueFrom = UDT.IssueFrom, 
                   M.AssuredName = UDT.AssuredName, 
                   M.Gender = UDT.Gender, 
                   M.CivilID = UDT.CivilID, 
                   M.Mobile = UDT.Mobile, 
                   M.PostBox = UDT.PostBox, 
                   M.PostalCode = UDT.PostalCode, 
                   M.SpecialDiscount = UDT.SpecialDiscount, 
                   M.City = UDT.City, 
                   M.Email = UDT.Email, 
                   M.LocalPersonName = UDT.LocalPersonName, 
                   M.LocalPersonNo = UDT.LocalPersonNo, 
                   M.Nationality = UDT.Nationality, 
                   M.PassportNo = UDT.PassportNo, 
                   M.Extension = UDT.Extension, 
                   M.VipCustomer = UDT.VipCustomer, 
                   M.Remarks = UDT.Remarks, 
                   M.PolicyIsForOmanNationals_LegalResidentsOfOman = UDT.PolicyIsForOmanNationals_LegalResidentsOfOman, 
                   
                   M.AdditionalConditions = UDT.AdditionalConditions, 
                   M.AssuredNameFamilyMember = UDT.AssuredNameFamilyMember, 
                   M.DateOfBirthFamilyMember = UDT.DateOfBirthFamilyMember, 
                   M.Age = UDT.Age, 
                   M.Relationship = UDT.Relationship, 
                   M.Sex = UDT.Sex, 
                   M.PassportNoFamilyMember = UDT.PassportNoFamilyMember, 
                   M.ExtensionFamilyMember = UDT.ExtensionFamilyMember 
				   
            FROM   TB_Travel M 
                   INNER JOIN @UDT_MotorTravelInsert UDT 
                           ON UDT.PolicyNo = M.PolicyNo 
        END 
  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_NewInsSave]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_NewInsSave] (@UDT_NewInsSave dbo.UDT_NewInsSave 
readonly,
@UserName nvarchar(100),
@Return int output) 
AS 
  BEGIN 
      DECLARE @PolicyNo NVARCHAR(50) 

      SET @PolicyNo=(SELECT DISTINCT PolicyNo 
                     FROM   @UDT_NewInsSave) 

      IF NOT EXISTS(SELECT 1 
                    FROM   TB_Insurance M 
                    WHERE  PolicyNo = @PolicyNo) 
        BEGIN 
		
		PRINT 1
            INSERT INTO TB_Insurance
                        (DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,PolicyFromDate,
PolicyToDate,GrossPremium,RevisedSumInsured,RenewalPremium,MarketingExecutive,Remarks,DivnCode,CustomerCode,Charges,Status,InsType,Producer,CreatedBy,EntryType) 
            SELECT DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,PolicyFromDate,
PolicyToDate,GrossPremium,RevisedSumInsured,RenewalPremium,MarketingExecutive,Remarks,DivisionCode,CustomerCode,Charges,Status,InsType,ProducerName,@UserName,'Single Data Entry'
				   
            FROM   @UDT_NewInsSave 
			SET @Return=SCOPE_IDENTITY()
        END 
		

  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_NewInsUpdate]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_NewInsUpdate] (@UDT_NewInsSave dbo.UDT_NewInsSave 
readonly,
@UserName nvarchar(100),
@Return int output) 
AS 
  BEGIN 
      
				
            UPDATE M 
            SET    M.DivisionName = UDT.DivisionName, 
M.ProductCode = UDT.ProductCode, 
M.ProductName = UDT.ProductName, 
M.BusinessType = UDT.BusinessType, 
M.PolicyNo = UDT.PolicyNo, 

M.AssuredName = UDT.AssuredName, 
M.AssuredMobile = UDT.AssuredMobile, 
M.CustomerName = UDT.CustomerName, 
M.SourceCode = UDT.SourceCode, 
M.SourceName = UDT.SourceName, 

M.CustomerCategory = UDT.CustomerCategory, 
M.PolicyFromDate = UDT.PolicyFromDate, 
M.PolicyToDate = UDT.PolicyToDate, 
M.GrossPremium = UDT.GrossPremium, 
M.RevisedSumInsured = UDT.RevisedSumInsured, 

M.RenewalPremium = UDT.RenewalPremium, 
M.MarketingExecutive = UDT.MarketingExecutive, 
M.Remarks = UDT.Remarks, 
M.DivisionCode=UDT.DivisionCode,
M.Status=UDT.Status,
M.InsType=UDT.InsType,
M.Charges=UDT.Charges,
M.Producer=UDT.ProducerName,
				   M.ModifiedAt=getdate(),
				   M.ModifiedBy=@UserName
            FROM   TB_Insurance M 
                   INNER JOIN @UDT_NewInsSave UDT 
                           ON UDT.PolicyNo = M.PolicyNo 
						   SET @Return=@@ROWCOUNT
        END 
GO
/****** Object:  StoredProcedure [dbo].[SP_RegisterUser]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RegisterUser]
(
@UserName nvarchar(50),
@RoleId bigint,
@Password nvarchar(50),
@Return int output
)
as
begin
declare @RoleName nvarchar(50)
set @RoleName=(select distinct RoleName from TB_RoleMaster where RoleId=@RoleId)
if not exists(select 1 from TB_Users where UserName=@UserName)
begin
Insert into TB_Users(UserName,Password,RoleId,RoleName,CreatedBy)
select @UserName,@Password,@RoleId,@RoleName,'SuperAdmin' 
SET @Return=SCOPE_IDENTITY()
end
else
begin
set @Return=0
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TravelBulkUpload]    Script Date: 30-12-2020 22:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[SP_TravelBulkUpload]
(
@UDT_MotorBulkUpload dbo.UDT_TravelBulkUpload readonly

)
as
begin

insert into TB_Travel(IssueDate,PolicyNo,Branch,Planning,NoOfDays,CoverageType,DepartureDate,DateOfReturn,DateOfBirth,TravelDestination,PurposeOfVisit,
Marketer,Broker_AgentCode,IssueFrom,AssuredName,Gender,CivilID,Mobile,PostBox,PostalCode,City,Email,LocalPersonName,LocalPersonNo,Nationality,
PassportNo,Extension,VipCustomer,Remarks,PolicyIsForOmanNationals_LegalResidentsOfOman,SpecialDiscount,AdditionalConditions,
MazayaCard,AssuredNameFamilyMember,DateOfBirthFamilyMember,Age,Relationship,Sex,PassportNoFamilyMember,ExtensionFamilyMember)

select 
IssueDate,PolicyNo,Branch,Planning,NoOfDays,CoverageType,DepartureDate,DateOfReturn,DateOfBirth,TravelDestination,PurposeOfVisit,
Marketer,Broker_AgentCode,IssueFrom,AssuredName,Gender,CivilID,Mobile,PostBox,PostalCode,City,Email,LocalPersonName,LocalPersonNo,Nationality,
PassportNo,Extension,VipCustomer,Remarks,PolicyIsForOmanNationals_LegalResidentsOfOman,SpecialDiscount,AdditionalConditions,
MazayaCard,AssuredNameFamilyMember,DateOfBirthFamilyMember,Age,Relationship,Sex,PassportNoFamilyMember,ExtensionFamilyMember
FROM @UDT_MotorBulkUpload WHERE PolicyNo NOT IN (SELECT DISTINCT PolicyNo FROM TB_Travel)


end
GO
