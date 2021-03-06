USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 01-04-2021 10:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[SP_InsUpdate] (
@PremiumAmount bigint,
@RivisedSI bigint,
@InsId bigint,


@GrossPremium bigint,
@Status nvarchar(40),
@Description nvarchar(500),
@UserName nvarchar(100),
@CallBackDate datetime2,
@RenewalSumAssured decimal,
@Flag int
) 
AS 
  BEGIN 
  if(@Flag=1) 
  begin
set @CallBackDate=null
  end
     UPDATE TB_Insurance SET RevisedSumInsured =@RivisedSI,	RenewalPremium =@PremiumAmount,	GrossPremium=@GrossPremium,status=@Status,Description=@Description,ModifiedAt=GETDATE(),
	 ModifiedBy=@UserName,CallBackDate=@CallBackDate ,RenewalSumAssured=@RenewalSumAssured,Remarks=@Description from TB_Insurance where InsuranceID=@InsId
	
           
        END 
  
go

/****** Object:  StoredProcedure [dbo].[SP_GetSearch]    Script Date: 01-04-2021 10:49:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SP_GetSearch]
(
 @RoleId bigint,
 @PolicyNo nvarchar(50),
 @DivisionName nvarchar(50),
 @AssuredName nvarchar(50),
 @ProductName nvarchar(50),
 @Status nvarchar(50),
 @ProducerName nvarchar(50),
 @PolicyFromDate datetime2,
 @PolicyToDate datetime2
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
--and PolicyFromDate = @PolicyFromDate and PolicyToDate = @PolicyToDate
--and (@PolicyFromDate is null or  PolicyFromDate >= @PolicyFromDate) and (@PolicyToDate is null or  PolicyToDate >= @PolicyToDate)
or PolicyFromDate >= @PolicyFromDate or PolicyToDate <= @PolicyToDate
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
end

