USE [MotorIns]
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_DomesticBulkUpload] AS TABLE(
	[DraftNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NoofYears] [int] NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [datetime] NULL,
	[SpecialDiscount] [bigint] NULL,
	[Amount] [bigint] NULL,
	[AssuredName] [nvarchar](40) NULL,
	[AssuredName_Arabic] [nvarchar](50) NULL,
	[CivilID] [bigint] NULL,
	[PostBox] [bigint] NULL,
	[PostalCode] [bigint] NULL,
	[City] [nvarchar](30) NULL,
	[ResPhoneNo] [bigint] NULL,
	[OfficePhoneNo] [bigint] NULL,
	[MobileNo] [bigint] NULL,
	[HelperProfession] [nvarchar](30) NULL,
	[Gender] [nvarchar](10) NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[PassportNo] [bigint] NULL,
	[Nationality] [nvarchar](20) NULL,
	[MazayaCard] [nvarchar](10) NULL,
	[SameasHouseMaidAddress] [nvarchar](10) NULL,
	[Sponsor_ProposerName] [nvarchar](50) NULL,
	[SponsorPostBox] [bigint] NULL,
	[SponsorPostalCode] [bigint] NULL,
	[SponsorCity] [nvarchar](30) NULL,
	[SponsorMobileNo] [bigint] NULL,
	[SponsorOfficePhone] [bigint] NULL,
	[SponsorNationality] [nvarchar](30) NULL,
	[VIPCustomer] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticInsSave]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_DomesticInsSave] AS TABLE(
	[DraftNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NoofYears] [int] NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [datetime] NULL,
	[SpecialDiscount] [bigint] NULL,
	[Amount] [bigint] NULL,
	[AssuredName] [nvarchar](40) NULL,
	[AssuredName_Arabic] [nvarchar](50) NULL,
	[CivilID] [bigint] NULL,
	[PostBox] [bigint] NULL,
	[PostalCode] [bigint] NULL,
	[City] [nvarchar](30) NULL,
	[ResPhoneNo] [bigint] NULL,
	[OfficePhoneNo] [bigint] NULL,
	[MobileNo] [bigint] NULL,
	[HelperProfession] [nvarchar](30) NULL,
	[Gender] [nvarchar](10) NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[PassportNo] [bigint] NULL,
	[Nationality] [nvarchar](20) NULL,
	[MazayaCard] [nvarchar](10) NULL,
	[SameasHouseMaidAddress] [nvarchar](10) NULL,
	[Sponsor_ProposerName] [nvarchar](50) NULL,
	[SponsorPostBox] [bigint] NULL,
	[SponsorPostalCode] [bigint] NULL,
	[SponsorCity] [nvarchar](30) NULL,
	[SponsorMobileNo] [bigint] NULL,
	[SponsorOfficePhone] [bigint] NULL,
	[SponsorNationality] [nvarchar](30) NULL,
	[VIPCustomer] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_IndividualBulkUpload] AS TABLE(
	[QuotationNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NameofthePlan] [nvarchar](20) NULL,
	[SumAssured] [bigint] NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[LifeAssuredName] [nvarchar](30) NULL,
	[LifeAssuredName_Arabic] [nvarchar](50) NULL,
	[AssuredGender] [nvarchar](10) NULL,
	[AssuredDateofBirth] [datetime] NULL,
	[AssuredCountryofBirth] [nvarchar](50) NULL,
	[AssuredCivilID] [nvarchar](50) NULL,
	[AssuredBldgNo_Street] [nvarchar](50) NULL,
	[AssuredPostBox] [nvarchar](50) NULL,
	[AssuredPostalCode] [nvarchar](20) NULL,
	[AssuredCity] [nvarchar](50) NULL,
	[AssuredResPhoneNo] [nvarchar](15) NULL,
	[AssuredMobileNo] [nvarchar](15) NULL,
	[AssuredEMail] [nvarchar](35) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](25) NULL,
	[Referral] [nvarchar](5) NULL,
	[ReferralRemarks] [nvarchar](100) NULL,
	[NomineeName] [nvarchar](50) NULL,
	[NomineeName_Arabic] [nvarchar](50) NULL,
	[NomineeGender] [nvarchar](10) NULL,
	[NomineeDOB] [datetime] NULL,
	[NomineeCountryofBirth] [nvarchar](50) NULL,
	[NomineeCivilID] [nvarchar](50) NULL,
	[NomineeBldgNo_Street] [nvarchar](50) NULL,
	[NomineePostBox] [nvarchar](50) NULL,
	[NomineePostalCode] [nvarchar](10) NULL,
	[NomineeCity] [nvarchar](50) NULL,
	[NomineeResPhoneNo] [nvarchar](15) NULL,
	[NomineeOfficePhoneNo] [nvarchar](15) NULL,
	[NomineeMobileNo] [nvarchar](15) NULL,
	[NomineeEMail] [nvarchar](35) NULL,
	[AppointeeName] [nvarchar](50) NULL,
	[AppointeeAge] [int] NULL,
	[AppointeeContactNo] [nvarchar](15) NULL,
	[RelationshiptotheNominee] [nvarchar](50) NULL,
	[AppointeeCivilIDNo] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualInsSave]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_IndividualInsSave] AS TABLE(
	[QuotationNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NameofthePlan] [nvarchar](20) NULL,
	[SumAssured] [bigint] NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[LifeAssuredName] [nvarchar](30) NULL,
	[LifeAssuredName_Arabic] [nvarchar](50) NULL,
	[AssuredGender] [nvarchar](10) NULL,
	[AssuredDateofBirth] [datetime] NULL,
	[AssuredCountryofBirth] [nvarchar](50) NULL,
	[AssuredCivilID] [nvarchar](50) NULL,
	[AssuredBldgNo_Street] [nvarchar](50) NULL,
	[AssuredPostBox] [nvarchar](50) NULL,
	[AssuredPostalCode] [nvarchar](20) NULL,
	[AssuredCity] [nvarchar](50) NULL,
	[AssuredResPhoneNo] [nvarchar](15) NULL,
	[AssuredMobileNo] [nvarchar](15) NULL,
	[AssuredEMail] [nvarchar](35) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](25) NULL,
	[Referral] [nvarchar](5) NULL,
	[ReferralRemarks] [nvarchar](100) NULL,
	[NomineeName] [nvarchar](50) NULL,
	[NomineeName_Arabic] [nvarchar](50) NULL,
	[NomineeGender] [nvarchar](10) NULL,
	[NomineeDOB] [datetime] NULL,
	[NomineeCountryofBirth] [nvarchar](50) NULL,
	[NomineeCivilID] [nvarchar](50) NULL,
	[NomineeBldgNo_Street] [nvarchar](50) NULL,
	[NomineePostBox] [nvarchar](50) NULL,
	[NomineePostalCode] [nvarchar](10) NULL,
	[NomineeCity] [nvarchar](50) NULL,
	[NomineeResPhoneNo] [nvarchar](15) NULL,
	[NomineeOfficePhoneNo] [nvarchar](15) NULL,
	[NomineeMobileNo] [nvarchar](15) NULL,
	[NomineeEMail] [nvarchar](35) NULL,
	[AppointeeName] [nvarchar](50) NULL,
	[AppointeeAge] [int] NULL,
	[AppointeeContactNo] [nvarchar](15) NULL,
	[RelationshiptotheNominee] [nvarchar](50) NULL,
	[AppointeeCivilIDNo] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_MotorBulkUpload] AS TABLE(
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[TypeofTransaction] [nvarchar](50) NULL,
	[PolicyNumberifRenewal] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[AgentCode_BrokerCode] [nvarchar](50) NULL,
	[UAEExtensionNilPremiaum] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[Make_Model] [nvarchar](50) NULL,
	[BodyType] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[YearofManufacture] [int] NULL,
	[VehicleAge] [nvarchar](3) NULL,
	[Tonnage] [nvarchar](3) NULL,
	[DriverAge] [nvarchar](3) NULL,
	[GeographicalArea] [nvarchar](50) NULL,
	[FirstRegDate] [datetime] NULL,
	[SeatingCapacity] [int] NULL,
	[RoadAssistance] [nvarchar](50) NULL,
	[SumInsured_RO] [bigint] NULL,
	[Voluntaryexcess] [nvarchar](50) NULL,
	[NoClaimsDiscount] [nvarchar](50) NULL,
	[LicenceFirstIssued] [datetime] NULL,
	[SpecialDiscount] [nvarchar](5) NULL,
	[PurchaseType] [nvarchar](50) NULL,
	[AgencyRepair] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[MakeModel] [nvarchar](50) NULL,
	[EngineNo] [nvarchar](50) NULL,
	[ChassisNo] [nvarchar](50) NULL,
	[VehicleCC] [nvarchar](50) NULL,
	[PlateColor] [nvarchar](15) NULL,
	[Color] [nvarchar](15) NULL,
	[Cylinder] [nvarchar](50) NULL,
	[Hirepurchase_BankName] [nvarchar](60) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[CivilID_CRNo] [nvarchar](50) NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[ResPhoneNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[AssuredMobileNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[NillAdditionalDriver] [nvarchar](20) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[VIPCustomer] [nvarchar](20) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorInsSave]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_MotorInsSave] AS TABLE(
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[TypeofTransaction] [nvarchar](50) NULL,
	[PolicyNumberifRenewal] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[AgentCode_BrokerCode] [nvarchar](50) NULL,
	[UAEExtensionNilPremiaum] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[Make_Model] [nvarchar](50) NULL,
	[BodyType] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[YearofManufacture] [int] NULL,
	[VehicleAge] [nvarchar](3) NULL,
	[Tonnage] [nvarchar](3) NULL,
	[DriverAge] [nvarchar](3) NULL,
	[GeographicalArea] [nvarchar](50) NULL,
	[FirstRegDate] [datetime] NULL,
	[SeatingCapacity] [int] NULL,
	[RoadAssistance] [nvarchar](50) NULL,
	[SumInsured_RO] [bigint] NULL,
	[Voluntaryexcess] [nvarchar](50) NULL,
	[NoClaimsDiscount] [nvarchar](50) NULL,
	[LicenceFirstIssued] [datetime] NULL,
	[SpecialDiscount] [nvarchar](5) NULL,
	[PurchaseType] [nvarchar](50) NULL,
	[AgencyRepair] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[MakeModel] [nvarchar](50) NULL,
	[EngineNo] [nvarchar](50) NULL,
	[ChassisNo] [nvarchar](50) NULL,
	[VehicleCC] [nvarchar](50) NULL,
	[PlateColor] [nvarchar](15) NULL,
	[Color] [nvarchar](15) NULL,
	[Cylinder] [nvarchar](50) NULL,
	[Hirepurchase_BankName] [nvarchar](60) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[AssuredName_Arabic] [nvarchar](50) NULL,
	[CivilID_CRNo] [nvarchar](50) NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[ResPhoneNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[NillAdditionalDriver] [nvarchar](20) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[VIPCustomer] [nvarchar](20) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_NewInsBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_NewInsBulkUpload] AS TABLE(
	[DivisionCode] [nvarchar](250) NULL,
	[DivisionName] [nvarchar](250) NULL,
	[ProductCode] [nvarchar](250) NULL,
	[BusinessType] [nvarchar](250) NULL,
	[ProductName] [nvarchar](250) NULL,
	[CustomerType] [nvarchar](250) NULL,
	[PolicyNo] [nvarchar](250) NULL,
	[AssuredName] [nvarchar](250) NULL,
	[CustomerMobile] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[SourceCode] [nvarchar](250) NULL,
	[SourceName] [nvarchar](250) NULL,
	[CustomerCategory] [nvarchar](250) NULL,
	[PolicyFromDate] [datetime] NULL,
	[PolicyToDate] [datetime] NULL,
	[GrossPremium] [bigint] NULL,
	[ExpiredSumInsured] [bigint] NULL,
	[RenewalPremium] [bigint] NULL,
	[MarketingExecutive] [nvarchar](250) NULL,
	[Remarks] [nvarchar](250) NULL,
	[Status] [nvarchar](250) NULL,
	[CustomerCode] [nvarchar](250) NULL,
	[Charges] [bigint] NULL,
	[UserName] [nvarchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_NewInsSave]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_NewInsSave] AS TABLE(
	[DivisionCode] [nvarchar](500) NULL,
	[DivisionName] [nvarchar](500) NULL,
	[ProductCode] [nvarchar](500) NULL,
	[ProductName] [nvarchar](500) NULL,
	[BusinessType] [nvarchar](500) NULL,
	[PolicyNo] [nvarchar](500) NULL,
	[AssuredName] [nvarchar](500) NULL,
	[AssuredMobile] [nvarchar](500) NULL,
	[CustomerName] [nvarchar](500) NULL,
	[SourceCode] [nvarchar](500) NULL,
	[SourceName] [nvarchar](500) NULL,
	[CustomerCategory] [nvarchar](500) NULL,
	[PolicyFromDate] [datetime] NULL,
	[PolicyToDate] [datetime] NULL,
	[MarketingExecutive] [nvarchar](500) NULL,
	[Remarks] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[Charges] [bigint] NULL,
	[InsType] [nvarchar](50) NULL,
	[ProducerName] [nvarchar](50) NULL,
	[SumInsured] [decimal](18, 2) NULL,
	[RevisedSumInsured] [decimal](18, 2) NULL,
	[GrossPremium] [decimal](18, 2) NULL,
	[RevisedGrossPremium] [decimal](18, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_TravelBulkUpload] AS TABLE(
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Planning] [nvarchar](50) NULL,
	[NoOfDays] [int] NULL,
	[CoverageType] [nvarchar](50) NULL,
	[DepartureDate] [datetime] NULL,
	[DateOfReturn] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[TravelDestination] [nvarchar](50) NULL,
	[PurposeOfVisit] [nvarchar](50) NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[CivilID] [nvarchar](20) NULL,
	[Mobile] [bigint] NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[LocalPersonName] [nvarchar](50) NULL,
	[LocalPersonNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](20) NULL,
	[PassportNo] [nvarchar](35) NULL,
	[Extension] [nvarchar](50) NULL,
	[VipCustomer] [nvarchar](10) NULL,
	[Remarks] [nvarchar](50) NULL,
	[PolicyIsForOmanNationals_LegalResidentsOfOman] [nvarchar](50) NULL,
	[SpecialDiscount] [nvarchar](50) NULL,
	[AdditionalConditions] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[AssuredNameFamilyMember] [nvarchar](15) NULL,
	[DateOfBirthFamilyMember] [datetime] NULL,
	[Age] [int] NULL,
	[Relationship] [nvarchar](30) NULL,
	[Sex] [nvarchar](10) NULL,
	[PassportNoFamilyMember] [nvarchar](35) NULL,
	[ExtensionFamilyMember] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelInsSave]    Script Date: 05-06-2021 20:53:58 ******/
CREATE TYPE [dbo].[UDT_TravelInsSave] AS TABLE(
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Planning] [nvarchar](50) NULL,
	[NoOfDays] [int] NULL,
	[CoverageType] [nvarchar](50) NULL,
	[DepartureDate] [datetime] NULL,
	[DateOfReturn] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[TravelDestination] [nvarchar](50) NULL,
	[PurposeOfVisit] [nvarchar](50) NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[Gender] [nvarchar](5) NULL,
	[CivilID] [nvarchar](20) NULL,
	[Mobile] [bigint] NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[LocalPersonName] [nvarchar](50) NULL,
	[LocalPersonNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](20) NULL,
	[PassportNo] [nvarchar](25) NULL,
	[Extension] [nvarchar](50) NULL,
	[VipCustomer] [nvarchar](10) NULL,
	[Remarks] [nvarchar](50) NULL,
	[PolicyIsForOmanNationals_LegalResidentsOfOman] [nvarchar](50) NULL,
	[SpecialDiscount] [nvarchar](50) NULL,
	[AdditionalConditions] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[AssuredNameFamilyMember] [nvarchar](15) NULL,
	[DateOfBirthFamilyMember] [datetime] NULL,
	[Age] [int] NULL,
	[Relationship] [nvarchar](30) NULL,
	[Sex] [nvarchar](10) NULL,
	[PassportNoFamilyMember] [nvarchar](25) NULL,
	[ExtensionFamilyMember] [nvarchar](50) NULL
)
GO
/****** Object:  Table [dbo].[TB_Insurance]    Script Date: 05-06-2021 20:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Insurance](
	[InsuranceID] [bigint] IDENTITY(1,1) NOT NULL,
	[DivisionName] [nvarchar](500) NULL,
	[ProductCode] [nvarchar](500) NULL,
	[ProductName] [nvarchar](500) NULL,
	[BusinessType] [nvarchar](500) NULL,
	[PolicyNO] [nvarchar](500) NULL,
	[AssuredName] [nvarchar](500) NULL,
	[AssuredMobile] [nvarchar](500) NULL,
	[CustomerName] [nvarchar](500) NULL,
	[SourceCode] [nvarchar](500) NULL,
	[SourceName] [nvarchar](500) NULL,
	[CustomerCategory] [nvarchar](500) NULL,
	[PolicyFromDate] [datetime] NULL,
	[PolicyToDate] [datetime] NULL,
	[MarketingExecutive] [nvarchar](500) NULL,
	[Remarks] [nvarchar](500) NULL,
	[DivnCode] [nvarchar](50) NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[Charges] [bigint] NULL,
	[Status] [nvarchar](50) NULL,
	[InsType] [nvarchar](50) NULL,
	[DivisionCode] [nvarchar](500) NULL,
	[Producer] [nvarchar](50) NULL,
	[EntryType] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[CallBackDate] [datetime] NULL,
	[VehicleType] [nvarchar](1000) NULL,
	[VehicleMake] [nvarchar](1000) NULL,
	[RegNo] [nvarchar](1000) NULL,
	[EngineNo] [nvarchar](1000) NULL,
	[ChassisNo] [nvarchar](1000) NULL,
	[Geo] [nvarchar](1000) NULL,
	[SumInsured] [decimal](18, 2) NULL,
	[RevisedSumInsured] [decimal](18, 2) NULL,
	[GrossPremium] [decimal](18, 2) NULL,
	[RevisedGrossPremium] [decimal](18, 2) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](30) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [DivisionName]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [ProductCode]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [BusinessType]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [PolicyNO]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [AssuredName]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [AssuredMobile]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [CustomerName]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [SourceCode]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [SourceName]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [CustomerCategory]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [MarketingExecutive]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [Remarks]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [DivnCode]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [CustomerCode]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ((0)) FOR [Charges]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [Status]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [InsType]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [DivisionCode]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [Producer]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [EntryType]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [VehicleType]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [VehicleMake]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [RegNo]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [EngineNo]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [ChassisNo]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [Geo]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[TB_Insurance] ADD  DEFAULT ('') FOR [ModifiedBy]
GO

/****** Object:  Table [dbo].[TB_Calender]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Calender](
	[CalenderId] [bigint] IDENTITY(1,1) NOT NULL,
	[MonthName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CalenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Domestic]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Domestic](
	[DomesticId] [bigint] IDENTITY(1,1) NOT NULL,
	[DraftNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NoofYears] [int] NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [datetime] NULL,
	[SpecialDiscount] [bigint] NULL,
	[Amount] [bigint] NULL,
	[AssuredName] [nvarchar](40) NULL,
	[AssuredName_Arabic] [nvarchar](50) NULL,
	[CivilID] [bigint] NULL,
	[PostBox] [bigint] NULL,
	[PostalCode] [bigint] NULL,
	[City] [nvarchar](30) NULL,
	[ResPhoneNo] [bigint] NULL,
	[OfficePhoneNo] [bigint] NULL,
	[MobileNo] [bigint] NULL,
	[HelperProfession] [nvarchar](30) NULL,
	[Gender] [nvarchar](10) NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[PassportNo] [bigint] NULL,
	[Nationality] [nvarchar](20) NULL,
	[MazayaCard] [nvarchar](10) NULL,
	[SameasHouseMaidAddress] [nvarchar](10) NULL,
	[Sponsor_ProposerName] [nvarchar](50) NULL,
	[SponsorPostBox] [bigint] NULL,
	[SponsorPostalCode] [bigint] NULL,
	[SponsorCity] [nvarchar](30) NULL,
	[SponsorMobileNo] [bigint] NULL,
	[SponsorOfficePhone] [bigint] NULL,
	[SponsorNationality] [nvarchar](30) NULL,
	[VIPCustomer] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[Status] [nvarchar](20) NULL,
	[SumInsured] [bigint] NULL,
	[PremiumAmount] [bigint] NULL,
	[RivisedSI] [bigint] NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DomesticId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Individual]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Individual](
	[IndividualId] [bigint] IDENTITY(1,1) NOT NULL,
	[QuotationNo] [nvarchar](50) NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[IssueDate] [datetime] NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[NameofthePlan] [nvarchar](20) NULL,
	[SumAssured] [bigint] NULL,
	[DateofBirth] [datetime] NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[LifeAssuredName] [nvarchar](30) NULL,
	[LifeAssuredName_Arabic] [nvarchar](50) NULL,
	[AssuredGender] [nvarchar](10) NULL,
	[AssuredDateofBirth] [datetime] NULL,
	[AssuredCountryofBirth] [nvarchar](50) NULL,
	[AssuredCivilID] [nvarchar](50) NULL,
	[AssuredBldgNo_Street] [nvarchar](50) NULL,
	[AssuredPostBox] [nvarchar](50) NULL,
	[AssuredPostalCode] [nvarchar](20) NULL,
	[AssuredCity] [nvarchar](50) NULL,
	[AssuredResPhoneNo] [nvarchar](15) NULL,
	[AssuredMobileNo] [nvarchar](15) NULL,
	[AssuredEMail] [nvarchar](35) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](25) NULL,
	[Referral] [nvarchar](5) NULL,
	[ReferralRemarks] [nvarchar](100) NULL,
	[NomineeName] [nvarchar](50) NULL,
	[NomineeName_Arabic] [nvarchar](50) NULL,
	[NomineeGender] [nvarchar](10) NULL,
	[NomineeDOB] [datetime] NULL,
	[NomineeCountryofBirth] [nvarchar](50) NULL,
	[NomineeCivilID] [nvarchar](50) NULL,
	[NomineeBldgNo_Street] [nvarchar](50) NULL,
	[NomineePostBox] [nvarchar](50) NULL,
	[NomineePostalCode] [nvarchar](10) NULL,
	[NomineeCity] [nvarchar](50) NULL,
	[NomineeResPhoneNo] [nvarchar](15) NULL,
	[NomineeOfficePhoneNo] [nvarchar](15) NULL,
	[NomineeMobileNo] [nvarchar](15) NULL,
	[NomineeEMail] [nvarchar](35) NULL,
	[AppointeeName] [nvarchar](50) NULL,
	[AppointeeAge] [int] NULL,
	[AppointeeContactNo] [nvarchar](15) NULL,
	[RelationshiptotheNominee] [nvarchar](50) NULL,
	[AppointeeCivilIDNo] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[Status] [nvarchar](20) NULL,
	[SumInsured] [bigint] NULL,
	[PremiumAmount] [bigint] NULL,
	[RivisedSI] [bigint] NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IndividualId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Motor]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Motor](
	[MotorId] [bigint] IDENTITY(1,1) NOT NULL,
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[TypeofTransaction] [nvarchar](50) NULL,
	[PolicyNumberifRenewal] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[PolicyStartDate] [datetime] NULL,
	[PolicyEndDate] [datetime] NULL,
	[AgentCode] [nvarchar](50) NULL,
	[BrokerCode] [nvarchar](50) NULL,
	[UAEExtensionNilPremiaum] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[Make_Model] [nvarchar](50) NULL,
	[BodyType] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[YearofManufacture] [int] NULL,
	[VehicleAge] [nvarchar](3) NULL,
	[Tonnage] [nvarchar](3) NULL,
	[DriverAge] [nvarchar](3) NULL,
	[GeographicalArea] [nvarchar](50) NULL,
	[FirstRegDate] [datetime] NULL,
	[SeatingCapacity] [int] NULL,
	[RoadAssistance] [nvarchar](50) NULL,
	[SumInsured_RO] [bigint] NULL,
	[Voluntaryexcess] [nvarchar](50) NULL,
	[NoClaimsDiscount] [nvarchar](50) NULL,
	[LicenceFirstIssued] [datetime] NULL,
	[SpecialDiscount] [nvarchar](5) NULL,
	[PurchaseType] [nvarchar](50) NULL,
	[AgencyRepair] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[MakeModel] [nvarchar](50) NULL,
	[EngineNo] [nvarchar](50) NULL,
	[ChassisNo] [nvarchar](50) NULL,
	[VehicleCC] [nvarchar](50) NULL,
	[PlateColor] [nvarchar](15) NULL,
	[Color] [nvarchar](15) NULL,
	[Cylinder] [nvarchar](50) NULL,
	[Hirepurchase_BankName] [nvarchar](60) NULL,
	[AssuredName_Arabic] [nvarchar](50) NULL,
	[AgentCode_BrokerCode] [nvarchar](100) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[CivilID_CRNo] [nvarchar](50) NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[ResPhoneNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[NillAdditionalDriver] [nvarchar](20) NULL,
	[Marketer] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[VIPCustomer] [nvarchar](20) NULL,
	[SumInsured] [bigint] NULL,
	[PremiumAmount] [bigint] NULL,
	[RivisedSI] [bigint] NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Status] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MotorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ProducerCodeMaster]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ProducerCodeMaster](
	[ProducerCodeId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProducerCode] [nvarchar](20) NULL,
	[ProducerName] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducerCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RoleMaster]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Travel]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Travel](
	[TravelId] [bigint] IDENTITY(1,1) NOT NULL,
	[IssueDate] [datetime] NULL,
	[PolicyNo] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[Planning] [nvarchar](50) NULL,
	[NoOfDays] [int] NULL,
	[CoverageType] [nvarchar](50) NULL,
	[DepartureDate] [datetime] NULL,
	[DateOfReturn] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[TravelDestination] [nvarchar](50) NULL,
	[PurposeOfVisit] [nvarchar](50) NULL,
	[Marketer] [nvarchar](50) NULL,
	[Broker_AgentCode] [nvarchar](50) NULL,
	[IssueFrom] [nvarchar](50) NULL,
	[AssuredName] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[CivilID] [nvarchar](20) NULL,
	[Mobile] [bigint] NULL,
	[PostBox] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[City] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[LocalPersonName] [nvarchar](50) NULL,
	[LocalPersonNo] [nvarchar](50) NULL,
	[Nationality] [nvarchar](20) NULL,
	[PassportNo] [nvarchar](25) NULL,
	[Extension] [nvarchar](50) NULL,
	[VipCustomer] [nvarchar](10) NULL,
	[Remarks] [nvarchar](50) NULL,
	[PolicyIsForOmanNationals_LegalResidentsOfOman] [nvarchar](50) NULL,
	[SpecialDiscount] [nvarchar](50) NULL,
	[AdditionalConditions] [nvarchar](50) NULL,
	[MazayaCard] [nvarchar](50) NULL,
	[AssuredNameFamilyMember] [nvarchar](15) NULL,
	[DateOfBirthFamilyMember] [datetime] NULL,
	[Age] [int] NULL,
	[Relationship] [nvarchar](30) NULL,
	[Sex] [nvarchar](10) NULL,
	[PassportNoFamilyMember] [nvarchar](25) NULL,
	[ExtensionFamilyMember] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[Status] [nvarchar](20) NULL,
	[SumInsured] [bigint] NULL,
	[PremiumAmount] [bigint] NULL,
	[RivisedSI] [bigint] NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TravelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Users]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [bigint] NULL,
	[RoleName] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[SubRoleType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Domestic] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Individual] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Motor] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_ProducerCodeMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Travel] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  StoredProcedure [dbo].[pBulkDelegateStatus]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[pBulkDelegateStatus]
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
GO
/****** Object:  StoredProcedure [dbo].[pBulkUpdateInsuranceStatus]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pBulkUpdateInsuranceStatus]
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
			Status VARCHAR(200) N'$.Status'   

		) AS InsuranceStatus;

IF(@FileType='Manual')
BEGIN
	UPDATE TI SET 
			TI.[Status]=T.[Status],		
			TI.ModifiedBy =@UserName,
			TI.ModifiedAt=Getdate()
	From TB_Insurance TI
	INNER JOIN #TempInsuranceStatus T ON T.InsuranceID =TI.InsuranceID

	SET @ErrorMsg ='Upload Successfully'
END
ELSE
BEGIN
   -- Check valitation

   	UPDATE TI SET 
			TI.[Status]=T.[Status],		
			TI.ModifiedBy =@UserName,
			TI.ModifiedAt=Getdate()
	From TB_Insurance TI
	INNER JOIN #TempInsuranceStatus T ON T.PolicyNo =TI.PolicyNo

   SET @ErrorMsg ='Upload Successfully'


END
		
END



GO
/****** Object:  StoredProcedure [dbo].[pBulkUploadInsurance]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pBulkUploadInsurance]
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
			RevisedSumInsured  Decimal(18,2) N'$.RevisedSumInsured',
			TotalGrossPremium Decimal(18,2) N'$.TotalGrossPremium',
			RevisedGrossPremium decimal(18,2) N'$.RevisedGrossPremium',
			Geo nvarchar(1000) N'$.Geo',
			RenewalStatus nvarchar(1000) N'$.RenewalStatus',
			MarketingCode nvarchar(1000) N'$.MarketingCode',
			UserName nvarchar(200) N'$.UserName'

		) AS InsuranceStatus;
	
	 Select 
		PolicyNumber,PolicyNO INTO #FindDuplicatePolicy
	 From #TempInsurance  TI
	 LEFT JOIN  TB_Insurance  TBI ON  Trim(TBI.PolicyNO) = Trim(TI.PolicyNumber)
	 Where TBI.PolicyNO  IS NOT NULL
	
	
	 INSERT INTO TB_Insurance(DivisionCode,ProductCode,BusinessType,ProductName,PolicyNO,AssuredName,
							 PolicyFromDate,PolicyToDate,AssuredMobile,InsType,CustomerCode,CustomerName,SourceCode,SourceName,
							 VehicleType,VehicleMake,RegNo,EngineNo,ChassisNo,SumInsured,RevisedSumInsured, GrossPremium,RevisedGrossPremium,
							 Status,MarketingExecutive,Geo,CreatedBy,Producer)

	 Select 
		DivisionCode,ProductCode,CustomerType,ProductName,PolicyNumber,InsuredName,PeriodFrom,PeriodTo,CustomerPhoneNo,
		ClassName,CustomerCode,CustomerName,SourceCode,SourceName,VehicleType,VehicleMake,RegNo,EngineNo,ChassisNo,
		SumInsured,RevisedSumInsured,TotalGrossPremium,RevisedGrossPremium,RenewalStatus,MarketingCode,Geo,@UserName,UserName
	 From #TempInsurance 
     Where PolicyNumber NOT IN (Select PolicyNumber From #FindDuplicatePolicy)
	 

Update TBI Set 
			DivisionCode=TI.DivisionCode,
			ProductCode=TI.ProductCode,
			BusinessType=TI.CustomerType,
			ProductName=TI.ProductName,
			AssuredName=TI.InsuredName,
			PolicyFromDate=TI.PeriodFrom,
			PolicyToDate=TI.PeriodTo,
			AssuredMobile=TI.CustomerPhoneNo,
			InsType=TI.ClassName,
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
			RevisedGrossPremium=TI.RevisedGrossPremium,
			Status=TI.RenewalStatus,
			MarketingExecutive=TI.MarketingCode,
			Geo=TI.Geo,
			CreatedBy=@UserName,
			Producer=TI.UserName

From TB_Insurance TBI
INNER JOIN #FindDuplicatePolicy TDP ON Trim(TBI.PolicyNO) = Trim(TDP.PolicyNumber)
INNER JOIN #TempInsurance TI ON Trim(TI.PolicyNumber) = Trim(TDP.PolicyNumber)
	print 1

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
/****** Object:  StoredProcedure [dbo].[pGetDelegateData]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[pGetDelegateData]
as
begin


select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,0.00) as Charges,Isnull(Status,'Under Process') as Status,
Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description,

Isnull(CallBackDate ,GETDATE()) as CallBackDate
From TB_Insurance where InsuranceID=0 order by InsuranceID desc


end
GO
/****** Object:  StoredProcedure [dbo].[PGetSearchDelegateMotor]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PGetSearchDelegateMotor]
(
	 
	 @PolicyNo nvarchar(50),
	 @CustCode nvarchar(50),
	 @SourceCode nvarchar(50),
	
	 @PolicyFromDate datetime = NULL,
	 @PolicyToDate datetime=NULL,
	 @PageNo int,
	 @PageType Nvarchar(100)

 )
AS 
BEGIN

if(@PolicyNo='') set @PolicyNo=null 
if(@CustCode='') set @CustCode=null 
if(@SourceCode='') set @SourceCode=null 



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




Set @Query ='SELECT 
				Isnull(InsuranceID,'''') as InsuranceID,
				Isnull(BusinessType,'''') as BusinessType,
				Isnull(PolicyNo,'''') as PolicyNo,
				Isnull(SourceCode,'''') as SourceCode,
				Isnull(PolicyFromDate,'''') as PolicyFromDate,Isnull(PolicyToDate,'''') as PolicyToDate,
				
				
				Isnull(CustomerCode,'''') as CustomerCode,
				LTRIM(RTRIM(isnull(Status,''Under Process''))) as Status,
				Isnull(InsType,'''') as InsType,
				Isnull(DivisionCode ,'''') as DivisionCode,
				Isnull(Producer ,'''') as ProducerName 
       FROM TB_Insurance '

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
				
				IF(@CustCode IS NOT NULL)
				BEGIN 
				    IF (@Where ='')
					  SET @Where  = 'CustomerCode = '''+@CustCode+''''
					ELSE 
					  SET @Where  = @Where + ' AND CustomerCode = '''+@CustCode+''''
				END


				IF(@SourceCode IS NOT NULL)
				BEGIN 
				    IF (@Where ='')
					 SET  @Where  = 'SourceCode = '''+@SourceCode+''''
					ELSE 
					SET  @Where  = @Where +  ' AND SourceCode = '''+@SourceCode+''''
				END
				

			END
	END

	

  IF (@Where !='')
  BEGIN
  
    
    EXEC ( @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' )
	
  END
  ELSE
  BEGIN
   EXEC (@Query)
   
  END
  
END




GO
/****** Object:  StoredProcedure [dbo].[PGetSearchMasterMotor]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PGetSearchMasterMotor] (@RoleId         bigint,
                                          @PolicyNo       nvarchar(50),
                                          @DivisionName   nvarchar(50),
                                          @AssuredName    nvarchar(50),
                                          @ProductName    nvarchar(50),
                                          @Status         nvarchar(50),
                                          @ProducerName   nvarchar(50)=NULL,
                                          @PolicyFromDate datetime = NULL,
                                          @PolicyToDate   datetime=NULL,
                                          @PageNo         int,
                                          @PageType       Nvarchar(100))
AS
  BEGIN
      declare @Flag int

      if exists(select 1
                from   TB_Users
                where  UserName = @ProducerName
                       and RoleId = 6)
        begin
            set @flag=1
        end

      if( @PolicyNo = '' )
        set @PolicyNo=null

      --if(@DivisionName='') set @DivisionName=null 
      --if(@AssuredName='') set @AssuredName=null 
      --if(@ProductName='') set @ProductName=null 
      if( @Status = '' )
        set @Status=null

      if( @ProducerName = '' )
        set @ProducerName=null

      if( @DivisionName = '' )
        set @DivisionName=null

      Declare @Query Nvarchar(Max)=''
      Declare @Where Nvarchar(Max)=''
      Declare @FromDate Nvarchar(50)=''
      Declare @ToDate Nvarchar(50)=''

      IF ( ( @PolicyFromDate = '1753-01-01 00:00:00'
              OR @PolicyFromDate = ''
              OR @PolicyFromDate = '1900-01-01' )
           AND ( @PolicyToDate = ''
                  OR @PolicyToDate = '1753-01-01 00:00:00'
                  OR @PolicyToDate = '1900-01-01' ) )
        BEGIN
            SET @PolicyFromDate = NULL -- DATEADD(DD, -120, GETDATE())
            SET @PolicyToDate = NULL --GETDATE()
        END
      ELSE
        BEGIN
            SET @FromDate = CONVERT(varchar, CONVERT(date, @PolicyFromDate))
            SET @ToDate =Convert(varchar, CONVERT(date, @PolicyToDate))
        END

      Set @Query ='SELECT Top 2000 Isnull(InsuranceID,'''') as InsuranceID,Isnull(DivisionName,'''') as DivisionName,Isnull(ProductCode,'''') as ProductCode, Isnull(ProductName,'''') as ProductName,Isnull(BusinessType,'''') as BusinessType, Isnull(PolicyNo,'''') as PolicyNo,Isnull(AssuredName,'''') as AssuredName, Isnull(AssuredMobile,'''') as AssuredMobile,Isnull(CustomerName,'''') as CustomerName,Isnull(SourceCode,'''') as SourceCode, Isnull(SourceName,'''') as SourceName,Isnull(CustomerCategory,'''') as CustomerCategory, Isnull(PolicyFromDate,'''') as PolicyFromDate,Isnull(PolicyToDate,'''') as PolicyToDate, Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured, Isnull(SumInsured,0.00) as SumInsured, Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium, Isnull(MarketingExecutive,'''') as MarketingExecutive, Isnull(Remarks,'''') as Remarks,Isnull(DivnCode,'''') as DivnCode,Isnull(CustomerCode,'''') as CustomerCode,Isnull(Charges,0.00) as Charges, LTRIM(RTRIM(isnull(Status,''Under Process''))) as Status, Isnull(InsType,'''') as InsType,Isnull(CreatedAt,'''') as CreatedAt,Isnull(ModifiedAt,'''') as ModifiedAt, Isnull(DivisionCode ,'''') as DivisionCode, Isnull(Producer ,'''') as ProducerName         FROM TB_Insurance '

      IF( @RoleId = 1 )
        BEGIN
            IF( @PolicyNo is not null )
              BEGIN
                  SET @Where ='PolicyNO = ''' + @PolicyNo + ''''
              END
            ELSE
              BEGIN
                  IF ( @PolicyFromDate IS NOT NULL
                       AND @PolicyToDate IS NOT NULL )
                    BEGIN
                        --SET @Where = 'CONVERT(date, PolicyFromDate) >= '''+@FromDate+''' AND CONVERT(Date,PolicyToDate) <= '''+@ToDate+'''';
                        SET @Where = ' CONVERT(date, PolicyToDate) BETWEEN '''
                                     + @FromDate + ''' AND ''' + @ToDate + ''' '
                    END

                  IF( @Status IS NOT NULL )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Status = ''' + @Status + ''''
                        ELSE
                          SET @Where = @Where + ' AND Status = ''' + @Status +
                                       ''''
                    END

                  IF( @ProducerName IS NOT NULL
                      and @Flag = 1 )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Producer = ''' + @ProducerName + ''''
                        ELSE
                          SET @Where = @Where + ' AND Producer = ''' +
                                       @ProducerName
                                       + ''''
                    END
                  --ELSE
                  --  BEGIN
                  --      IF ( @Where = '' )
                  --        SET @Where = 'CustomerCode = ''' + @ProducerName +
                  --                     ''''
                  --      ELSE
                  --        SET @Where = @Where + ' AND CustomerCode = '''
                  --                     + @ProducerName + ''''
                  --  END

                  IF( @DivisionName IS NOT NULL )
                    BEGIN
                        IF ( @Where = '' )
                          SET @Where = 'Divisioncode = ''' + @DivisionName +
                                       ''''
                        ELSE
                          SET @Where = @Where + ' AND Divisioncode = '''
                                       + @DivisionName + ''''
                    END
              END
        END
      ELSE
        BEGIN
            IF( @ProducerName IS NOT NULL
                and @Flag = 1 )
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'Producer = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND Producer = ''' + @ProducerName
                                 + ''''
              END
            ELSE IF( @RoleId = 4
                AND @ProducerName IS NOT NULL )
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'DivisionCode = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND DivisionCode = '''
                                 + @ProducerName + ''''
              END
            ELSE
              BEGIN
                  IF ( @Where = '' )
                    SET @Where = 'CustomerCode = ''' + @ProducerName + ''''
                  ELSE
                    SET @Where = @Where + ' AND CustomerCode = '''
                                 + @ProducerName + ''''
              END

            IF( @PolicyNo is not null )
              BEGIN
                  SET @Where = @Where + ' AND  PolicyNO = ''' + @PolicyNo + ''''
              END

            IF ( @PolicyFromDate IS NOT NULL
                 AND @PolicyToDate IS NOT NULL )
              BEGIN
                  -- SET @Where = @Where+ ' AND Convert(Date,PolicyFromDate ) >= '''+@FromDate+''' AND Convert(Date,PolicyToDate) <= '''+@ToDate+'''';
                  SET @Where = @Where
                               + ' AND CONVERT(date, PolicyToDate) BETWEEN '''
                               + @FromDate + ''' AND ''' + @ToDate + ''' '
              END

            IF( @Status IS NOT NULL )
              BEGIN
                  SET @Where = @Where + ' AND Status = ''' + @Status + ''''
              END

            IF( @DivisionName IS NOT NULL )
              BEGIN
                  SET @Where = @Where + ' AND Divisioncode = '''
                               + @DivisionName + ''''
              END
        END

      IF ( @Where != '' )
        BEGIN
            --Select @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' 
            EXEC ( @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' )
        END
      ELSE
        BEGIN
            EXEC (@Query)
        END
  END 
GO
/****** Object:  StoredProcedure [dbo].[pGetUserAutoComplete]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pGetUserAutoComplete]
(
 @Prefix Nvarchar(100),
 @Type Nvarchar(100)
)
AS 
BEGIN
	If(@Type='Branches')
	begin
	
	SELECT distinct DivisionCode,DivnCode,DivisionName FROM TB_Insurance
	WHERE DivisionCode like @Prefix+'%'
	end
	else
	begin
	
	SELECT UserId,UserName,RoleId,RoleName FROM TB_Users
	WHERE UserName like @Prefix+'%'
	end

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DomesticBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 05-06-2021 20:53:58 ******/
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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under process])) as pivot_final_table order by CalenderId
end
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard]    Script Date: 05-06-2021 20:53:58 ******/
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
[Under process] int,
[To Be Renewed] int
)

begin 
if(@BusinessType='Branches')
begin
declare @divisionMaster table(
DivisionCode nvarchar(30),
DivisionName nvarchar(500)
)
insert into @divisionMaster(DivisionCode,DivisionName)
select distinct DivisionCode, divisionname from TB_Insurance order by DivisionCode


--begin 

insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process],[To Be Renewed])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under Process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
inner join @divisionMaster dm on  dm.DivisionCode=m.DivisionCode
--where BusinessType='Branches'
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table order by CalenderId
end
else
begin
insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process],[To Be Renewed])

select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'Under Process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
where BusinessType=@BusinessType
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table order by CalenderId

end

select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under Process]+[To Be Renewed]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard_bak]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoardYearWise]    Script Date: 05-06-2021 20:53:58 ******/
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
[Under Process] int,
[To Be Renewed] int,
Year int
)
if(@BusinessType='Branches')
begin
declare @divisionMaster table(
DivisionCode nvarchar(30),
DivisionName nvarchar(500)
)
insert into @divisionMaster(DivisionCode,DivisionName)
select distinct DivisionCode, divisionname from TB_Insurance order by DivisionCode

--begin 

insert into @tt(Year,Lost,Renewed,[Under Process],[To Be Renewed])

select * from (select Year(PolicyToDate) Year,PolicyNo,IsNull(Status,'Under Process') as Status from
TB_Insurance M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyToDate) and year(getdate())=year(PolicyToDate)
inner join @divisionMaster dm on dm.DivisionCode=m.DivisionCode
--where BusinessType='Branches'
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table order by YEAR

end
else
begin
insert into @tt(Year,Lost,Renewed,[Under Process],[To Be Renewed])

select * from (select Year(PolicyToDate) Year,PolicyNo,IsNull(Status,'Under Process') as Status from
TB_Insurance M 


where BusinessType=@BusinessType --and year(policyToDate)=year(Getdate())
) t
pivot
(Count (PolicyNo) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table 
end
select Year as y,Renewed as a, sum(lost+Renewed+[Under Process]+[To Be Renewed])  as b,@BusinessType as BusinessType from @tt  group by Lost,year,Renewed order by year

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
/****** Object:  StoredProcedure [dbo].[SP_GetCallBackDetails]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetCallBackDetails]
(
 @RoleId bigint,
 
 @ProducerName nvarchar(50)


)
as 
begin

if(@RoleId=1)
begin
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,0.00) as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description,
CallBackDate as CallBackDate

from TB_Insurance where CallBackDate is not null and Status<>'Renewed'
--where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
--and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status)
order by InsuranceID desc
end
else
begin
select Isnull(InsuranceID,'') as InsuranceID,Isnull(DivisionName,'') as DivisionName,Isnull(ProductCode,'') as ProductCode,Isnull(ProductName,'') as ProductName,Isnull(BusinessType,'') as BusinessType,
Isnull(PolicyNo,'') as PolicyNo,Isnull(AssuredName,'') as AssuredName,Isnull(AssuredMobile,'') as AssuredMobile,Isnull(CustomerName,'') as CustomerName,Isnull(SourceCode,'') as SourceCode,
Isnull(SourceName,'') as SourceName,Isnull(CustomerCategory,'') as CustomerCategory,Isnull(PolicyFromDate,'') as PolicyFromDate,Isnull(PolicyToDate,'') as PolicyToDate,
Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,0.00) as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName,
Isnull(Description ,'') as Description,
CallBackDate as CallBackDate

from TB_Insurance where CallBackDate is not null and Producer=@ProducerName and Status<>'Renewed'
--where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
--and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status)
order by InsuranceID desc
end
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetInsurance]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 05-06-2021 20:53:58 ******/
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
select InsuranceID, DivisionName,ProductCode,ProductName,BusinessType,PolicyNO as PolicyNo,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,
PolicyFromDate,PolicyToDate,MarketingExecutive,Remarks,DivnCode,CustomerCode,Charges,Status,InsType,DivisionCode,Producer as ProducerName,EntryType,Description,
CallBackDate,VehicleType,VehicleMake,RegNo,EngineNo,ChassisNo,Geo,SumInsured,RevisedSumInsured,GrossPremium,RevisedGrossPremium
From TB_Insurance order by InsuranceID desc


end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetMIDashBoard]    Script Date: 05-06-2021 20:53:58 ******/
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


set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where PolicyToDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)) and Status='Renewed')
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
--set @TotalNPYearPercentPremium=(select Cast(Cast((@TotalNoPoliciesYearPremium*100)/@TotalNoPolRenewedYearPremium as decimal(18,2)) as varchar(5)) + ' %' as Percentage)



set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Lost' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where status='Under Process' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where status='Renewed' and PolicyToDate between GETDATE() and  EOMONTH(getdate(),0))
set @TotalNPMonthPercentPremium= (@TotalNoPoliciesRenewedMonthPremium *100 /@TotalNoPoliciesMonthPremium   )


select  @TotalNoPoliciesYear as TNPYear , @TotalNoPolUnderProcessYear as TNPUnderProcessYear ,@TotNoPolLostYear as TNPLostYear,@TotalNoPolRenewedYear  as TNPRenewedYear,@TotalNPYearPercent as PercentageRenewedYear
,  @TotalNoPoliciesMonth as TNPMonth , @TotalNoPoliciesLostMonth as  TNPLostMonth,@TotalNoPoliciesUPMonth as TNPUnderProcessMonth,@TotalNoPoliciesRenewedMonth  as TNPRenewedMonth,@TotalNPMonthPercent as PercentageRenewedMonth

,  @TotalNoPoliciesYearPremium as TNPYearPremium , @TotalNoPolUnderProcessYearPremium as TNPUPYearPremium ,@TotNoPolLostYearPremium as TNPLostYearPremium,
@TotalNoPolRenewedYearPremium  as TNPRenewedYearPremium,@TotalNPYearPercentPremium as PercentPremiumRenewedYear
,  @TotalNoPoliciesMonthPremium as TNPMonthPremium , @TotalNoPoliciesLostMonthPremium as  TNPLostMonthPremium,@TotalNoPoliciesUPMonthPremium as TNPUPMonthPremium,
@TotalNoPoliciesRenewedMonthPremium  as TNPRenewedMonthPremium,@TotalNPMonthPercentPremium as PercentPremiumRenewedMonth,@UserName as UserName
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPMDashBoard]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetProducerMaster]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetSearch]    Script Date: 05-06-2021 20:53:58 ******/
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
Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,Isnull(RevisedGrossPremium,'') as RevisedGrossPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
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
Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium,Isnull(MarketingExecutive,'') as MarketingExecutive,
Isnull(Remarks,'') as Remarks,Isnull(DivnCode,'') as DivnCode,Isnull(CustomerCode,'') as CustomerCode,Isnull(Charges,'') as Charges,

LTRIM(RTRIM(isnull(Status,'Under Process'))) as Status,

Isnull(InsType,'') as InsType,Isnull(CreatedAt,'') as CreatedAt,Isnull(ModifiedAt,'') as ModifiedAt,Isnull(DivisionCode ,'') as DivisionCode,Isnull(Producer ,'') as ProducerName from TB_Insurance 
where (@PolicyNo IS null or PolicyNO = @PolicyNo) and (@DivisionName IS NULL OR DivisionName = @DivisionName)
and (@AssuredName IS null or AssuredName = @AssuredName) and (@ProductName IS NULL OR ProductName = @ProductName) and (@Status IS NULL OR Status = @Status) and Producer=@ProducerName
order by InsuranceID desc
end
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetSpecificBIDB] (@BusinessType nvarchar(50),@ProducerName nvarchar(50))
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 05-06-2021 20:53:58 ******/
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


set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end


set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where  InsType='Domestic' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Domestic' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Domestic' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Domestic' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

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

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Domestic' and  CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Domestic' and CustomerCode=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 05-06-2021 20:53:58 ******/
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


set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')
if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where  InsType='Individual' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Individual' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Individual' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Individual' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

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

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Individual' and  CustomerCode=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where InsType='Individual' and CustomerCode=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 05-06-2021 20:53:58 ******/
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
--print 3
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
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where year(getdate())=year(PolicyToDate) and Status='Renewed')



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
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where status='Renewed' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))



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
--print 5


set @TotalNoPoliciesYear =(SELECT count(*) as TotalNoPoliciesYear from TB_Insurance where 
@UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END
and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
--set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  status='Lost' and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate) )
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate)  and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(RevisedGrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(RevisedGrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo_bak]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 05-06-2021 20:53:58 ******/
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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END 
and year(getdate())=year(PolicyToDate))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Motor' and @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 05-06-2021 20:53:58 ******/
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
--set @TotalNPYearPercent= (@TotalNoPolRenewedYear *100/ @TotalNoPoliciesYear)


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



set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')

if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end



set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where  InsType='Travel' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Travel' and status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  InsType='Travel' and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))

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

set @TotalNoPoliciesYearPremium =(SELECT sum(GrossPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1))
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and PolicyToDate between  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) and    DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1) and Status='Renewed')



if(@TotalNoPolRenewedYearPremium>0 and @TotalNoPoliciesYearPremium>0) 
begin
set @TotalNPYearPercentPremium= (@TotalNoPolRenewedYearPremium*100/ @TotalNoPoliciesYearPremium )
end
else
begin
set @TotalNPYearPercentPremium=0
end

set @TotalNoPoliciesMonthPremium=(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  status='Lost' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and  Producer=@UserName and status='Under Process' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where InsType='Travel' and Producer=@UserName and  status='Renewed' and PolicyToDate between  DATEADD(MM, DATEDIFF(mm, 0, GETDATE()), 0) and DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, -1))



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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseInfo]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseReport]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetYearwisePolicyReport]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetYearwisePolicyReport]
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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END
and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYear =(select count(*) as TotalUnderProcessYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END  and datepart(year, PolicyToDate)=@Year  and Status='Under Process')
set @TotNoPolLostYear =(select count(*) as TotalLostYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYear =(select count(*) as TotalRenewedYear from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END 
and status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonth =(select count(*) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonth =(select count(*) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year)
set @TotalNoPolUnderProcessYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and datepart(year, PolicyToDate)=@Year and Status='Under Process')
set @TotNoPolLostYearPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  datepart(year, PolicyToDate)=@Year and Status='Lost')
set @TotalNoPolRenewedYearPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesLostMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and  status='Lost' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesUPMonthPremium =(select sum(GrossPremium) from TB_Insurance where  @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

ELSE CustomerCode
END and status='Under Process' and year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
set @TotalNoPoliciesRenewedMonthPremium =(select sum(GrossPremium) from TB_Insurance where @UserName=
CASE
WHEN @RoleId=4 THEN DivisionCode
WHEN @RoleId=6 THEN Producer

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
/****** Object:  StoredProcedure [dbo].[SP_IndividualBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_InsBulkUpload] (

@UDT_NewInsSave dbo.UDT_NewInsBulkUpload --dbo.UDT_NewInsSave 
readonly,
@UserName nvarchar(100) )
AS 
  BEGIN 

            INSERT INTO TB_Insurance
                        (DivisionCode,DivisionName,ProductCode,BusinessType,ProductName,InsType,PolicyNo,AssuredName,AssuredMobile,CustomerName,SourceCode,
SourceName,CustomerCategory,PolicyFromDate,PolicyToDate,GrossPremium,MarketingExecutive,
Remarks,Status,CustomerCode,Charges,Producer,EntryType,CreatedBy,RevisedSumInsured) 
            SELECT DivisionCode,DivisionName,ProductCode,CustomerType,ProductName,BusinessType,PolicyNo,AssuredName,CustomerMobile,CustomerName,SourceCode,SourceName,
CustomerCategory,PolicyFromDate,PolicyToDate,GrossPremium,MarketingExecutive,Remarks,Status,CustomerCode,Charges,
UserName,'Bulk Upload',@UserName,ExpiredSumInsured

				   
            FROM   @UDT_NewInsSave where PolicyNo not in (select distinct PolicyNo from TB_Insurance)
        
		
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SP_InsUpdate] (
@InsId bigint,
@Status nvarchar(40),
@Description nvarchar(500),
@UserName nvarchar(100),
@CallBackDate datetime =NULL,

@SumInsured decimal(18,2),
@RivisedSI decimal(18,2),
@GrossPremium decimal(18,2),
@RevisedGrossPremium decimal(18,2),
@Flag int
) 
AS 
  BEGIN 
 

IF ((@CallBackDate='1753-01-01 00:00:00' OR @CallBackDate ='' OR @CallBackDate ='1900-01-01'))
	begin
	set @CallBackDate=null
	end

     UPDATE TB_Insurance SET 
	 SumInsured=@SumInsured,	
	 RevisedSumInsured =@RivisedSI,	
	 GrossPremium=@GrossPremium,
	 RevisedGrossPremium=@RevisedGrossPremium,
	 status=@Status,
	 Description=@Description,ModifiedAt=GETDATE(),
	 ModifiedBy=@UserName,CallBackDate=@CallBackDate ,
	 Remarks=@Description 
	 from TB_Insurance where InsuranceID=@InsId
	
           
 END 
  
GO
/****** Object:  StoredProcedure [dbo].[SP_MotorBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorDomesticSave]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorIndividualSave]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsSave]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsUpdate]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorTravelSave]    Script Date: 05-06-2021 20:53:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NewInsSave]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_NewInsSave] (@UDT_NewInsSave dbo.UDT_NewInsSave 
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
                        (DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,
						CustomerCategory,PolicyFromDate,
PolicyToDate,MarketingExecutive,Remarks,DivnCode,CustomerCode,Charges,Status,InsType,Producer,CreatedBy,EntryType,SumInsured,RevisedSumInsured,GrossPremium,
RevisedGrossPremium) 
            SELECT DivisionName,ProductCode,ProductName,BusinessType,PolicyNO,AssuredName,AssuredMobile,CustomerName,SourceCode,SourceName,CustomerCategory,PolicyFromDate,
PolicyToDate,MarketingExecutive,Remarks,DivisionCode,CustomerCode,Charges,Status,InsType,ProducerName,@UserName,'Single Data Entry',
SumInsured,RevisedSumInsured,GrossPremium,RevisedGrossPremium				   
            FROM   @UDT_NewInsSave 
			SET @Return=SCOPE_IDENTITY()
        END 
		

  END 
GO
/****** Object:  StoredProcedure [dbo].[SP_NewInsUpdate]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[SP_NewInsUpdate] (@UDT_NewInsSave dbo.UDT_NewInsSave 
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

M.RevisedGrossPremium = UDT.RevisedGrossPremium, 
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterUser]    Script Date: 05-06-2021 20:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RegisterUser]
(
@UserName nvarchar(50),
@RoleId bigint,
@Password nvarchar(50),
@SubRoleType nvarchar(50),
@Return int output
)
as
begin
declare @RoleName nvarchar(50)
set @RoleName=(select distinct RoleName from TB_RoleMaster where RoleId=@RoleId)
if not exists(select 1 from TB_Users where UserName=@UserName)
begin
Insert into TB_Users(UserName,Password,RoleId,RoleName,CreatedBy,SubRoleType)
select @UserName,@Password,@RoleId,@RoleName,'SuperAdmin' ,@SubRoleType
SET @Return=SCOPE_IDENTITY()
end
else
begin
set @Return=0
end
end

GO
/****** Object:  StoredProcedure [dbo].[SP_TravelBulkUpload]    Script Date: 05-06-2021 20:53:58 ******/
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
