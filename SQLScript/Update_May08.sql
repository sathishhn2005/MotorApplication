USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[pBulkUploadInsurance]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[pBulkUploadInsurance]
(
  @InsuranceJson NVARCHAR(MAX),
  @Loginid bigint,
  @UserName Nvarchar(500),
  @FileType Nvarchar(100),
  @ErrorMsg Nvarchar(Max) output
)
AS
BEGIN

SET @ErrorMsg =''

	SELECT * into #TempInsurance
	FROM OPENJSON (@InsuranceJson, N'$')
	WITH (
			
			DivisionCode nvarchar(1000) N'$.DivisionCode',
			ProductCode nvarchar(1000) N'$.ProductCode',
			ClassName nvarchar(1000) N'$.ClassName',
			ProductName nvarchar(1000) N'$.ProductName',
			PolicyNumber nvarchar(1000) N'$.PolicyNumber',
			InsuredName nvarchar(1000) N'$.InsuredName',
			PeriodFrom datetime N'$.PeriodFrom',
			PeriodTo datetime N'$.PeriodTo',
			CustomerPhoneNo nvarchar(1000) N'$.CustomerPhoneNo',
			CustomerType nvarchar(1000) N'$.CustomerType',
			CustomerCode nvarchar(1000) N'$.CustomerCode',
			CustomerName nvarchar(1000) N'$.CustomerName',
			SourceCode nvarchar(1000) N'$.SourceCode',
			SourceName nvarchar(1000) N'$.SourceName',
			VehicleType nvarchar(1000) N'$.VehicleType',
			VehicleMake nvarchar(1000) N'$.VehicleMake',
			RegNo nvarchar(1000) N'$.RegNo',
			EngineNo nvarchar(1000) N'$.EngineNo',
			ChassisNo nvarchar(1000) N'$.ChassisNo',
			SumInsured Decimal(18,2) N'$.SumInsured',
			TotalGrossPremium Decimal(18,2) N'$.TotalGrossPremium',
			Geo nvarchar(1000) N'$.Geo',
			RevisedSumInsured  Decimal(18,2) N'$.RevisedSumInsured',
			RenewalStatus nvarchar(1000) N'$.RenewalStatus',
			MarketingCode nvarchar(1000) N'$.MarketingCode'

		) AS InsuranceStatus;
	
	 Select 
		PolicyNumber,PolicyNO INTO #FindDuplicatePolicy
	 From #TempInsurance  TI
	 LEFT JOIN  TB_Insurance  TBI ON  Trim(TBI.PolicyNO) = Trim(TI.PolicyNumber)
	 Where TBI.PolicyNO  IS NOT NULL
	

	 INSERT INTO TB_Insurance(DivisionCode,ProductCode,BusinessType,ProductName,PolicyNO,AssuredName,
							 PolicyFromDate,PolicyToDate,AssuredMobile,InsType,CustomerCode,CustomerName,SourceCode,SourceName,
							 VehicleType,VehicleMake,RegNo,EngineNo,ChassisNo,SumInsured,RevisedSumInsured,GrossPremium,
							 Status,MarketingExecutive,Geo,CreatedBy)

	 Select 
		DivisionCode,ProductCode,ClassName,ProductName,PolicyNumber,InsuredName,PeriodFrom,PeriodTo,CustomerPhoneNo,
		CustomerType,CustomerCode,CustomerName,SourceCode,SourceName,VehicleType,VehicleMake,RegNo,EngineNo,ChassisNo,
		SumInsured,RevisedSumInsured,TotalGrossPremium,RenewalStatus,MarketingCode,Geo,@UserName
	 From #TempInsurance 
     Where PolicyNumber NOT IN (Select PolicyNumber From #FindDuplicatePolicy)


Update TBI Set 
			DivisionCode=TI.DivisionCode,
			ProductCode=TI.ProductCode,
			BusinessType=TI.ClassName,
			ProductName=TI.ProductName,
			AssuredName=TI.InsuredName,
			PolicyFromDate=TI.PeriodFrom,
			PolicyToDate=TI.PeriodTo,
			AssuredMobile=TI.CustomerPhoneNo,
			InsType=TI.CustomerType,
			CustomerCode=TI.CustomerCode,
			CustomerName=TI.CustomerName,
			SourceCode=TI.SourceCode,
			SourceName=TI.SourceName,
			VehicleType=TI.VehicleType,
			VehicleMake=TI.VehicleMake,
			RegNo=TI.RegNo,
			EngineNo=TI.EngineNo,
			ChassisNo=TI.ChassisNo,
			SumInsured=TI.SumInsured,
			RevisedSumInsured=TI.RevisedSumInsured,
			GrossPremium=TI.TotalGrossPremium,
			Status=TI.RenewalStatus,
			MarketingExecutive=TI.MarketingCode,
			Geo=TI.Geo,
			CreatedBy=@UserName

From TB_Insurance TBI
INNER JOIN #FindDuplicatePolicy TDP ON Trim(TBI.PolicyNO) = Trim(TDP.PolicyNumber)
INNER JOIN #TempInsurance TI ON Trim(TI.PolicyNO) = Trim(TDP.PolicyNumber)
	

	 --if( (Select Count(PolicyNumber) From #FindDuplicatePolicy)>0)
	 --Begin 
	 --  Select  @ErrorMsg=
		--					( 
		--						 SELECT  ',' + PolicyNumber 
		--							 FROM #FindDuplicatePolicy FOR XML PATH('') 
		--					) 
	 --End
	 --Else
	 --Begin
	 --  SET @ErrorMsg ='Successfully'
	 --END

	 SET @ErrorMsg ='Successfully'


	Drop table #TempInsurance
	Drop table #FindDuplicatePolicy
END




GO
/****** Object:  StoredProcedure [dbo].[PGetSearchMasterMotor]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proC [dbo].[PGetSearchMasterMotor]
(
	 @RoleId bigint,
	 @PolicyNo nvarchar(50),
	 @DivisionName nvarchar(50),
	 @AssuredName nvarchar(50),
	 @ProductName nvarchar(50),
	 @Status nvarchar(50),
	 @ProducerName nvarchar(50)=NULL,
	 @PolicyFromDate datetime = NULL,
	 @PolicyToDate datetime=NULL,
	 @PageNo int,
	 @PageType Nvarchar(100)

 )
AS 
BEGIN

if(@PolicyNo='') set @PolicyNo=null 
--if(@DivisionName='') set @DivisionName=null 
--if(@AssuredName='') set @AssuredName=null 
--if(@ProductName='') set @ProductName=null 
if(@Status='') set @Status=null 
if(@ProducerName='') set @ProducerName=null 
if(@DivisionName='') set @DivisionName=null 


Declare @Query Nvarchar(Max)=''
Declare @Where Nvarchar(Max)=''

Declare @FromDate Nvarchar(50)=''
Declare @ToDate Nvarchar(50)=''

IF ((@PolicyFromDate='1753-01-01 00:00:00' OR @PolicyFromDate ='' OR @PolicyFromDate ='1900-01-01') 
	AND (@PolicyToDate ='' OR @PolicyToDate='1753-01-01 00:00:00' OR @PolicyToDate ='1900-01-01' ))
BEGIN 
 
 SET @PolicyFromDate = NULL -- DATEADD(DD, -120, GETDATE())
 SET @PolicyToDate = NULL --GETDATE()

END
ELSE
BEGIN
 SET @FromDate = CONVERT(varchar, CONVERT(date,@PolicyFromDate))
 SET @ToDate =Convert(varchar, CONVERT(date,@PolicyToDate))
END




Set @Query ='SELECT Top 2000
				Isnull(InsuranceID,'''') as InsuranceID,Isnull(DivisionName,'''') as DivisionName,Isnull(ProductCode,'''') as ProductCode,
				Isnull(ProductName,'''') as ProductName,Isnull(BusinessType,'''') as BusinessType,
				Isnull(PolicyNo,'''') as PolicyNo,Isnull(AssuredName,'''') as AssuredName,
				Isnull(AssuredMobile,'''') as AssuredMobile,Isnull(CustomerName,'''') as CustomerName,Isnull(SourceCode,'''') as SourceCode,
				Isnull(SourceName,'''') as SourceName,Isnull(CustomerCategory,'''') as CustomerCategory,
				Isnull(PolicyFromDate,'''') as PolicyFromDate,Isnull(PolicyToDate,'''') as PolicyToDate,
				Isnull(GrossPremium,'''') as GrossPremium,Isnull(RevisedSumInsured,'''') as RevisedSumInsured,Isnull(RenewalPremium,'''') as RenewalPremium,
				Isnull(MarketingExecutive,'''') as MarketingExecutive,
				Isnull(Remarks,'''') as Remarks,Isnull(DivnCode,'''') as DivnCode,Isnull(CustomerCode,'''') as CustomerCode,Isnull(Charges,'''') as Charges,
				LTRIM(RTRIM(isnull(Status,''Under Process''))) as Status,
				Isnull(InsType,'''') as InsType,Isnull(CreatedAt,'''') as CreatedAt,Isnull(ModifiedAt,'''') as ModifiedAt,
				Isnull(DivisionCode ,'''') as DivisionCode,
				Isnull(Producer ,'''') as ProducerName 
       FROM TB_Insurance '

IF(@RoleId=1)
	BEGIN
			IF(@PolicyNo is not null)
				BEGIN 
				SET @Where ='PolicyNO = '''+@PolicyNo+''''
				END
			ELSE 
			BEGIN

				IF (@PolicyFromDate IS NOT NULL AND  @PolicyToDate IS NOT NULL )
				BEGIN
					--SET @Where = 'CONVERT(date, PolicyFromDate) >= '''+@FromDate+''' AND CONVERT(Date,PolicyToDate) <= '''+@ToDate+'''';
					SET @Where = ' CONVERT(date, PolicyToDate) BETWEEN '''+@FromDate+''' AND '''+ @ToDate+''' '
				END
				
				IF(@Status IS NOT NULL)
				BEGIN 
				    IF (@Where ='')
					  SET @Where  = 'Status = '''+@Status+''''
					ELSE 
					  SET @Where  = @Where + ' AND Status = '''+@Status+''''
				END


				IF(@ProducerName IS NOT NULL)
				BEGIN 
				    IF (@Where ='')
					 SET  @Where  = 'CustomerCode = '''+@ProducerName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND CustomerCode = '''+@ProducerName+''''
				END
				IF(@DivisionName IS NOT NULL)
				BEGIN 
				    IF (@Where ='')
					 SET  @Where  = 'Divisioncode = '''+@DivisionName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND Divisioncode = '''+@DivisionName+''''
				END

			END
	END

ELSE
  BEGIN 


    IF(@ProducerName IS NOT NULL)
	BEGIN 
	   
		SET  @Where = 'CustomerCode = '''+@ProducerName+''''
	END		

	IF(@PolicyNo is not null)
	BEGIN 
	  SET @Where = @Where +' AND  PolicyNO = '''+@PolicyNo+''''
	END

	IF (@PolicyFromDate IS NOT NULL AND  @PolicyToDate IS NOT NULL )
	BEGIN
		-- SET @Where = @Where+ ' AND Convert(Date,PolicyFromDate ) >= '''+@FromDate+''' AND Convert(Date,PolicyToDate) <= '''+@ToDate+'''';
		SET @Where = @Where + ' AND CONVERT(date, PolicyToDate) BETWEEN '''+@FromDate+''' AND '''+ @ToDate+''' '
	END

	IF(@Status IS NOT NULL)
	BEGIN 
		SET @Where = @Where +' AND Status = '''+@Status+''''
	END
	IF(@DivisionName IS NOT NULL)
	BEGIN 
		SET @Where = @Where +' AND Divisioncode = '''+@DivisionName+''''
	END

	
  END

  IF (@Where !='')
  BEGIN
   -- Select @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' 
    EXEC ( @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' )
  END
  ELSE
  BEGIN
   EXEC (@Query)
  END

END




GO
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetBarChart] (@flag int,@UserName nvarchar(100))
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

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Travel') t
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

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) ) t
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

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)  where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and InsType='Motor') t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId


--a.* b* totcnt
END
if(@flag=2)
begin 

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Travel' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=3)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Individual' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=4)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where InsType='Domestic' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId

END
if(@flag=5)
begin
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate) where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
end
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetSpecificBIDB] (@BusinessType nvarchar(50),@ProducerName nvarchar(50))
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

GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


alter proc [dbo].[SP_GetUserDomesticDB]
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
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


alter proc [dbo].[SP_GetUserIndividualDB]
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
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(RenewalPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RenewalPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetUserInsInfo]
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

set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

--set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate) )
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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


set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where 
@UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END
and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Renewed')


if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Lost' and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate) )
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))


if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate)  and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) AND Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetUserList]
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
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetUserMDB]
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


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where  InsType='Motor' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Motor' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where  InsType='Motor' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Motor' and status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Motor' and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))

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
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END 
and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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
/****** Object:  StoredProcedure [dbo].[SP_GetYearwisePolicyReport]    Script Date: 08-05-2021 21:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[SP_GetYearwisePolicyReport]
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


set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where datepart(year, PolicyToDate)=@Year and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end


set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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
set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END
and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END  and datepart(year, PolicyToDate)=@Year  and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Renewed')
if(@TotalNoPolRenewedYear>0 and @TotalNoPoliciesYear>0) 
begin
set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)
end
else
begin
set @TotalNPYearPercent=0
end

set @TotalNoPoliciesMonth=(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END 
and status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--select @TotalNoPoliciesMonth,@TotalNoPoliciesRenewedMonth

if(@TotalNoPoliciesRenewedMonth>0 and @TotalNoPoliciesMonth>0) 
begin
set @TotalNPMonthPercent= ( @TotalNoPoliciesRenewedMonth *100 / @TotalNoPoliciesMonth)
end
else
begin
set @TotalNPMonthPercent=0
end


set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode

ELSE CustomerCode
END and  status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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


insert into TB_Users(UserName,Password,RoleId,CreatedAt,CreatedBy)
values
('01-Head Office','1234',4,GETDATE(),'Admin'),
('02-Salalah Branch Office','1234',4,GETDATE(),'Admin'),
('03-Sohar Branch Office','1234',4,GETDATE(),'Admin'),
('04-Nizwa Branch Office','1234',4,GETDATE(),'Admin'),
('05-Seeb Branch Office','1234',4,GETDATE(),'Admin')

Go