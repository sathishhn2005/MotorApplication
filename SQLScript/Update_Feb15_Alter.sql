USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 15-02-2021 18:24:55 ******/
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
	 ModifiedBy=@UserName,CallBackDate=@CallBackDate ,RenewalSumAssured=@RenewalSumAssured from TB_Insurance where InsuranceID=@InsId
	
           
        END 
  
