USE [MotorIns]
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_NewInsBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_NewInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Calender]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Domestic]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Individual]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Insurance]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Motor]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_ProducerCodeMaster]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_RoleMaster]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Travel]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  Table [dbo].[TB_Users]    Script Date: 20-05-2021 21:19:15 ******/
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
SET IDENTITY_INSERT [dbo].[TB_Calender] ON 
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (1, N'January')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (2, N'February')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (3, N'March')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (4, N'April')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (5, N'May')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (6, N'June')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (7, N'July')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (8, N'August')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (9, N'September')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (10, N'October')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (11, N'November')
GO
INSERT [dbo].[TB_Calender] ([CalenderId], [MonthName]) VALUES (12, N'December')
GO
SET IDENTITY_INSERT [dbo].[TB_Calender] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Individual] ON 
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (1, N'Q/004/01/20/2402/00001', N'P/004/01/20/2404/00001', CAST(N'2020-07-07T13:58:00.000' AS DateTime), N'Head Office', CAST(N'2020-07-07T13:58:00.000' AS DateTime), CAST(N'2020-08-07T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0007 - C.E. HEATH & PARTNERS L.L.C.', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:58:00.00000', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:58:00.000' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (2, N'Q/004/01/20/2402/00002', N'P/004/01/20/2404/00002', CAST(N'2020-08-07T13:57:00.000' AS DateTime), N'Head Office', CAST(N'2020-08-07T13:57:00.000' AS DateTime), CAST(N'2020-08-08T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'SH005 - Mr.Ghaith AL-Maghribi', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:58:00.00000', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:58:00.000' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (3, N'Q/004/01/20/2402/00003', N'P/004/01/20/2404/00003', CAST(N'2020-09-07T13:56:00.007' AS DateTime), N'Head Office', CAST(N'2020-09-07T13:56:00.007' AS DateTime), CAST(N'2020-08-09T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'SH006 - Ms.Tahani Abdullah Al Najadi', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (4, N'Q/004/01/20/2402/00004', N'P/004/01/20/2404/00004', CAST(N'2020-10-07T13:55:00.010' AS DateTime), N'Head Office', CAST(N'2020-10-07T13:55:00.010' AS DateTime), CAST(N'2020-08-10T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'SH007 - Ms.Ahad Ali Al Wahaibi', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (5, N'Q/004/01/20/2402/00005', N'P/004/01/20/2404/00005', CAST(N'2020-11-07T13:54:00.017' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.017' AS DateTime), CAST(N'2020-08-11T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'SH008 - Ms.Israa Zayid Khalifa Al Kindi', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (6, N'Q/004/01/20/2402/00006', N'P/004/01/20/2404/00006', CAST(N'2020-11-07T13:54:00.017' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.017' AS DateTime), CAST(N'2020-08-12T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0025 - Klaah Al Malada Trad. & Cont', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (7, N'Q/004/01/20/2402/00007', N'P/004/01/20/2404/00007', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0026 - Safety City Trading LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (8, N'Q/004/01/20/2402/00008', N'P/004/01/20/2404/00008', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0057 - M/S TOWEL AUTO CENTRE L.L.C', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (9, N'Q/004/01/20/2402/00009', N'P/004/01/20/2404/00009', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0058 - M/S CRESENT GLOBAL', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (10, N'Q/004/01/20/2402/00010', N'P/004/01/20/2404/00010', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0059 - UNITED FINANCE COMPANY', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (11, N'Q/004/01/20/2402/00011', N'P/004/01/20/2404/00011', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0060 - ORYX INSURANCE SERVICES LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (12, N'Q/004/01/20/2402/00012', N'P/004/01/20/2404/00012', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0061 - FIRST POLICY INSURANCE SERVICES', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (13, N'Q/004/01/20/2402/00013', N'P/004/01/20/2404/00013', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0062 - High Capacity Trading LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (14, N'Q/004/01/20/2402/00014', N'P/004/01/20/2404/00014', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-09T23:59:00.000' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0063 - PWS GULF LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (15, N'Q/004/01/20/2402/00015', N'P/004/01/20/2404/00015', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-11T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA0123 - WABAS AL ALMIYAH', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (16, N'Q/004/01/20/2402/00016', N'P/004/01/20/2404/00016', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-13T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA9988 - NIZWA WINDOW TRAD & CONT LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (17, N'Q/004/01/20/2402/00017', N'P/004/01/20/2404/00017', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-15T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA9989 - HOWDEN INSURANCE BROKERS LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (18, N'Q/004/01/20/2402/00018', N'P/004/01/20/2404/00018', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-17T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'BA9990 - AL HAYAH INSURANCE SERVICES LLC', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (19, N'Q/004/01/20/2402/00019', N'P/004/01/20/2404/00019', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-19T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH001 - Cash Customers-HO', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (20, N'Q/004/01/20/2402/00020', N'P/004/02/20/2404/00020', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'salalah', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH002 - Cash Customers-Salalah', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (21, N'Q/004/01/20/2402/00021', N'P/004/03/20/2404/00021', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Sohar', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH003 - Cash Customers-Sohar', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (22, N'Q/004/01/20/2402/00022', N'P/004/04/20/2404/00022', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Nizwa', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH004 - Cash Customers-Nizwa', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (23, N'Q/004/01/20/2402/00023', N'P/004/05/20/2404/00023', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Seeb', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH005 - Cash Customers-Seeb', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (24, N'Q/004/01/20/2402/00024', N'P/004/06/20/2404/00024', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Squ', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'CSH006 - Cash Customers-SQU', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (25, N'Q/004/01/20/2402/00025', N'P/004/01/20/2404/00025', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'ME0001 - Naveed Shafi', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (26, N'Q/004/01/20/2402/00026', N'P/004/01/20/2404/00026', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'ME0002 - Abdul Khaliq Abdul Rahman', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (27, N'Q/004/01/20/2402/00027', N'P/004/01/20/2404/00027', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'ME0003 - Ranganathan Chakrapani', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (28, N'Q/004/01/20/2402/00028', N'P/004/01/20/2404/00028', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'ME0004 - Fayaz Ahmed', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Individual] ([IndividualId], [QuotationNo], [PolicyNo], [IssueDate], [Branch], [PolicyStartDate], [PolicyEndDate], [NameofthePlan], [SumAssured], [DateofBirth], [Age], [Gender], [Broker_AgentCode], [LifeAssuredName], [LifeAssuredName_Arabic], [AssuredGender], [AssuredDateofBirth], [AssuredCountryofBirth], [AssuredCivilID], [AssuredBldgNo_Street], [AssuredPostBox], [AssuredPostalCode], [AssuredCity], [AssuredResPhoneNo], [AssuredMobileNo], [AssuredEMail], [Marketer], [IssueFrom], [Referral], [ReferralRemarks], [NomineeName], [NomineeName_Arabic], [NomineeGender], [NomineeDOB], [NomineeCountryofBirth], [NomineeCivilID], [NomineeBldgNo_Street], [NomineePostBox], [NomineePostalCode], [NomineeCity], [NomineeResPhoneNo], [NomineeOfficePhoneNo], [NomineeMobileNo], [NomineeEMail], [AppointeeName], [AppointeeAge], [AppointeeContactNo], [RelationshiptotheNominee], [AppointeeCivilIDNo], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [Status], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName]) VALUES (29, N'Q/004/01/20/2402/00029', N'P/004/01/20/2404/00029', CAST(N'2020-11-07T13:54:00.010' AS DateTime), N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2021-06-07T23:58:59.997' AS DateTime), N'INDGRP', 10, CAST(N'1965-07-07T13:58:00.000' AS DateTime), 56, N'M', N'SH001 - Ms.Kothar AL-Zadjali', N'5000', N'Mohammed Tariq', N'M', CAST(N'1966-07-07T13:58:00.000' AS DateTime), N'Omani', N'546454', N'Upto Four Tonne', N'64644', N'5254542', N'Muscat', N'54578451541', N'27542124565', N'NA', N'NA', N'2020-07-07 13:57:59.99500', N'NA', N'None', N'Asraha', N'NA', N'F', CAST(N'1999-07-07T13:57:59.997' AS DateTime), N'Omani', N'7845121', N'Tone St', N'46456456456', N'21241251', N'Oman', N'65454845', N'6587845', N'21845212', NULL, NULL, NULL, N'2421212', N'47521212', N'2215485', CAST(N'2020-08-31T17:55:04.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Individual] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Motor] ON 
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (1, CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'P/004/01/20/2402/00001', N'New Policy/Renewal', N'Renew1', N'Head Office', CAST(N'2020-07-07T00:00:00.000' AS DateTime), CAST(N'2020-09-07T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card1', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2016, N'4', N'5', N'35', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess1', N'2', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434523', N'ASHOK LEYLAND', N'324234234', N'46456456456', N'56', N'White', N'Green', N'Cylinder1', N'Hirepurchase_BankName1', NULL, N'BA0007 - C.E. HEATH & PARTNERS L', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856756', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342196', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', 154444, 10000, 130000, N'A0001', N'Jeeva', CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, CAST(N'2020-08-31T17:53:49.670' AS DateTime), NULL, N'Dropped')
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (2, CAST(N'2020-08-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00002', N'New Policy/Renewal', N'Renew2', N'Head Office', CAST(N'2020-08-07T13:57:00.000' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card2', N'BMW', N'Car', N'Personal Vehicle', 2015, N'5', N'5', N'32', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess2', N'5', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'6', N'Local Purchase', N'Yes', N'5434565', N'ASHOK LEYLAND', N'324234235', N'46456456455', N'56', N'Yellow', N'Red', N'Cylinder2', N'Hirepurchase_BankName2', NULL, N'SH005 - Mr.Ghaith AL-Maghribi', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856757', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342152', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', 5000, 50, 10, N'cash001', N'murali', CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, N'OnHold')
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (3, CAST(N'2020-09-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00003', N'New Policy/Renewal', N'Renew3', N'Head Office', CAST(N'2020-09-07T13:56:00.007' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card3', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'29', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess3', N'2', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'7', N'Local Purchase', N'Yes', N'5434541', N'ASHOK LEYLAND', N'324234236', N'46456456421', N'56', N'White', N'Pink', N'Cylinder3', N'Hirepurchase_BankName3', NULL, N'SH006 - Ms.Tahani Abdullah Al Najadi', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856758', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342108', N'jeeva@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', 5000, 50, 10, N'cash001', N'murali', CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, N'Completed')
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (4, CAST(N'2020-10-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00004', N'New Policy/Renewal', N'Renew4', N'Head Office', CAST(N'2020-10-07T13:55:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card4', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'26', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess4', N'7', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434536', N'ASHOK LEYLAND', N'324234232', N'46456456478', N'56', N'Yellow', N'Red', N'Cylinder4', N'Hirepurchase_BankName4', NULL, N'SH007 - Ms.Ahad Ali Al Wahaibi', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856759', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342064', N'madhan@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (5, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00005', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.017' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434575', N'ASHOK LEYLAND', N'324234231', N'46456456496', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'SH008 - Ms.Israa Zayid Khalifa Al Kindi', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856760', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'ajay@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (6, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00006', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.017' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434578', N'ASHOK LEYLAND', N'324234233', N'46456456514', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0025 - Klaah Al Malada Trad. & Cont', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'ajay@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (7, CAST(N'2020-11-07T00:00:00.000' AS DateTime), N'P/004/01/20/2402/00007', N'New Policy/Renewal', N'Renew5', N'salalah', CAST(N'2020-11-07T00:00:00.000' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434576', N'ASHOK LEYLAND', N'324234232', N'46456456532', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0026 - Safety City Trading LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, CAST(N'2020-09-02T14:33:51.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (8, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00008', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434579', N'ASHOK LEYLAND', N'324234234', N'46456456550', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0057 - M/S TOWEL AUTO CENTRE L.L.C', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (9, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00009', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434577', N'ASHOK LEYLAND', N'324234233', N'46456456568', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0058 - M/S CRESENT GLOBAL', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856762', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (10, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00010', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434580', N'ASHOK LEYLAND', N'324234235', N'46456456586', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0059 - UNITED FINANCE COMPANY', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (11, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00011', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434578', N'ASHOK LEYLAND', N'324234234', N'46456456604', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0060 - ORYX INSURANCE SERVICES LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856763', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (12, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00012', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434581', N'ASHOK LEYLAND', N'324234236', N'46456456622', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0061 - FIRST POLICY INSURANCE SERVICES', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (13, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00013', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434579', N'ASHOK LEYLAND', N'324234235', N'46456456640', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0062 - High Capacity Trading LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856764', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (14, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00014', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434582', N'ASHOK LEYLAND', N'324234237', N'46456456658', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0063 - PWS GULF LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (15, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00015', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434580', N'ASHOK LEYLAND', N'324234236', N'46456456676', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA0123 - WABAS AL ALMIYAH', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856765', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (16, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00016', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434583', N'ASHOK LEYLAND', N'324234238', N'46456456694', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA9988 - NIZWA WINDOW TRAD & CONT LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (17, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00017', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434581', N'ASHOK LEYLAND', N'324234237', N'46456456712', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA9989 - HOWDEN INSURANCE BROKERS LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856766', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (18, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00018', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434584', N'ASHOK LEYLAND', N'324234239', N'46456456730', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'BA9990 - AL HAYAH INSURANCE SERVICES LLC', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (19, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00019', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434582', N'ASHOK LEYLAND', N'324234238', N'46456456748', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH001 - Cash Customers-HO', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856767', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (20, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/02/20/2402/00020', N'New Policy/Renewal', N'Renew5', N'Salalah', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434585', N'ASHOK LEYLAND', N'324234240', N'46456456766', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH002 - Cash Customers-Salalah', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (21, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/03/20/2402/00021', N'New Policy/Renewal', N'Renew5', N'Sohar', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434583', N'ASHOK LEYLAND', N'324234239', N'46456456784', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH003 - Cash Customers-Sohar', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856768', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (22, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/04/20/2402/00022', N'New Policy/Renewal', N'Renew5', N'Nizwa', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434586', N'ASHOK LEYLAND', N'324234241', N'46456456802', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH004 - Cash Customers-Nizwa', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (23, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/05/20/2402/00023', N'New Policy/Renewal', N'Renew5', N'Seeb', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434584', N'ASHOK LEYLAND', N'324234240', N'46456456820', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH005 - Cash Customers-Seeb', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856769', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (24, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/06/20/2402/00024', N'New Policy/Renewal', N'Renew5', N'SQU', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434587', N'ASHOK LEYLAND', N'324234242', N'46456456838', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'CSH006 - Cash Customers-SQU', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (25, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00025', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2020-09-07T23:59:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434585', N'ASHOK LEYLAND', N'324234241', N'46456456856', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'ME0001 - Naveed Shafi', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856770', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (26, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00026', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434588', N'ASHOK LEYLAND', N'324234243', N'46456456874', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'ME0002 - Abdul Khaliq Abdul Rahman', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (27, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00027', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434586', N'ASHOK LEYLAND', N'324234242', N'46456456892', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'ME0003 - Ranganathan Chakrapani', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856771', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (28, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00028', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434589', N'ASHOK LEYLAND', N'324234244', N'46456456910', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'ME0004 - Fayaz Ahmed', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856761', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'sathish@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Motor] ([MotorId], [IssueDate], [PolicyNo], [TypeofTransaction], [PolicyNumberifRenewal], [Branch], [PolicyStartDate], [PolicyEndDate], [AgentCode], [BrokerCode], [UAEExtensionNilPremiaum], [MazayaCard], [Make_Model], [BodyType], [VehicleType], [YearofManufacture], [VehicleAge], [Tonnage], [DriverAge], [GeographicalArea], [FirstRegDate], [SeatingCapacity], [RoadAssistance], [SumInsured_RO], [Voluntaryexcess], [NoClaimsDiscount], [LicenceFirstIssued], [SpecialDiscount], [PurchaseType], [AgencyRepair], [RegistrationNo], [MakeModel], [EngineNo], [ChassisNo], [VehicleCC], [PlateColor], [Color], [Cylinder], [Hirepurchase_BankName], [AssuredName_Arabic], [AgentCode_BrokerCode], [AssuredName], [CivilID_CRNo], [PostBox], [PostalCode], [City], [ResPhoneNo], [Nationality], [MobileNo], [EmailId], [NillAdditionalDriver], [Marketer], [IssueFrom], [VIPCustomer], [SumInsured], [PremiumAmount], [RivisedSI], [CustomerCode], [CustomerName], [CreatedAt], [CreatedBy], [ModifiedAt], [ModifiedBy], [Status]) VALUES (29, CAST(N'2020-11-07T13:57:00.000' AS DateTime), N'P/004/01/20/2402/00029', N'New Policy/Renewal', N'Renew5', N'Head Office', CAST(N'2020-11-07T13:54:00.010' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), NULL, NULL, N'No', N'Card5', N'ASHOK LEYLAND', N'Truck', N'Commercial Vehicle', 2015, N'5', N'5', N'23', N'Sultanate of Oman', CAST(N'2016-05-10T00:00:00.000' AS DateTime), 5, N'No', 5000, N'Excess5', N'10', CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'5', N'Local Purchase', N'Yes', N'5434587', N'ASHOK LEYLAND', N'324234243', N'46456456928', N'56', N'Yellow', N'Yellow', N'Cylinder5', N'Hirepurchase_BankName5', NULL, N'SH001 - Ms.Kothar AL-Zadjali', N'AL HAMRIYA MARKETING SHOWROOM', N'5675856772', N'342', N'131', N'Al Hamriyah', N'99342197', N'Omani', N'99342020', N'murali@gmail.com', N'No', N'Direct', N'AMI Head Office', N'Yes', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-31T17:48:48.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Motor] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_ProducerCodeMaster] ON 
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (1, N'BA0001', N'RISK MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.590' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (2, N'BA0002', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.607' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (3, N'BA0003', N'INSURANCE MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (4, N'BA0004', N'AON MAJAN LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (5, N'BA0005', N'MARSH OMAN', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (6, N'BA0006', N'TRADE LINKS & SERVICES LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (7, N'BA0007', N'C.E. HEATH & PARTNERS L.L.C.', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (8, N'BA0008', N'INSURANCE SERVICE CENTRE', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (9, N'BA0009', N'CAPITAL INSURANCE CO. LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (10, N'BA0010', N'ARMOUR INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (11, N'BA0011', N'ASSARAIN INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (12, N'BA0012', N'OISB', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (13, N'BA0013', N'AL JAZEERA INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (14, N'BA0014', N'Al Amaana Insurance Services', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (15, N'BA0015', N'Reyadh Al Khatwah Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (16, N'BA0016', N'Al Falah Al Zahibi Trad & Cont LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (17, N'BA0017', N'Remal Al Qabil Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (18, N'BA0018', N'The Mountain Wolf  L.L.C', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (19, N'BA0019', N'Fasterz Trade International', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (20, N'BA0020', N'Diamond Road Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (21, N'BA0021', N'Zahir United LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (22, N'BA0022', N'Nizwa Window Trad.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (23, N'BA0023', N'Ibn Al Shirawi Trading', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (24, N'BA0024', N'Al Moram Co. Limitted LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (25, N'BA0025', N'Klaah Al Malada Trad. & Cont', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (26, N'BA0026', N'Safety City Trading LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (27, N'BA0027', N'Al Wasal United L.L.C', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (28, N'BA0028', N'Hameed Bin Salem Bin Saeed Al Shibly', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (29, N'BA0029', N'Al Sharqiya General Insurance Services', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (30, N'BA0030', N'M/s. Moosa Abdul Rahman Hassan & Co. LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (31, N'BA0031', N'The Mountain Wolf LLC.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (32, N'BA0032', N'SALAAM INSURANCE', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (33, N'BA0033', N'SOHAR INSURANCE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (34, N'BA0034', N'The Modern Region Ent.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (35, N'BA0035', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (36, N'BA0036', N'Dot International LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (37, N'BA0037', N'JADAWI AL SHARQIA TRDG.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (38, N'BA0038', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (39, N'BA0039', N'AL FAIRUZ INSURANCE SERVICES CO.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (40, N'BA0040', N'THE CASTLE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (41, N'BA0041', N'ZAHARAT AL HANA TRADING', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (42, N'BA0042', N'ARABIAN EXPERTISE HOUSE LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (43, N'BA0043', N'AL MURSI TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (44, N'BA0044', N'REZA TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (45, N'BA0045', N'OMAN ARAB BANK', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (46, N'BA0046', N'AL SHABAB AL WATANIYA ENT.', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (47, N'BA0047', N'MUSHAREEA AL SHABAB AL WATANIYA', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (48, N'BA0048', N'INFOLINE LLC', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (49, N'BA0049', N'AL RAIS TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (50, N'BA0050', N'SUHAIL BAHWAN - NISSAN', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (51, N'BA0051', N'MAIZE TRD. CONT. EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (52, N'BA0052', N'OMAN TRADING EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (53, N'BA0053', N'MAZAYA MUSCAT LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (54, N'BA0054', N'DIRECT LINE LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (55, N'BA0055', N'MAIZ ENTERPRISES TRADING', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (56, N'BA0056', N'Global United Insurance Services Co.', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (57, N'BA0057', N'M/S TOWEL AUTO CENTRE L.L.C', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (58, N'BA0058', N'M/S CRESENT GLOBAL', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (59, N'BA0059', N'UNITED FINANCE COMPANY', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (60, N'BA0060', N'ORYX INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (61, N'BA0061', N'FIRST POLICY INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (62, N'BA0062', N'High Capacity Trading LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (63, N'BA0063', N'PWS GULF LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (64, N'BA0064', N'SUN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (65, N'BA0065', N'OISB (SOHAR)', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (66, N'BA0066', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (67, N'BA0067', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (68, N'BA0068', N'TRUST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (69, N'BA0069', N'REGAL INSURANCE MANAGEMENT SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (70, N'BA0070', N'RUKHN AL BASHASHA TRAD', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (71, N'BA0071', N'GULF INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (72, N'BA0074', N'CAPITAL INSURANCE SERVICES SALALAH', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (73, N'BA0075', N'UNITED INSURANCES SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (74, N'BA0076', N'MUSCAT FINANCE CO LTD', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (75, N'BA0077', N'MAHINDRA INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (76, N'BA0078', N'ISI BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (77, N'BA0079', N'AL-QANDEEL INSURANCE SERVICE LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (78, N'BA0080', N'RAZAN TRAVEL', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (79, N'BA0081', N'KHIMIJI RAMDAS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (80, N'BA0082', N'NEW OMAN INSURANCE & REINSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (81, N'BA0083', N'INTERNATIONAL TRAVEL & TOURISUM LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (82, N'BA0084', N'ACE BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (83, N'BA0085', N'AL NAWRAS AL MALAKI INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (84, N'BA0086', N'BANK NIZWA S.A.O.G', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (85, N'BA0087', N'GAPCORP INSURANCE  BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (86, N'BA0088', N'ALLIANCE INSURANCE BROKER LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (87, N'BA0089', N'HOWDEN INSURANCE BROKERS (S.) PTE. LIMIT', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (88, N'BA0090', N'GLOBAL UNITED INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (89, N'BA0091', N'ASLAF AL - KHAIR INTERNATIONAL LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (90, N'BA0092', N'AL IZZ INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (91, N'BA0093', N'NEW GENERATION INSURANCE SERVICES CO LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (92, N'BA0094', N'MODERN GULF INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (93, N'BA0095', N'Al Sharia Business & Services', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (94, N'BA0096', N'AL INMA TRAD. ENTERPRISES', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (95, N'BA0097', N'AL NOWRAS AL LAAMEA TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (96, N'BA0098', N'SAMA HARWEEL INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (97, N'BA0099', N'FUTURE SOLUTIONS COMPANY LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (98, N'BA0100', N'SAIH ALMALAH INS BROK LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (99, N'BA0101', N'FASTERZ (HVV)', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (100, N'BA0102', N'PROTECTOPIA INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (101, N'BA0103', N'FUTURE SOLUTIONS COMPANY DEALER BUSINESS', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (102, N'BA0104', N'BEST WISHES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (103, N'BA0105', N'IBN AL-SHIRAWI TRADING LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (104, N'BA0106', N'FENCHURCH FARIS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (105, N'BA0107', N'Zenith Insurance Services LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (106, N'BA0108', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (107, N'BA0109', N'AL-SAJAYA NATIONAL Ent.', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (108, N'BA0110', N'ARCHIRSOOT TRAD & CONTR CO', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (109, N'BA0111', N'INTERNATIONAL ENTERPRISES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (110, N'BA0112', N'CLAW SILVER TRADING', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (111, N'BA0113', N'GUARANTEE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (112, N'BA0114', N'AL SALAMAH INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (113, N'BA0115', N'NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (114, N'BA0116', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (115, N'BA0117', N'RUKUN ALYAQEEN INSURANCE SERICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (116, N'BA0118', N'MIDDLE EAST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (117, N'BA0119', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (118, N'BA0120', N'RAZI INSURANCE AGENCY AND MODERN SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (119, N'BA0121', N'AL BATINAH TREASURES INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (120, N'BA0122', N'INSURANCE HOUSE LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (121, N'BA0123', N'WABAS AL ALMIYAH', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (122, N'BA0567', N'Mr.Khimji corporate company', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (123, N'BA0578', N'Mr.JAYARAM', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (124, N'BA0579', N'HAYARAM', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (125, N'BA0889', N'Mr.ANEESH', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (126, N'BA09090', N'credit limit testing', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (127, N'BA0996', N'Mr.CREDIT CONTROL CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (128, N'BA0997', N'TEST FST  LAST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (129, N'BA9987', N'CREDIT LIMIT CHECK CUSTOMER', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (130, N'BA9988', N'NIZWA WINDOW TRAD & CONT LLC NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (131, N'BA9989', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (132, N'BA9990', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (133, N'BK0000001', N'BANK TEST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (134, N'BR0997', N'Mr.TESTING FOR MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (135, N'BR0998', N'CREDIT LIMIT CHECKING MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (136, N'BR0999', N'Mr.CREDIT LIMIT CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (137, N'BR99887', N'hhttuu', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (138, N'BRK1234', N'CC TESTING', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (139, N'BRK8900', N'cc testing today', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (140, N'BRK8999', N'FOR TESTING OF CC', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (141, N'BROK778', N'Mr.GANESH CREDIT LIMIT CHECK', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (142, N'BROK779', N'Mr.AMI TESTING DEC 122016', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (143, N'CHS002', N'M/S.Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (144, N'CL001234', N'name1', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (145, N'CSH001', N'Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (146, N'CSH002', N'Cash Customers-Salalah', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (147, N'CSH003', N'Cash Customers-Sohar', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (148, N'CSH004', N'Cash Customers-Nizwa', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (149, N'CSH005', N'Cash Customers-Seeb', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (150, N'CSH006', N'Cash Customers-SQU', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (151, N'CSH007', N'Cash Customers-MGM Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (152, N'CSH008', N'Cash Customers-MGM Corporate Office', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (153, N'CSH009', N'Cash Customers-LULU Avenue Mall Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (154, N'CSH010', N'Cash Customers-CBD', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (155, N'CSH011', N'Cash Customers-Ruwi Rex Road', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (156, N'CSH012', N'Cash Customers-Walk Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (157, N'CSH013', N'Cash Customers-Panorama Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (158, N'CSH014', N'Cash Customers-Amarat', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (159, N'CSH015', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (160, N'CSH016', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (161, N'CSHONL', N'Cash Customers-Online', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (162, N'GA0012', N'ganesh', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (163, N'IL0217', N'Mr.KHALID JUMA HARIB HASSAN AL SARMI', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (164, N'ME0001', N'Naveed Shafi', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (165, N'ME0002', N'Abdul Khaliq Abdul Rahman', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (166, N'ME0003', N'Ranganathan Chakrapani', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (167, N'ME0004', N'Fayaz Ahmed', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (168, N'ME0005', N'Chander Prakash', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (169, N'ME0007', N'Sreedhar', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (170, N'ME0008', N'Ahmed Berham', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (171, N'ME0009', N'Qasim Al Ghafri', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (172, N'ME0010', N'Naeema Al Hinai', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (173, N'ME0011', N'Talib Al Kharusi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (174, N'ME0012', N'Mohammed Qasim', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (175, N'ME0014', N'SYED NAZEER AHMED', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (176, N'ME0015', N'EMAN SAID AL GHADANI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (177, N'ME0016', N'SAMAR SAMIR AL ZIDJALI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (178, N'ME0017', N'TEHFEEN PANWALA', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (179, N'ME0018', N'Abdulaziz Al Mahthoor', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (180, N'ME0019', N'Sheikha Dawood Alawi Al Araimi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (181, N'ME0020', N'Ghalib AL-Busaidi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (182, N'ME0021', N'Abdul Hakeem AL Rashdi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (183, N'ME0022', N'HILAL SALEH AL SHAQSI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (184, N'ME0023', N'MAHMOOD NASSER AL OMAIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (185, N'ME0024', N'Fathi Al Riyami', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (186, N'ME0025', N'SUMAIYA MOHAMMED AL NASIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (187, N'ME0026', N'SAIF AL HASHMI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (188, N'SH001', N'Ms.Kothar AL-Zadjali', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (189, N'SH002', N'Mr.Hamed AL-Siyabi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (190, N'SH003', N'Mr.Nasser AL-Gharibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (191, N'SH004', N'Mr.Ahmed AL-talaai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (192, N'SH005', N'Mr.Ghaith AL-Maghribi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (193, N'SH006', N'Ms.Tahani Abdullah Al Najadi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (194, N'SH007', N'Ms.Ahad Ali Al Wahaibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (195, N'SH008', N'Ms.Israa Zayid Khalifa Al Kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (196, N'SH009', N'Mr.Emad Khalid Ali Al Bulushi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (197, N'SH010', N'Mr.Mohammed Sameer Al kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (198, N'SH011', N'Mr.DAWOOD SULAIMAN AL WAHAIBI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (199, N'SH012', N'Mr.FAYADH NASSER AL HADI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (200, N'SH013', N'Ms.MARYAM YOUNIS AL ZADJALI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (201, N'SH014', N'Mr.Muadh Khamis Salim Al Hinai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (202, N'SH015', N'Ms.Khulood Sadiq Al Ajmi', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
INSERT [dbo].[TB_ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (203, N'SH016', N'Mr.Saif Al Said', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_ProducerCodeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_RoleMaster] ON 
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (2, N'Agent')
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (3, N'Broker')
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (4, N'Branches')
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (5, N'DirectSales')
GO
INSERT [dbo].[TB_RoleMaster] ([RoleId], [RoleName]) VALUES (6, N'CallingAgent')
GO
SET IDENTITY_INSERT [dbo].[TB_RoleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Users] ON 
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (1, N'BA001', N'1234', 2, N'RISK MANAGEMENT SERVICES', CAST(N'2020-08-19T11:16:47.970' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (2, N'BA0002', N'1234', 3, N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-19T11:16:47.990' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (3, N'BA0003', N'1234', 3, N'INSURANCE MANAGEMENT SERVICES', CAST(N'2020-08-19T11:16:47.990' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (4, N'BA0004', N'1234', 3, N'AON MAJAN LLC', CAST(N'2020-08-19T11:16:47.990' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (5, N'BA0005', N'1234', 3, N'MARSH OMAN', CAST(N'2020-08-19T11:16:47.990' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (6, N'BA0006', N'1234', 3, N'TRADE LINKS & SERVICES LLC', CAST(N'2020-08-19T11:16:47.990' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (7, N'BA0007', N'1234', 3, N'C.E. HEATH & PARTNERS L.L.C.', CAST(N'2020-08-19T11:16:47.993' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (8, N'BA0008', N'1234', 3, N'INSURANCE SERVICE CENTRE', CAST(N'2020-08-19T11:16:47.993' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (9, N'BA0009', N'1234', 3, N'CAPITAL INSURANCE CO. LLC', CAST(N'2020-08-19T11:16:47.993' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (10, N'BA0010', N'1234', 3, N'ARMOUR INSURANCE SERVICES', CAST(N'2020-08-19T11:16:47.993' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (11, N'BA0011', N'1234', 3, N'ASSARAIN INSURANCE SERVICES', CAST(N'2020-08-19T11:16:47.997' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (12, N'BA0012', N'1234', 3, N'OISB', CAST(N'2020-08-19T11:16:47.997' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (13, N'BA0013', N'1234', 3, N'AL JAZEERA INSURANCE SERVICES', CAST(N'2020-08-19T11:16:47.997' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (14, N'BA0014', N'1234', 3, N'Al Amaana Insurance Services', CAST(N'2020-08-19T11:16:48.000' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (15, N'BA0015', N'1234', 3, N'Reyadh Al Khatwah Trading', CAST(N'2020-08-19T11:16:48.000' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (16, N'BA0016', N'1234', 3, N'Al Falah Al Zahibi Trad & Cont LLC', CAST(N'2020-08-19T11:16:48.020' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (17, N'BA0017', N'1234', 3, N'Remal Al Qabil Trading', CAST(N'2020-08-19T11:16:48.020' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (18, N'BA0018', N'1234', 3, N'The Mountain Wolf  L.L.C', CAST(N'2020-08-19T11:16:48.023' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (19, N'BA0019', N'1234', 2, N'Fasterz Trade International', CAST(N'2020-08-19T11:16:48.023' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (20, N'BA0020', N'1234', 3, N'Diamond Road Trading', CAST(N'2020-08-19T11:16:48.023' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (21, N'BA0021', N'1234', 3, N'Zahir United LLC', CAST(N'2020-08-19T11:16:48.023' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (22, N'BA0022', N'1234', 2, N'Nizwa Window Trad.', CAST(N'2020-08-19T11:16:48.023' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (23, N'BA0023', N'1234', 2, N'Ibn Al Shirawi Trading', CAST(N'2020-08-19T11:16:48.027' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (24, N'BA0024', N'1234', 3, N'Al Moram Co. Limitted LLC', CAST(N'2020-08-19T11:16:48.027' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (25, N'BA0025', N'1234', 2, N'Klaah Al Malada Trad. & Cont', CAST(N'2020-08-19T11:16:48.027' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (26, N'BA0026', N'1234', 2, N'Safety City Trading LLC', CAST(N'2020-08-19T11:16:48.027' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (27, N'BA0027', N'1234', 3, N'Al Wasal United L.L.C', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (28, N'BA0028', N'1234', 3, N'Hameed Bin Salem Bin Saeed Al Shibly', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (29, N'BA0029', N'1234', 3, N'Al Sharqiya General Insurance Services', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (30, N'BA0030', N'1234', 3, N'M/s. Moosa Abdul Rahman Hassan & Co. LLC', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (31, N'BA0031', N'1234', 3, N'The Mountain Wolf LLC.', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (32, N'BA0032', N'1234', 3, N'SALAAM INSURANCE', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (33, N'BA0033', N'1234', 3, N'SOHAR INSURANCE', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (34, N'BA0034', N'1234', 3, N'The Modern Region Ent.', CAST(N'2020-08-19T11:16:48.030' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (35, N'BA0035', N'1234', 3, N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-19T11:16:48.033' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (36, N'BA0036', N'1234', 3, N'Dot International LLC', CAST(N'2020-08-19T11:16:48.033' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (37, N'BA0037', N'1234', 3, N'JADAWI AL SHARQIA TRDG.', CAST(N'2020-08-19T11:16:48.033' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (38, N'BA0038', N'1234', 3, N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-19T11:16:48.033' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (39, N'BA0039', N'1234', 3, N'AL FAIRUZ INSURANCE SERVICES CO.', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (40, N'BA0040', N'1234', 3, N'THE CASTLE INSURANCE SERVICE', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (41, N'BA0041', N'1234', 3, N'ZAHARAT AL HANA TRADING', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (42, N'BA0042', N'1234', 3, N'ARABIAN EXPERTISE HOUSE LLC', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (43, N'BA0043', N'1234', 3, N'AL MURSI TRADING', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (44, N'BA0044', N'1234', 3, N'REZA TRADING', CAST(N'2020-08-19T11:16:48.037' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (45, N'BA0045', N'1234', 2, N'OMAN ARAB BANK', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (46, N'BA0046', N'1234', 3, N'AL SHABAB AL WATANIYA ENT.', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (47, N'BA0047', N'1234', 3, N'MUSHAREEA AL SHABAB AL WATANIYA', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (48, N'BA0048', N'1234', 3, N'INFOLINE LLC', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (49, N'BA0049', N'1234', 3, N'AL RAIS TRADING', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (50, N'BA0050', N'1234', 3, N'SUHAIL BAHWAN - NISSAN', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (51, N'BA0051', N'1234', 3, N'MAIZE TRD. CONT. EST', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (52, N'BA0052', N'1234', 3, N'OMAN TRADING EST', CAST(N'2020-08-19T11:16:48.040' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (53, N'BA0053', N'1234', 2, N'MAZAYA MUSCAT LLC', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (54, N'BA0054', N'1234', 3, N'DIRECT LINE LLC', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (55, N'BA0055', N'1234', 3, N'MAIZ ENTERPRISES TRADING', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (56, N'BA0056', N'1234', 3, N'Global United Insurance Services Co.', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (57, N'BA0057', N'1234', 3, N'M/S TOWEL AUTO CENTRE L.L.C', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (58, N'BA0058', N'1234', 3, N'M/S CRESENT GLOBAL', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (59, N'BA0059', N'1234', 2, N'UNITED FINANCE COMPANY', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (60, N'BA0060', N'1234', 3, N'ORYX INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.043' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (61, N'BA0061', N'1234', 2, N'FIRST POLICY INSURANCE SERVICES', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (62, N'BA0062', N'1234', 3, N'High Capacity Trading LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (63, N'BA0063', N'1234', 3, N'PWS GULF LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (64, N'BA0064', N'1234', 3, N'SUN INSURANCE BROKERS LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (65, N'BA0065', N'1234', 3, N'OISB (SOHAR)', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (66, N'BA0066', N'1234', 3, N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (67, N'BA0067', N'1234', 3, N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (68, N'BA0068', N'1234', 3, N'TRUST INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.047' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (69, N'BA0069', N'1234', 3, N'REGAL INSURANCE MANAGEMENT SERVICES LLC', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (70, N'BA0070', N'1234', 3, N'RUKHN AL BASHASHA TRAD', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (71, N'BA0071', N'1234', 3, N'GULF INSURANCE BROKERS LLC', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (72, N'BA0074', N'1234', 3, N'CAPITAL INSURANCE SERVICES SALALAH', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (73, N'BA0075', N'1234', 3, N'UNITED INSURANCES SERVICES LLC', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (74, N'BA0076', N'1234', 2, N'MUSCAT FINANCE CO LTD', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Agent', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (75, N'BA0077', N'1234', 3, N'MAHINDRA INSURANCE BROKERS', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (76, N'BA0078', N'1234', 3, N'ISI BROKER', CAST(N'2020-08-19T11:16:48.050' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (77, N'BA0079', N'1234', 2, N'AL-QANDEEL INSURANCE SERVICE LLC', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (78, N'BA0080', N'1234', 2, N'RAZAN TRAVEL', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (79, N'BA0081', N'1234', 3, N'KHIMIJI RAMDAS INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (80, N'BA0082', N'1234', 3, N'NEW OMAN INSURANCE & REINSURANCE SERVICE', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (81, N'BA0083', N'1234', 3, N'INTERNATIONAL TRAVEL & TOURISUM LLC', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (82, N'BA0084', N'1234', 3, N'ACE BROKER', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (83, N'BA0085', N'1234', 3, N'AL NAWRAS AL MALAKI INSURANCE BROKERS', CAST(N'2020-08-19T11:16:48.053' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (84, N'BA0086', N'1234', 2, N'BANK NIZWA S.A.O.G', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (85, N'BA0087', N'1234', 3, N'GAPCORP INSURANCE  BROKERS', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (86, N'BA0088', N'1234', 3, N'ALLIANCE INSURANCE BROKER LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (87, N'BA0089', N'1234', 3, N'HOWDEN INSURANCE BROKERS (S.) PTE. LIMIT', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (88, N'BA0090', N'1234', 3, N'GLOBAL UNITED INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (89, N'BA0091', N'1234', 3, N'ASLAF AL - KHAIR INTERNATIONAL LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (90, N'BA0092', N'1234', 3, N'AL IZZ INSURANCE BROKERS', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (91, N'BA0093', N'1234', 3, N'NEW GENERATION INSURANCE SERVICES CO LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (92, N'BA0094', N'1234', 3, N'MODERN GULF INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (93, N'BA0095', N'1234', 3, N'Al Sharia Business & Services', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (94, N'BA0096', N'1234', 3, N'AL INMA TRAD. ENTERPRISES', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (95, N'BA0097', N'1234', 3, N'AL NOWRAS AL LAAMEA TRAD & CONT LLC', CAST(N'2020-08-19T11:16:48.057' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (96, N'BA0098', N'1234', 3, N'SAMA HARWEEL INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (97, N'BA0099', N'1234', 3, N'FUTURE SOLUTIONS COMPANY LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (98, N'BA0100', N'1234', 3, N'SAIH ALMALAH INS BROK LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (99, N'BA0101', N'1234', 3, N'FASTERZ (HVV)', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (100, N'BA0102', N'1234', 3, N'PROTECTOPIA INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (101, N'BA0103', N'1234', 2, N'FUTURE SOLUTIONS COMPANY DEALER BUSINESS', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (102, N'BA0104', N'1234', 2, N'BEST WISHES LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (103, N'BA0105', N'1234', 2, N'IBN AL-SHIRAWI TRADING LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (104, N'BA0106', N'1234', 3, N'FENCHURCH FARIS INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (105, N'BA0107', N'1234', 3, N'Zenith Insurance Services LLC', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (106, N'BA0108', N'1234', 3, N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (107, N'BA0109', N'1234', 3, N'AL-SAJAYA NATIONAL Ent.', CAST(N'2020-08-19T11:16:48.060' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (108, N'BA0110', N'1234', 2, N'ARCHIRSOOT TRAD & CONTR CO', CAST(N'2020-08-19T11:16:48.063' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (109, N'BA0111', N'1234', 3, N'INTERNATIONAL ENTERPRISES LLC', CAST(N'2020-08-19T11:16:48.063' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (110, N'BA0112', N'1234', 2, N'CLAW SILVER TRADING', CAST(N'2020-08-19T11:16:48.063' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (111, N'BA0113', N'1234', 3, N'GUARANTEE INSURANCE SERVICE', CAST(N'2020-08-19T11:16:48.063' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (112, N'BA0114', N'1234', 3, N'AL SALAMAH INSURANCE SERVICES', CAST(N'2020-08-19T11:16:48.063' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (113, N'BA0115', N'1234', 2, N'NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'AGENT', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (114, N'BA0116', N'1234', 3, N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (115, N'BA0117', N'1234', 3, N'RUKUN ALYAQEEN INSURANCE SERICES LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (116, N'BA0118', N'1234', 3, N'MIDDLE EAST INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (117, N'BA0119', N'1234', 3, N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (118, N'BA0120', N'1234', 3, N'RAZI INSURANCE AGENCY AND MODERN SERVICES LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (119, N'BA0121', N'1234', 3, N'AL BATINAH TREASURES INSURANCE BROKERS LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (120, N'BA0122', N'1234', 3, N'INSURANCE HOUSE LLC', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (121, N'BA0123', N'1234', 3, N'WABAS AL ALMIYAH', CAST(N'2020-08-19T11:16:48.067' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (123, N'BA9989', N'1234', 3, N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-19T11:16:48.187' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (124, N'BA9990', N'1234', 3, N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Broker', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (125, N'CSH001', N'1234', 4, N'Cash Customers-HO', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (126, N'CSH002', N'1234', 4, N'Cash Customers-Salalah', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (127, N'CSH003', N'1234', 4, N'Cash Customers-Sohar', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (128, N'CSH004', N'1234', 4, N'Cash Customers-Nizwa', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (129, N'CSH005', N'1234', 4, N'Cash Customers-Seeb', CAST(N'2020-08-19T11:16:48.190' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (130, N'CSH006', N'1234', 4, N'Cash Customers-SQU', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (131, N'CSH007', N'1234', 4, N'Cash Customers-MGM Kiosk', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (132, N'CSH008', N'1234', 4, N'Cash Customers-MGM Corporate Office', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (133, N'CSH009', N'1234', 4, N'Cash Customers-LULU Avenue Mall Kiosk', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (134, N'CSH010', N'1234', 4, N'Cash Customers-CBD', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (135, N'CSH011', N'1234', 4, N'Cash Customers-Ruwi Rex Road', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (136, N'CSH012', N'1234', 4, N'Cash Customers-Walk Mall Kiosk', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (137, N'CSH013', N'1234', 4, N'Cash Customers-Panorama Mall Kiosk', CAST(N'2020-08-19T11:16:48.193' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (138, N'CSH014', N'1234', 4, N'Cash Customers-Amarat', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (139, N'CSH015', N'1234', 4, N'Cash Customers-Barka', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (140, N'CSH016', N'1234', 4, N'Cash Customers-Barka', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (141, N'CSHONL', N'1234', 4, N'Cash Customers-Online', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Branch', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (142, N'ME0001', N'1234', 0, N'Naveed Shafi', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (143, N'ME0002', N'1234', 0, N'Abdul Khaliq Abdul Rahman', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (144, N'ME0003', N'1234', 0, N'Ranganathan Chakrapani', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (145, N'ME0004', N'1234', 0, N'Fayaz Ahmed', CAST(N'2020-08-19T11:16:48.197' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (146, N'ME0005', N'1234', 0, N'Chander Prakash', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (147, N'ME0007', N'1234', 0, N'Sreedhar', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (148, N'ME0008', N'1234', 0, N'Ahmed Berham', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (149, N'ME0009', N'1234', 0, N'Qasim Al Ghafri', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (150, N'ME0010', N'1234', 0, N'Naeema Al Hinai', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (151, N'ME0011', N'1234', 0, N'Talib Al Kharusi', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (152, N'ME0012', N'1234', 0, N'Mohammed Qasim', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (153, N'ME0014', N'1234', 0, N'SYED NAZEER AHMED', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (154, N'ME0015', N'1234', 0, N'EMAN SAID AL GHADANI', CAST(N'2020-08-19T11:16:48.200' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (155, N'ME0016', N'1234', 0, N'SAMAR SAMIR AL ZIDJALI', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (156, N'ME0017', N'1234', 0, N'TEHFEEN PANWALA', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (157, N'ME0018', N'1234', 0, N'Abdulaziz Al Mahthoor', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (158, N'ME0019', N'1234', 0, N'Sheikha Dawood Alawi Al Araimi', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (159, N'ME0020', N'1234', 0, N'Ghalib AL-Busaidi', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (160, N'ME0021', N'1234', 0, N'Abdul Hakeem AL Rashdi', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (161, N'ME0022', N'1234', 0, N'HILAL SALEH AL SHAQSI', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (162, N'ME0023', N'1234', 0, N'MAHMOOD NASSER AL OMAIRI', CAST(N'2020-08-19T11:16:48.203' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (163, N'ME0024', N'1234', 0, N'Fathi Al Riyami', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (164, N'ME0025', N'1234', 0, N'SUMAIYA MOHAMMED AL NASIRI', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (165, N'ME0026', N'1234', 0, N'SAIF AL HASHMI', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'Marketer', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (166, N'SH001', N'1234', 5, N'Ms.Kothar AL-Zadjali', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (167, N'SH002', N'1234', 5, N'Mr.Hamed AL-Siyabi', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (168, N'SH003', N'1234', 5, N'Mr.Nasser AL-Gharibi', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (169, N'SH004', N'1234', 5, N'Mr.Ahmed AL-talaai', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (170, N'SH005', N'1234', 5, N'Mr.Ghaith AL-Maghribi', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (171, N'SH006', N'1234', 5, N'Ms.Tahani Abdullah Al Najadi', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (172, N'SH007', N'1234', 5, N'Ms.Ahad Ali Al Wahaibi', CAST(N'2020-08-19T11:16:48.207' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (173, N'SH008', N'1234', 5, N'Ms.Israa Zayid Khalifa Al Kindi', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (174, N'SH009', N'1234', 5, N'Mr.Emad Khalid Ali Al Bulushi', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (175, N'SH010', N'1234', 5, N'Mr.Mohammed Sameer Al kindi', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (176, N'SH011', N'1234', 5, N'Mr.DAWOOD SULAIMAN AL WAHAIBI', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (177, N'SH012', N'1234', 5, N'Mr.FAYADH NASSER AL HADI', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (178, N'SH013', N'1234', 5, N'Ms.MARYAM YOUNIS AL ZADJALI', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (179, N'SH014', N'1234', 5, N'Mr.Muadh Khamis Salim Al Hinai', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (180, N'SH015', N'1234', 5, N'Ms.Khulood Sadiq Al Ajmi', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (181, N'SH016', N'1234', 5, N'Mr.Saif Al Said', CAST(N'2020-08-19T11:16:48.210' AS DateTime), N'SALES TEAM', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (182, N'admin', N'admin', 1, N'Admin', CAST(N'2020-08-21T11:30:53.223' AS DateTime), N'SuperAdmin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (183, N'Branch05', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:36:51.243' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (184, N'BRANCH02', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:36:51.533' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (185, N'Branch15', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:36:51.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (186, N'Branch06', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:37:23.357' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (187, N'Branch14', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:37:23.360' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (188, N'Branch04', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:37:23.360' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (189, N'Branch03', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:37:42.267' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (190, N'BRANCH01', N'test123', 4, N'BranchManager', CAST(N'2020-11-24T23:37:42.267' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (191, N'sathishkumar', N'1234', 0, NULL, CAST(N'2020-12-12T12:29:40.490' AS DateTime), N'SuperAdmin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (192, N'sati', N'password', 3, N'Broker', CAST(N'2020-12-12T13:33:15.240' AS DateTime), N'SuperAdmin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (193, N'sathishhn', N'1234', 1, N'Admin', CAST(N'2021-02-23T14:52:21.767' AS DateTime), N'SuperAdmin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (194, N'muralsathish', N'murali@123', 2, N'Agent', CAST(N'2021-03-04T07:58:50.180' AS DateTime), N'SuperAdmin', NULL, NULL, N'ag001')
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (195, N'ILAYARAJA', N'123456', 3, N'Broker', CAST(N'2021-03-04T16:42:05.543' AS DateTime), N'SuperAdmin', NULL, NULL, N'BA002')
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (196, N'sathishkumarn', N'satishmca@1', 2, N'Agent', CAST(N'2021-03-08T22:55:41.507' AS DateTime), N'SuperAdmin', NULL, NULL, N'AG001')
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (197, N'Mohammed', N'12345', 5, N'DirectSales', CAST(N'2021-03-24T15:01:50.613' AS DateTime), N'SuperAdmin', NULL, NULL, N'MKT220')
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (198, N'01-Head Office', N'1234', 4, NULL, CAST(N'2021-05-08T20:46:28.560' AS DateTime), N'Admin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (199, N'02-Salalah Branch Office', N'1234', 4, NULL, CAST(N'2021-05-08T20:46:28.560' AS DateTime), N'Admin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (200, N'03-Sohar Branch Office', N'1234', 4, NULL, CAST(N'2021-05-08T20:46:28.560' AS DateTime), N'Admin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (201, N'04-Nizwa Branch Office', N'1234', 4, NULL, CAST(N'2021-05-08T20:46:28.560' AS DateTime), N'Admin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (202, N'05-Seeb Branch Office', N'1234', 4, NULL, CAST(N'2021-05-08T20:46:28.560' AS DateTime), N'Admin', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (203, N'subiah', N'admin123', 6, N'CallingAgent', CAST(N'2021-05-14T12:28:00.617' AS DateTime), N'SuperAdmin', NULL, NULL, N'Sub agent')
GO
INSERT [dbo].[TB_Users] ([UserId], [UserName], [Password], [RoleId], [RoleName], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [SubRoleType]) VALUES (204, N'Sumaiya', N'1234', 6, N'CallingAgent', CAST(N'2021-05-20T20:31:22.650' AS DateTime), N'SuperAdmin', NULL, NULL, N' na')
GO
SET IDENTITY_INSERT [dbo].[TB_Users] OFF
GO
ALTER TABLE [dbo].[TB_Domestic] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Individual] ADD  DEFAULT (getdate()) FOR [CreatedAt]
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
ALTER TABLE [dbo].[TB_Motor] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_ProducerCodeMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Travel] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TB_Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  StoredProcedure [dbo].[pBulkDelegateStatus]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkUpdateInsuranceStatus]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[pBulkUploadInsurance]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[pGetDelegateData]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[PGetSearchDelegateMotor]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[PGetSearchMasterMotor]    Script Date: 20-05-2021 21:19:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PGetSearchMasterMotor]
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

declare @Flag int
if exists(select 1 from TB_Users where UserName=@ProducerName and RoleId=6)
begin
set @flag=1
end

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
				Isnull(GrossPremium,0.00) as GrossPremium,Isnull(RevisedSumInsured,0.00) as RevisedSumInsured,
				Isnull(SumInsured,0.00) as SumInsured,
				Isnull(RevisedGrossPremium,0.00) as RevisedGrossPremium,
				Isnull(MarketingExecutive,'''') as MarketingExecutive,
				Isnull(Remarks,'''') as Remarks,Isnull(DivnCode,'''') as DivnCode,Isnull(CustomerCode,'''') as CustomerCode,Isnull(Charges,0.00) as Charges,
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


				IF(@ProducerName IS NOT NULL and @Flag=1)
				BEGIN 
				
				    IF (@Where ='')
					 SET  @Where  = 'Producer = '''+@ProducerName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND Producer = '''+@ProducerName+''''
				END
				
				ELSE 
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
  
  IF(@ProducerName IS NOT NULL and @Flag=1)
				BEGIN 
				
				    IF (@Where ='')
					 SET  @Where  = 'Producer = '''+@ProducerName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND Producer = '''+@ProducerName+''''
				END
				ELSE IF(@RoleId=4 AND @ProducerName IS NOT NULL)
				BEGIN
				
				 IF (@Where ='')
					 SET  @Where  = 'DivisionCode = '''+@ProducerName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND DivisionCode = '''+@ProducerName+''''
				END
				ELSE 
				BEGIN

				 IF (@Where ='')
					 SET  @Where  = 'CustomerCode = '''+@ProducerName+''''
					ELSE 
					SET  @Where  = @Where +  ' AND CustomerCode = '''+@ProducerName+''''
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
  
  
    --Select @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' 
    EXEC ( @Query + ' Where ' +@Where +' Order by PolicyFromDate asc' )
  END
  ELSE
  BEGIN
  
   EXEC (@Query)
  END

END




GO
/****** Object:  StoredProcedure [dbo].[pGetUserAutoComplete]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DomesticBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoard_bak]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBIDashBoardYearWise]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetCallBackDetails]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetInsurance]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetMIDashBoard]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetPMDashBoard]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetProducerMaster]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetSearch]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetSpecificBIDB]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo_bak]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseInfo]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseReport]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetYearwisePolicyReport]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_IndividualBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsUpdate]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorDomesticSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorIndividualSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsUpdate]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorTravelSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NewInsSave]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NewInsUpdate]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterUser]    Script Date: 20-05-2021 21:19:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TravelBulkUpload]    Script Date: 20-05-2021 21:19:15 ******/
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
