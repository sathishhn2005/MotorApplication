USE [MotorIns]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCallBackDetails]    Script Date: 04-01-2021 01:19:48 ******/

alter table tb_insurance add CallBackDate datetime
alter table tb_insurance add RenewalSumAssured decimal(18,2)

alter proc [dbo].[SP_GetCallBackDetails]
(
 @RoleId bigint,
 
 @ProducerName nvarchar(50)


)
as 
begin

--if(@RoleId=1)
--begin
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,'') as GrossPremium,Isnull(RevisedSumInsured,'') as RevisedSumInsured,Isnull(RenewalPremium,'') as RenewalPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description,
CallBackDate as CallBackDate

from TB_Insurance where CallBackDate is not null
--where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
--and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status)
order by InsuranceID desc

end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 04-01-2021 01:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter Proc [dbo].[SP_GetMastersView]
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
Isnull(Description ,'') as Description,Isnull(RenewalSumAssured ,0) as RenewalSumAssured,Isnull(CallBackDate ,GETDATE()) as CallBackDate
From TB_Insurance order by InsuranceID desc
end

GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 04-01-2021 01:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


alter PROC [dbo].[SP_InsUpdate] (
@PremiumAmount bigint,
@RivisedSI bigint,
@InsId bigint,


@GrossPremium bigint,
@Status nvarchar(40),
@Description nvarchar(500),
@UserName nvarchar(100),
@CallBackDate datetime,
@RenewalSumAssured decimal
) 
AS 
  BEGIN 
     UPDATE TB_Insurance SET RevisedSumInsured =@RivisedSI,	RenewalPremium =@PremiumAmount,	GrossPremium=@GrossPremium,status=@Status,Description=@Description,ModifiedAt=GETDATE(),
	 ModifiedBy=@UserName,CallBackDate=@CallBackDate ,RenewalSumAssured=@RenewalSumAssured from TB_Insurance where InsuranceID=@InsId
	
           
        END 
  
GO
