CREATE OR REPLACE PROCEDURE 
		pr_AcademicInstitutionMergeHashByte_Load(YEAR FLOAT)
  RETURNS STRING
  LANGUAGE javascript
  EXECUTE AS OWNER
  AS
  $$
  var sql_command = `
	MERGE INTO AcademicInstitution T USING (
	SELECT  *  FROM  Od_AcademicInstitution
	WHERE   ACADEMICYEAR = ` + YEAR.toString() +`
	) S ON T.InstitutionIdentifier = S.InstitutionIdentifier
	WHEN MATCHED
		AND ( HashKey(ARRAY_CONSTRUCT(
	T.InstitutionName,
	T.InstitutionNameAlias,
	T.StreetAddress,
	T.City,
	T.State,
	T.ZipCode,
	T.StateCode,
	T.EconomicAnalysisRegions,
	T.ChiefAdministrator,
	T.ChiefAdministratorTitle,
	T.TelephoneNumber,
	T.EmployerIdentificationNumber,
	T.DunBradstreetNumbers,
	T.PostsecondaryEducationIDNumber,
	T.TitleIVEligibilityIndicatorCode,
	T.SectorOfInstitution,
	T.LevelOfInstitution,
	T.ControlOfInstitution,
	T.HighestLevelOfOffering,
	T.UndergraduateOffering,
	T.GraduateOffering,
	T.HighestDegreeOffered,
	T.DegreeGrantingStatus,
	T.HistoricallyBlackCollegeOrUniversity,
	T.InstitutionHasHospital,
	T.InstitutionGrantsMedicalDegree,
	T.TribalCollege,
	T.DegreeOfUrbanization,
	T.InstitutionOpenToGeneralPublic,
	T.StatusOfInstitution,
	T.UnitidForMergedSchools,
	T.YearInstitutionWasDeletedFromIPEDS,
	T.DateInstitutionClosed,
	T.InstitutionIsActive,
	T.PrimarilyPostsecondaryIndicator,
	T.PostsecondaryInstitutionIndicator,
	T.PostsecondaryAndTitleIvInstitutionIndicator,
	T.ReportingMethodForStudentCharges,
	T.InstitutionalCategory,
	T.LandGrantInstitution,
	T.InstitutionSizeCategory,
	T.MultiCampusOrganization,
	T.NameOfMultiCampusOrganization,
	T.IdentificationNumberOfMultiCampusOrganization,
	T.CoreBasedStatisticalArea,
	T.CBSATypeMetropolitanMicropolitan,
	T.CombinedStatisticalArea,
	T.NewEnglandCityAndTownArea,
	T.FIPSCountyCode,
	T.CountyName,
	T.StateAnd114thCongressionalDistrictID,
	T.LongitudeLocation,
	T.LatitudeLocation,
	T.NCESGroupCategory,
	T.DataFeedbackReport,
	T.CarnegieClassification,
	T.WebAddress)) <> HashKey(ARRAY_CONSTRUCT(
		S.InstitutionName,
		S.InstitutionNameAlias,
		S.StreetAddress,
		S.City,
		S.State,
		S.ZipCode,
		S.StateCode,
		S.EconomicAnalysisRegions,
		S.ChiefAdministrator,
		S.ChiefAdministratorTitle,
		S.TelephoneNumber,
		S.EmployerIdentificationNumber,
		S.DunBradstreetNumbers,
		S.PostsecondaryEducationIDNumber,
		S.TitleIVEligibilityIndicatorCode,
		S.SectorOfInstitution,
		S.LevelOfInstitution,
		S.ControlOfInstitution,
		S.HighestLevelOfOffering,
		S.UndergraduateOffering,
		S.GraduateOffering,
		S.HighestDegreeOffered,
		S.DegreeGrantingStatus,
		S.HistoricallyBlackCollegeOrUniversity,
		S.InstitutionHasHospital,
		S.InstitutionGrantsMedicalDegree,
		S.TribalCollege,
		S.DegreeOfUrbanization,
		S.InstitutionOpenToGeneralPublic,
		S.StatusOfInstitution,
		S.UnitidForMergedSchools,
		S.YearInstitutionWasDeletedFromIPEDS,
		S.DateInstitutionClosed,
		S.InstitutionIsActive,
		S.PrimarilyPostsecondaryIndicator,
		S.PostsecondaryInstitutionIndicator,
		S.PostsecondaryAndTitleIvInstitutionIndicator,
		S.ReportingMethodForStudentCharges,
		S.InstitutionalCategory,
		S.LandGrantInstitution,
		S.InstitutionSizeCategory,
		S.MultiCampusOrganization,
		S.NameOfMultiCampusOrganization,
		S.IdentificationNumberOfMultiCampusOrganization,
		S.CoreBasedStatisticalArea,
		S.CBSATypeMetropolitanMicropolitan,
		S.CombinedStatisticalArea,
		S.NewEnglandCityAndTownArea,
		S.FIPSCountyCode,
		S.CountyName,
		S.StateAnd114thCongressionalDistrictID,
		S.LongitudeLocation,
		S.LatitudeLocation,
		S.NCESGroupCategory,
		S.DataFeedbackReport,  
	OBJECT_CONSTRUCT (
	'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,
	'CarnegieClassification2000' ,
		S.CarnegieClassification2000,
	'CarnegieClassification20052010Basic' ,
		S.CarnegieClassification20052010Basic,
	'CarnegieClassification2015Basic' ,
		S.CarnegieClassification2015Basic,
	'CarnegieClassification2015UndergraduateProgram' ,
		S.CarnegieClassification2015UndergraduateProgram,
	'CarnegieClassification2015GraduateProgram' ,
		S.CarnegieClassification2015GraduateProgram,
	'CarnegieClassification2015UndergraduateProfile' ,
		S.CarnegieClassification2015UndergraduateProfile,
	'CarnegieClassification2015EnrollmentProfile' ,
		S.CarnegieClassification2015EnrollmentProfile,
	'CarnegieClassification2015SizeSetting' ,
		S.CarnegieClassification2015SizeSetting ,
	'CarnegieClassification2018Basic',
		S.CarnegieClassification2018Basic,
	'CarnegieClassification2018UndergraduateProgram' ,
		S.CarnegieClassification2018UndergraduateProgram,
	'CarnegieClassification2018GraduateProgram',
		S.CarnegieClassification2018GraduateProgram,
	'CarnegieClassification2018UndergraduateProfile' ,
		S.CarnegieClassification2018UndergraduateProfile,
	'CarnegieClassification2018EnrollmentProfile',
		S.CarnegieClassification2018EnrollmentProfile,
	'CarnegieClassification2018SizeSetting' ,
		S.CarnegieClassification2018SizeSetting
				) ,
	OBJECT_CONSTRUCT (	
	
	'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,	   
	'InstitutionsWebAddress',
		S.InstitutionsWebAddress,
	'AdmissionsOfficeWebAddress',
		S.AdmissionsOfficeWebAddress,
	'FinancialAidOfficeWebAddress',
		S.FinancialAidOfficeWebAddress,
	'OnlineApplicationWebAddress',
		S.OnlineApplicationWebAddress,
	'NetPriceCalculatorWebAddress',
		S.NetPriceCalculatorWebAddress,
	'VeteransMilitaryServiceTuitionPoliciesWebAddress',
		S.VeteransMilitaryServiceTuitionPoliciesWebAddress,
	'StudentRightAthleteGraduationRateWebAddress',
		S.StudentRightAthleteGraduationRateWebAddress,
	'DisabilityServicesWebAddress',
		S.DisabilityServicesWebAddress
	
				)    
	))) THEN	
UPDATE
SET
  InstitutionIdentifier = S.InstitutionIdentifier,
  InstitutionName = S.InstitutionName,
  InstitutionNameAlias = S.InstitutionNameAlias,
  StreetAddress = S.StreetAddress,
  City = S.City,
  State = S.State,
  ZipCode = S.ZipCode,
  StateCode = S.StateCode,
  EconomicAnalysisRegions = S.EconomicAnalysisRegions,
  ChiefAdministrator = S.ChiefAdministrator,
  ChiefAdministratorTitle = S.ChiefAdministratorTitle,
  TelephoneNumber = S.TelephoneNumber,
  EmployerIdentificationNumber = S.EmployerIdentificationNumber,
  DunBradstreetNumbers = S.DunBradstreetNumbers,
  PostsecondaryEducationIDNumber = S.PostsecondaryEducationIDNumber,
  TitleIVEligibilityIndicatorCode = S.TitleIVEligibilityIndicatorCode,
  SectorOfInstitution = S.SectorOfInstitution,
  LevelOfInstitution = S.LevelOfInstitution,
  ControlOfInstitution = S.ControlOfInstitution,
  HighestLevelOfOffering = S.HighestLevelOfOffering,
  UndergraduateOffering = S.UndergraduateOffering,
  GraduateOffering = S.GraduateOffering,
  HighestDegreeOffered = S.HighestDegreeOffered,
  DegreeGrantingStatus = S.DegreeGrantingStatus,
  HistoricallyBlackCollegeOrUniversity
	= S.HistoricallyBlackCollegeOrUniversity,
  InstitutionHasHospital = S.InstitutionHasHospital,
  InstitutionGrantsMedicalDegree = S.InstitutionGrantsMedicalDegree,
  TribalCollege = S.TribalCollege,
  DegreeOfUrbanization = S.DegreeOfUrbanization,
  InstitutionOpenToGeneralPublic 
	= S.InstitutionOpenToGeneralPublic,
  StatusOfInstitution = S.StatusOfInstitution,
  UnitidForMergedSchools = S.UnitidForMergedSchools,
  YearInstitutionWasDeletedFromIPEDS 
	= S.YearInstitutionWasDeletedFromIPEDS,
  DateInstitutionClosed = S.DateInstitutionClosed,
  InstitutionIsActive = S.InstitutionIsActive,
  PrimarilyPostsecondaryIndicator = S.PrimarilyPostsecondaryIndicator,
  PostsecondaryInstitutionIndicator = S.PostsecondaryInstitutionIndicator,
  PostsecondaryAndTitleIvInstitutionIndicator 
	= S.PostsecondaryAndTitleIvInstitutionIndicator,
  ReportingMethodForStudentCharges = S.ReportingMethodForStudentCharges,
  InstitutionalCategory = S.InstitutionalCategory,
  LandGrantInstitution = S.LandGrantInstitution,
  InstitutionSizeCategory = S.InstitutionSizeCategory,
  MultiCampusOrganization = S.MultiCampusOrganization,
  NameOfMultiCampusOrganization = S.NameOfMultiCampusOrganization,
  IdentificationNumberOfMultiCampusOrganization 
	= S.IdentificationNumberOfMultiCampusOrganization,
  CoreBasedStatisticalArea = S.CoreBasedStatisticalArea,
  CBSATypeMetropolitanMicropolitan 
	= S.CBSATypeMetropolitanMicropolitan,
  CombinedStatisticalArea = S.CombinedStatisticalArea,
  NewEnglandCityAndTownArea = S.NewEnglandCityAndTownArea,
  FIPSCountyCode = S.FIPSCountyCode,
  CountyName = S.CountyName,
  StateAnd114thCongressionalDistrictID 
	= S.StateAnd114thCongressionalDistrictID,
  LongitudeLocation = S.LongitudeLocation,
  LatitudeLocation = S.LatitudeLocation,
  NCESGroupCategory = S.NCESGroupCategory,
  DataFeedbackReport = S.DataFeedbackReport, 
  AcademicYear=S.AcademicYear,
  CarnegieClassification =OBJECT_CONSTRUCT (
  'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,
	'CarnegieClassification2000' ,
		S.CarnegieClassification2000,
	'CarnegieClassification20052010Basic' ,
		S.CarnegieClassification20052010Basic,
	'CarnegieClassification2015Basic' ,
		S.CarnegieClassification2015Basic,
	'CarnegieClassification2015UndergraduateProgram' ,
		S.CarnegieClassification2015UndergraduateProgram,
	'CarnegieClassification2015GraduateProgram' ,
		S.CarnegieClassification2015GraduateProgram,
	'CarnegieClassification2015UndergraduateProfile' ,
		S.CarnegieClassification2015UndergraduateProfile,
	'CarnegieClassification2015EnrollmentProfile' ,
		S.CarnegieClassification2015EnrollmentProfile,
	'CarnegieClassification2015SizeSetting' ,
		S.CarnegieClassification2015SizeSetting ,
	'CarnegieClassification2018Basic',
		S.CarnegieClassification2018Basic,
	'CarnegieClassification2018UndergraduateProgram' ,
		S.CarnegieClassification2018UndergraduateProgram,
	'CarnegieClassification2018GraduateProgram',
		S.CarnegieClassification2018GraduateProgram,
	'CarnegieClassification2018UndergraduateProfile' ,
		S.CarnegieClassification2018UndergraduateProfile,
	'CarnegieClassification2018EnrollmentProfile',
		S.CarnegieClassification2018EnrollmentProfile,
	'CarnegieClassification2018SizeSetting' ,
		S.CarnegieClassification2018SizeSetting
		
   ),
	WebAddress=OBJECT_CONSTRUCT (	
	
	'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,	   
	'InstitutionsWebAddress',
		S.InstitutionsWebAddress,
	'AdmissionsOfficeWebAddress',
		S.AdmissionsOfficeWebAddress,
	'FinancialAidOfficeWebAddress',
		S.FinancialAidOfficeWebAddress,
	'OnlineApplicationWebAddress',
		S.OnlineApplicationWebAddress,
	'NetPriceCalculatorWebAddress',
		S.NetPriceCalculatorWebAddress,
	'VeteransMilitaryServiceTuitionPoliciesWebAddress',
		S.VeteransMilitaryServiceTuitionPoliciesWebAddress,
	'StudentRightAthleteGraduationRateWebAddress',
		S.StudentRightAthleteGraduationRateWebAddress,
	'DisabilityServicesWebAddress',
		S.DisabilityServicesWebAddress
		 
   ),
  RecordUpdateDateTime = CURRENT_TIMESTAMP
WHEN NOT MATCHED THEN
	INSERT   (
	InstitutionIdentifier,
	InstitutionName,
	InstitutionNameAlias,
	StreetAddress,
	City,
	State,
	ZipCode,
	StateCode,
	EconomicAnalysisRegions,
	ChiefAdministrator,
	ChiefAdministratorTitle,
	TelephoneNumber,
	EmployerIdentificationNumber,
	DunBradstreetNumbers,
	PostsecondaryEducationIDNumber,
	TitleIVEligibilityIndicatorCode,
	SectorOfInstitution,
	LevelOfInstitution,
	ControlOfInstitution,
	HighestLevelOfOffering,
	UndergraduateOffering,
	GraduateOffering,
	HighestDegreeOffered,
	DegreeGrantingStatus,
	HistoricallyBlackCollegeOrUniversity,
	InstitutionHasHospital,
	InstitutionGrantsMedicalDegree,
	TribalCollege,
	DegreeOfUrbanization,
	InstitutionOpenToGeneralPublic,
	StatusOfInstitution,
	UnitidForMergedSchools,
	YearInstitutionWasDeletedFromIPEDS,
	DateInstitutionClosed,
	InstitutionIsActive,
	PrimarilyPostsecondaryIndicator,
	PostsecondaryInstitutionIndicator,
	PostsecondaryAndTitleIvInstitutionIndicator,
	ReportingMethodForStudentCharges,
	InstitutionalCategory,
	LandGrantInstitution,
	InstitutionSizeCategory,
	MultiCampusOrganization,
	NameOfMultiCampusOrganization,
	IdentificationNumberOfMultiCampusOrganization,
	CoreBasedStatisticalArea,
	CBSATypeMetropolitanMicropolitan,
	CombinedStatisticalArea,
	NewEnglandCityAndTownArea,
	FIPSCountyCode,
	CountyName,
	StateAnd114thCongressionalDistrictID,
	LongitudeLocation,
	LatitudeLocation,
	NCESGroupCategory,
	DataFeedbackReport, 
	AcademicYear, 
	CarnegieClassification,
	WebAddress, 
	RecordCreateDateTime)
VALUES  (
	S.InstitutionIdentifier,
	S.InstitutionName,
	S.InstitutionNameAlias,
	S.StreetAddress,
	S.City,
	S.State,
	S.ZipCode,
	S.StateCode,
	S.EconomicAnalysisRegions,
	S.ChiefAdministrator,
	S.ChiefAdministratorTitle,
	S.TelephoneNumber,
	S.EmployerIdentificationNumber,
	S.DunBradstreetNumbers,
	S.PostsecondaryEducationIDNumber,
	S.TitleIVEligibilityIndicatorCode,
	S.SectorOfInstitution,
	S.LevelOfInstitution,
	S.ControlOfInstitution,
	S.HighestLevelOfOffering,
	S.UndergraduateOffering,
	S.GraduateOffering,
	S.HighestDegreeOffered,
	S.DegreeGrantingStatus,
	S.HistoricallyBlackCollegeOrUniversity,
	S.InstitutionHasHospital,
	S.InstitutionGrantsMedicalDegree,
	S.TribalCollege,
	S.DegreeOfUrbanization,
	S.InstitutionOpenToGeneralPublic,
	S.StatusOfInstitution,
	S.UnitidForMergedSchools,
	S.YearInstitutionWasDeletedFromIPEDS,
	S.DateInstitutionClosed,
	S.InstitutionIsActive,
	S.PrimarilyPostsecondaryIndicator,
	S.PostsecondaryInstitutionIndicator,
	S.PostsecondaryAndTitleIvInstitutionIndicator,
	S.ReportingMethodForStudentCharges,
	S.InstitutionalCategory,
	S.LandGrantInstitution,
	S.InstitutionSizeCategory,
	S.MultiCampusOrganization,
	S.NameOfMultiCampusOrganization,
	S.IdentificationNumberOfMultiCampusOrganization,
	S.CoreBasedStatisticalArea,
	S.CBSATypeMetropolitanMicropolitan,
	S.CombinedStatisticalArea,
	S.NewEnglandCityAndTownArea,
	S.FIPSCountyCode,
	S.CountyName,
	S.StateAnd114thCongressionalDistrictID,
	S.LongitudeLocation,
	S.LatitudeLocation,
	S.NCESGroupCategory,
	S.DataFeedbackReport, 
	S.AcademicYear, 
	OBJECT_CONSTRUCT (
	
    'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,
	'CarnegieClassification2000' ,
		S.CarnegieClassification2000,
	'CarnegieClassification20052010Basic' ,
		S.CarnegieClassification20052010Basic,
	'CarnegieClassification2015Basic' ,
		S.CarnegieClassification2015Basic,
	'CarnegieClassification2015UndergraduateProgram' ,
		S.CarnegieClassification2015UndergraduateProgram,
	'CarnegieClassification2015GraduateProgram' ,
		S.CarnegieClassification2015GraduateProgram,
	'CarnegieClassification2015UndergraduateProfile' ,
		S.CarnegieClassification2015UndergraduateProfile,
	'CarnegieClassification2015EnrollmentProfile' ,
		S.CarnegieClassification2015EnrollmentProfile,
	'CarnegieClassification2015SizeSetting' ,
		S.CarnegieClassification2015SizeSetting ,
	'CarnegieClassification2018Basic',
		S.CarnegieClassification2018Basic,
	'CarnegieClassification2018UndergraduateProgram' ,
		S.CarnegieClassification2018UndergraduateProgram,
	'CarnegieClassification2018GraduateProgram',
		S.CarnegieClassification2018GraduateProgram,
	'CarnegieClassification2018UndergraduateProfile' ,
		S.CarnegieClassification2018UndergraduateProfile,
	'CarnegieClassification2018EnrollmentProfile',
		S.CarnegieClassification2018EnrollmentProfile,
	'CarnegieClassification2018SizeSetting' ,
		S.CarnegieClassification2018SizeSetting 
	  ) ,
	OBJECT_CONSTRUCT (	
	'AcademicInstitutionIdentifier',
		S.InstitutionIdentifier,	   
	'InstitutionsWebAddress',
		S.InstitutionsWebAddress,
	'AdmissionsOfficeWebAddress',
		S.AdmissionsOfficeWebAddress,
	'FinancialAidOfficeWebAddress',
		S.FinancialAidOfficeWebAddress,
	'OnlineApplicationWebAddress',
		S.OnlineApplicationWebAddress,
	'NetPriceCalculatorWebAddress',
		S.NetPriceCalculatorWebAddress,
	'VeteransMilitaryServiceTuitionPoliciesWebAddress',
		S.VeteransMilitaryServiceTuitionPoliciesWebAddress,
	'StudentRightAthleteGraduationRateWebAddress',
		S.StudentRightAthleteGraduationRateWebAddress,
	'DisabilityServicesWebAddress',
		S.DisabilityServicesWebAddress
	   ),			
	CURRENT_TIMESTAMP
		);
`
try {
    snowflake.execute (
      {sqlText: sql_command}
      );
    return "Succeeded.";  // Return a success/error indicator.
    }
  catch (err) {
    return "Failed: " + err;  // Return a success/error indicator.
    }
  $$
  ;
