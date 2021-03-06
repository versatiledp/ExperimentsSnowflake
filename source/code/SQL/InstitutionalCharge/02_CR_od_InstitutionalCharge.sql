CREATE OR REPLACE TABLE od_InstitutionalCharge (
  InstitutionIdentifier INTEGER,
  InDistrictAverageTuitionFullTimeUndergraduates INTEGER,
  InDistrictRequiredFeesFullTimeUndergraduates INTEGER,
  InDistrictPerCreditHourChargeForPartTimeUndergraduates INTEGER,
  InStateAverageTuitionFullTimeUndergraduates INTEGER,
  InStateRequiredFeesFullTimeUndergraduates INTEGER,
  InStatePerCreditHourChargeForPartTimeUndergraduates INTEGER,
  OutOfStateAverageTuitionFullTimeUndergraduates INTEGER,
  OutOfStateRequiredFeesFullTimeUndergraduates INTEGER,
  OutOfStatePerCreditHourChargeForPartTimeUndergraduates INTEGER,
  InDistrictAverageTuitionFullTimeGraduates INTEGER,
  InDistrictRequiredFeesFullTimeGraduates INTEGER,
  InDistrictPerCreditHourChargePartTimeGraduates INTEGER,
  InStateAverageTuitionFullTimeGraduates INTEGER,
  InStateRequiredFeesFullTimeGraduates INTEGER,
  InStatePerCreditHourChargePartTimeGraduates INTEGER,
  OutOfStateAverageTuitionFullTimeGraduates INTEGER,
  OutOfStateRequiredFeesFullTimeGraduates INTEGER,
  OutOfStatePerCreditHourChargePartTimeGraduate INTEGER, 
  Chiropractic_InStateTuition INTEGER,
  Chiropractic_InStateRequiredFees INTEGER,
  Chiropractic_OutOfStateTuition INTEGER,
  Chiropractic_OutOfStateRequiredFees INTEGER,
  Dentistry_InStateTuition INTEGER,
  Dentistry_InStateRequiredFees INTEGER,
  Dentistry_OutOfStateTuition INTEGER,
  Dentistry_OutOfStateRequiredFees INTEGER,
  Medicine_InStateTuition INTEGER,
  Medicine_InStateRequiredFees INTEGER,
  Medicine_OutOfStateTuition INTEGER,
  Medicine_OutOfStateRequiredFees INTEGER,
  Optometry_InStateTuition INTEGER,
  Optometry_InStateRequiredFees INTEGER,
  Optometry_OutOfStateTuition INTEGER,
  Optometry_OutOfStateRequiredFees INTEGER,
  OsteopathicMedicine_InStateTuition INTEGER,
  OsteopathicMedicine_InStateRequiredFees INTEGER,
  OsteopathicMedicine_OutOfStateTuition INTEGER,
  OsteopathicMedicine_OutOfStateRequiredFees INTEGER,
  Pharmacy_InStateTuition INTEGER,
  Pharmacy_InStateRequiredFees INTEGER,
  Pharmacy_OutOfStateTuition INTEGER,
  Pharmacy_OutOfStateRequiredFees INTEGER,
  Podiatry_InStateTuition INTEGER,
  Podiatry_InStateRequiredFees INTEGER,
  Podiatry_OutOfStateTuition INTEGER,
  Podiatry_OutOfStateRequiredFees INTEGER,
  VeterinaryMedicine_InStateTuition INTEGER,
  VeterinaryMedicine_InStateRequiredFees INTEGER,
  VeterinaryMedicine_OutOfStateTuition INTEGER,
  VeterinaryMedicine_OutOfStateRequiredFees INTEGER,
  Law_InStateTuition INTEGER,
  Law_InStateRequiredFees INTEGER,
  Law_OutOfStateTuition INTEGER,
  Law_OutOfStateRequiredFees INTEGER, 
  PublishedInDistrictTuitionYear0 INTEGER,
  PublishedInDistrictFeesYear0 INTEGER,
  PublishedInDistrictTuitionFeesYear0 INTEGER,
  PublishedInDistrictTuitionYear1 INTEGER,
  PublishedInDistrictFeesYear1 INTEGER,
  PublishedInDistrictTuitionFeesYear1 INTEGER,
  PublishedInDistrictTuitionYear2 INTEGER,
  PublishedInDistrictFeesYear2 INTEGER,
  PublishedInDistrictTuitionFeesYear2 INTEGER,
  PublishedInDistrictTuitionYear3 INTEGER,
  PublishedInDistrictFeesYear3 INTEGER,
  PublishedInDistrictTuitionFeesYear3 INTEGER,
  PublishedInDistrictTuitionYear3GuaranteedPercentIncrease INTEGER,
  PublishedInDistrictFeesYear3GuaranteedPercentIncrease INTEGER,
  PublishedInStateTuitionYear0 INTEGER,
  PublishedInStateFeesYear0 INTEGER,
  PublishedInStateTuitionFeesYear0 INTEGER,
  PublishedInStateTuitionYear1 INTEGER,
  PublishedInStateFeesYear1 INTEGER,
  PublishedInStateTuitionFeesYear1 INTEGER,
  PublishedInStateTuitionYear2 INTEGER,
  PublishedInStateFeesYear2 INTEGER,
  PublishedInStateTuitionFeesYear2 INTEGER,
  PublishedInStateTuitionYear3 INTEGER,
  PublishedInStateFeesYear3 INTEGER,
  PublishedInStateTuitionFeesYear3 INTEGER,
  PublishedInStateTuitionGuaranteedPercentIncrease INTEGER,
  PublishedInStateFeesGuaranteedPercentIncrease INTEGER,
  PublishedOutOfStateTuitionYear0 INTEGER,
  PublishedOutOfStateFeesYear0 INTEGER,
  PublishedOutOfStateTuitionFeesYear0 INTEGER,
  PublishedOutOfStateTuitionYear1 INTEGER,
  PublishedOutOfStateFeesYear1 INTEGER,
  PublishedOutOfStateTuitionFeesYear1 INTEGER,
  PublishedOutOfStateTuitionYear2 INTEGER,
  PublishedOutOfStateFeesYear2 INTEGER,
  PublishedOutOfStateTuitionFeesYear2 INTEGER,
  PublishedOutOfStateTuitionYear3 INTEGER,
  PublishedOutOfStateFeesYear3 INTEGER,
  PublishedOutOfStateTuitionFeesYear3 INTEGER,
  PublishedOutOfStateTuitionGuaranteedPercentIncrease INTEGER,
  PublishedOutOfStateFeesGuaranteedPercentIncrease INTEGER, 
  BooksSuppliesYear0 INTEGER,
  BooksSuppliesYear1 INTEGER,
  BooksSuppliesYear2 INTEGER,
  BooksSuppliesYear3 INTEGER,
  OnCampusRoomBoardYear0 INTEGER,
  OnCampusRoomBoardYear1 INTEGER,
  OnCampusRoomBoardYear2 INTEGER,
  OnCampusRoomBoardYear3 INTEGER,
  OnCampusOtherExpensesYear0 INTEGER,
  OnCampusOtherExpensesYear1 INTEGER,
  OnCampusOtherExpensesYear2 INTEGER,
  OnCampusOtherExpensesYear3 INTEGER,
  OffCampusNotWithFamilyRoomBoardYear0 INTEGER,
  OffCampusNotWithFamilyRoomBoardYear1 INTEGER,
  OffCampusNotWithFamilyRoomBoardYear2 INTEGER,
  OffCampusNotWithFamilyRoomBoardYear3 INTEGER,
  OffCampusNotWithFamilyOtherExpensesYear0 INTEGER,
  OffCampusNotWithFamilyOtherExpensesYear1 INTEGER,
  OffCampusNotWithFamilyOtherExpensesYear2 INTEGER,
  OffCampusNotWithFamilyOtherExpensesYear3 INTEGER,
  OffCampusWithFamilyOtherExpensesYear0 INTEGER,
  OffCampusWithFamilyOtherExpensesYear1 INTEGER,
  OffCampusWithFamilyOtherExpensesYear2 INTEGER,
  OffCampusWithFamilyOtherExpensesYear3 INTEGER,
  AcademicYear INTEGER,
  IngestedFileName STRING,
  RowNumber INTEGER
);
