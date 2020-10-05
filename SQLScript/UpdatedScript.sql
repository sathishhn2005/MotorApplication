USE [MotorIns]
GO
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_DomesticInsSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_IndividualInsSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_MotorInsSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  UserDefinedTableType [dbo].[UDT_TravelInsSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  Table [dbo].[TB_Calender]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Domestic]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Individual]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Motor]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ProducerCodeMaster]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RoleMaster]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Travel]    Script Date: 04-09-2020 17:33:17 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Users]    Script Date: 04-09-2020 17:33:17 ******/
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
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[SP_DomesticBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetBarChart]    Script Date: 04-09-2020 17:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetBarChart] (@flag int)
AS 
BEGIN
if(@flag=1)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
tb_motor M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyEndDate) and year(getdate())=year(policyenddate)) t
pivot
(Count (PolicyNo) for Status in([Dropped],[Completed],[NotProgressed])) as pivot_final_table order by CalenderId
--a.* b* totcnt
END
if(@flag=2)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Travel M 

right join TB_Calender C on C.MonthName=DATENAME(month, DateOfReturn)and year(getdate())=year(DateOfReturn)) t
pivot
(Count (PolicyNo) for Status in([Dropped],[Completed],[NotProgressed])) as pivot_final_table order by CalenderId
--a.* b* totcnt
END
if(@flag=3)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Individual M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyEndDate) and year(getdate())=year(policyenddate) ) t
pivot
(Count (PolicyNo) for Status in([Dropped],[Completed],[NotProgressed])) as pivot_final_table order by CalenderId
--a.* b* totcnt
END
if(@flag=4)
begin 
select * from (select c.Calenderid, c.MonthName,PolicyNo,IsNull(Status,'NotProgressed') as Status from
TB_Domestic M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyEndDate) and year(getdate())=year(policyenddate)) t
pivot
(Count (PolicyNo) for Status in([Dropped],[Completed],[NotProgressed])) as pivot_final_table order by CalenderId
--a.* b* totcnt
END
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMastersView]    Script Date: 04-09-2020 17:33:17 ******/
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

FROM TB_MOTOR where PolicyNo is not null

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
 from TB_Travel
 
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

 from TB_Individual
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
from TB_DOMESTIC
print 1
select ProducerCodeId,ProducerCode,ProducerName from tb_producercodemaster
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetPMDashBoard]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetProducerMaster]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserDomesticDB]    Script Date: 04-09-2020 17:33:17 ******/
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
if(@UserName<>'' and @RoleId<>1)
begin

set @TotPoltoBeRenewed=(select count(*) from TB_Domestic where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Domestic where
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Domestic where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Completed')

set @PolicyLost=(select count(*) from TB_Domestic where 

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else 
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @TotPolOnHoldCM=(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @NoOfPoRenewedCM=(
select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)
set @PolicyLostCM=(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,
@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

else
begin

print 2
set @TotPoltoBeRenewed=(select count(*) from TB_Domestic where 

PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Domestic where

 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Domestic where 

status='Completed')

set @PolicyLost=(select count(*) from TB_Domestic where 


status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Domestic WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(select count(*) from TB_Domestic where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(select count(*) from TB_Domestic where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Domestic where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM, @TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserIndividualDB]    Script Date: 04-09-2020 17:33:17 ******/
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
if(@UserName<>'' and @RoleId<>1)
begin

set @TotPoltoBeRenewed=(select count(*) from TB_Individual where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Individual where
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Individual where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Completed')

set @PolicyLost=(select count(*) from TB_Individual where 

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else 
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @TotPolOnHoldCM=(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @NoOfPoRenewedCM=(
select count(*) from TB_Individual where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)
set @PolicyLostCM=(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,
@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

else
begin

print 2
set @TotPoltoBeRenewed=(select count(*) from TB_Individual where 

PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Individual where

 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Individual where 

status='Completed')

set @PolicyLost=(select count(*) from TB_Individual where 


status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Individual WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(select count(*) from TB_Individual where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(select count(*) from TB_Individual where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Individual where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM, @TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserInsInfo]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserMDB]    Script Date: 04-09-2020 17:33:17 ******/
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
if(@UserName<>'' and @RoleId<>1)
begin

set @TotPoltoBeRenewed=(select count(*) from TB_Motor where 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end and
PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Motor where
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end and
 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Motor where 
@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end and
status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where 

@UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode
else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end and
status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode else 
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) end)

set @TotPolOnHoldCM=(select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode else
LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) end)

set @NoOfPoRenewedCM=(
select count(*) from TB_Motor where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)and @UserName=CASE 
WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode else LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end)
set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',AgentCode_BrokerCode)-2 <= 0) THEN AgentCode_BrokerCode else LEFT(AgentCode_BrokerCode, CHARINDEX('-', AgentCode_BrokerCode) - 2) 
end)

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,
@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

else
begin

print 2
set @TotPoltoBeRenewed=(select count(*) from TB_Motor where 

PolicyEndDate between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Motor where

 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Motor where 

status='Completed')

set @PolicyLost=(select count(*) from TB_Motor where 


status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Motor WHERE cast(PolicyEndDate as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(select count(*) from TB_Motor where status='OnHold' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(select count(*) from TB_Motor where status='Completed' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Motor where status='Dropped' and PolicyEndDate between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM, @TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserTravelDB]    Script Date: 04-09-2020 17:33:17 ******/
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
if(@UserName<>'' and @RoleId<>1)
begin

set @TotPoltoBeRenewed=(select count(*) from TB_Travel where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
DateOfReturn between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Travel where
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Travel where 
@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Completed')

set @PolicyLost=(select count(*) from TB_Travel where 

@UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode
else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end and
status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Travel WHERE cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else 
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @TotPolOnHoldCM=(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else
LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) end)

set @NoOfPoRenewedCM=(
select count(*) from TB_Travel where status='Completed' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)and @UserName=CASE 
WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)
set @PolicyLostCM=(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0)
and @UserName=CASE WHEN (CHARINDEX('-',Broker_AgentCode)-2 <= 0) THEN Broker_AgentCode else LEFT(Broker_AgentCode, CHARINDEX('-', Broker_AgentCode) - 2) 
end)

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM,
@TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

else
begin

print 2
set @TotPoltoBeRenewed=(select count(*) from TB_Travel where 

DateOfReturn between getdate() and DATEADD(dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE())+1, 0)))

set @TotPolforRenewal=(select count(*) from TB_Travel where

 Status='OnHold')

set @NoOfPoRenewed=(select count(*) from TB_Travel where 

status='Completed')

set @PolicyLost=(select count(*) from TB_Travel where 


status='Dropped')


set @TotPoltoBeRenewedCM=(SELECT count(*)FROM TB_Travel WHERE cast(DateOfReturn as date) BETWEEN CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @TotPolOnHoldCM=(select count(*) from TB_Travel where status='OnHold' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @NoOfPoRenewedCM=(select count(*) from TB_Travel where status='Completed' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

set @PolicyLostCM=(select count(*) from TB_Travel where status='Dropped' and DateOfReturn between CONVERT(date, getdate()) and  EOMONTH(getdate(),0))

select @TotPoltoBeRenewed as TotPoltoBeRenewed,@TotPolforRenewal as TotPolforRenewal,@NoOfPoRenewed as NoOfPoRenewed,@PolicyLost as PolicyLost,@UserName as UserName, @TotPoltoBeRenewedCM as TotPoltoBeRenewedCM, @TotPolOnHoldCM as TotPolforRenewalCM,@NoOfPoRenewedCM as NoOfPoRenewedCM,@PolicyLostCM as PolicyLostCM
end

end

end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseInfo]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetUserwiseReport]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_IndividualBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorDomesticSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorIndividualSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorInsUpdate]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MotorTravelSave]    Script Date: 04-09-2020 17:33:17 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RegisterUser]    Script Date: 04-09-2020 17:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_RegisterUser]
(
@UserName nvarchar(50),
@RoleId bigint,
@Password nvarchar(50)
)
as
begin
declare @RoleName nvarchar(50)
set @RoleName=(select distinct RoleName from TB_RoleMaster where RoleId=@RoleId)
if not exists(select 1 from TB_Users where UserName=@UserName)
begin
Insert into TB_Users(UserName,Password,RoleId,RoleName,CreatedBy)
select @UserName,@Password,@RoleId,@RoleName,'SuperAdmin' 
end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_TravelBulkUpload]    Script Date: 04-09-2020 17:33:17 ******/
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
