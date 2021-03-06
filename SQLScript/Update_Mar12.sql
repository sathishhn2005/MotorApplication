USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[pGetDelegateData]    Script Date: 12-03-2021 13:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[pGetDelegateData]
as
begin


select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,Isnull(Status,'Under Process') as Status,
Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description,

CASE
    WHEN RenewalSumAssured = 0.00 THEN RevisedSumInsured+(RevisedSumInsured/100)*15
    ELSE Isnull(RenewalSumAssured ,RevisedSumInsured+(RevisedSumInsured/100)*15) 
END AS RenewalSumAssured,

Isnull(CallBackDate ,GETDATE()) as CallBackDate
From TB_Insurance order by InsuranceID desc


end

Go


/****** Object:  StoredProcedure [dbo].[pBulkDelegateStatus]    Script Date: 12-03-2021 13:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pBulkDelegateStatus]
(
  @InsuranceStatusJson NVARCHAR(MAX),
  @Loginid bigint,
  @UserName Nvarchar(500),
  @FileType Nvarchar(100),
  @ErrorMsg Nvarchar(4000) output
)
AS
BEGIN

SET @ErrorMsg =''

	SELECT * into #TempInsuranceStatus
	FROM OPENJSON (@InsuranceStatusJson, N'$')
	WITH (
			InsuranceID BIGINT N'$.InsuranceID',
			PolicyNo VARCHAR(200) N'$.PolicyNo',
			UserName VARCHAR(200) N'$.UserName',   
			AssignTo VARCHAR(200) N'$.AssignTo'  

		) AS InsuranceStatus;



BEGIN
   -- Check valitation

   	UPDATE TI SET 
			TI.[Producer]=T.[AssignTo],		
			TI.ModifiedBy =@UserName,
			TI.ModifiedAt=Getdate()
	From TB_Insurance TI
	INNER JOIN #TempInsuranceStatus T ON T.InsuranceID =TI.InsuranceID

   SET @ErrorMsg ='Upload Successfully'



		
END

end
go

