SELECT
$1:UNITID :: VARCHAR AS InstitutionIdentifier,
$1:TUITION1 :: INTEGER AS 
    InDistrictAverageTuitionFullTimeUndergraduates,
$1:FEE1  :: INTEGER AS 
    InDistrictRequiredFeesFullTimeUndergraduates,
$1:HRCHG1 :: INTEGER AS 
    InDistrictPerCreditHourChargeForPartTimeUndergraduates,
$1:TUITION2 :: INTEGER AS InStateAverageTuitionFullTimeUndergraduates,
$1:FEE2  :: INTEGER AS 
    InStateRequiredFeesFullTimeUndergraduates,
$1:HRCHG2 :: INTEGER AS 
    InStatePerCreditHourChargeForPartTimeUndergraduates,
$1:TUITION3 :: INTEGER AS 
    OutOfStateAverageTuitionFullTimeUndergraduates,
$1:FEE3 :: INTEGER AS 
    OutOfStateRequiredFeesFullTimeUndergraduates,
$1:HRCHG3 :: INTEGER AS 
    OutOfStatePerCreditHourChargeForPartTimeUndergraduates,
$1:TUITION5 :: INTEGER AS InDistrictAverageTuitionFullTimeGraduates,
$1:FEE5  :: INTEGER AS InDistrictRequiredFeesFullTimeGraduates,
$1:HRCHG5 :: INTEGER AS InDistrictPerCreditHourChargePartTimeGraduates,
$1:TUITION6 :: INTEGER AS InStateAverageTuitionFullTimeGraduates,
$1:FEE6  :: INTEGER AS InStateRequiredFeesFullTimeGraduates,
$1:HRCHG6 :: INTEGER AS InStatePerCreditHourChargePartTimeGraduates,
$1:TUITION7 :: INTEGER AS OutOfStateAverageTuitionFullTimeGraduates,
$1:FEE7  :: INTEGER AS OutOfStateRequiredFeesFullTimeGraduates,
$1:HRCHG7 :: INTEGER AS OutOfStatePerCreditHourChargePartTimeGraduate,
$1:ISPROF1 :: INTEGER AS Chiropractic_InStateTuition,
$1:ISPFEE1 :: INTEGER AS Chiropractic_InStateRequiredFees,
$1:OSPROF1 :: INTEGER AS Chiropractic_OutOfStateTuition,
$1:OSPFEE1 :: INTEGER AS Chiropractic_OutOfStateRequiredFees,
$1:ISPROF2 :: INTEGER AS Dentistry_InStateTuition,
$1:ISPFEE2 :: INTEGER AS Dentistry_InStateRequiredFees,
$1:OSPROF2 :: INTEGER AS Dentistry_OutOfStateTuition,
$1:OSPFEE2 :: INTEGER AS Dentistry_OutOfStateRequiredFees,
$1:ISPROF3 :: INTEGER AS Medicine_InStateTuition,
$1:ISPFEE3 :: INTEGER AS Medicine_InStateRequiredFees,
$1:OSPROF3 :: INTEGER AS Medicine_OutOfStateTuition,
$1:OSPFEE3 :: INTEGER AS Medicine_OutOfStateRequiredFees,
$1:ISPROF4 :: INTEGER AS Optometry_InStateTuition,
$1:ISPFEE4 :: INTEGER AS Optometry_InStateRequiredFees,
$1:OSPROF4 :: INTEGER AS Optometry_OutOfStateTuition,
$1:OSPFEE4 :: INTEGER AS Optometry_OutOfStateRequiredFees,
$1:ISPROF5 :: INTEGER AS OsteopathicMedicine_InStateTuition,
$1:ISPFEE5 :: INTEGER AS OsteopathicMedicine_InStateRequiredFees,
$1:OSPROF5 :: INTEGER AS OsteopathicMedicine_OutOfStateTuition,
$1:OSPFEE5 :: INTEGER AS OsteopathicMedicine_OutOfStateRequiredFees,
$1:ISPROF6 :: INTEGER AS Pharmacy_InStateTuition,
$1:ISPFEE6 :: INTEGER AS Pharmacy_InStateRequiredFees,
$1:OSPROF6 :: INTEGER AS Pharmacy_OutOfStateTuition,
$1:OSPFEE6 :: INTEGER AS Pharmacy_OutOfStateRequiredFees,
$1:ISPROF7 :: INTEGER AS Podiatry_InStateTuition,
$1:ISPFEE7 :: INTEGER AS Podiatry_InStateRequiredFees,
$1:OSPROF7 :: INTEGER AS Podiatry_OutOfStateTuition,
$1:OSPFEE7 :: INTEGER AS Podiatry_OutOfStateRequiredFees,
$1:ISPROF8 :: INTEGER AS VeterinaryMedicine_InStateTuition,
$1:ISPFEE8 :: INTEGER AS VeterinaryMedicine_InStateRequiredFees,
$1:OSPROF8 :: INTEGER AS VeterinaryMedicine_OutOfStateTuition,
$1:OSPFEE8 :: INTEGER AS VeterinaryMedicine_OutOfStateRequiredFees,
$1:ISPROF9 :: INTEGER AS Law_InStateTuition,
$1:ISPFEE9 :: INTEGER AS Law_InStateRequiredFees,
$1:OSPROF9 :: INTEGER AS Law_OutOfStateTuition,
$1:OSPFEE9 :: INTEGER AS Law_OutOfStateRequiredFees,
$1:CHG1AT0 :: INTEGER AS PublishedInDistrictTuitionYear0,
$1:CHG1AF0 :: INTEGER AS PublishedInDistrictFeesYear0,
$1:CHG1AY0 :: INTEGER AS PublishedInDistrictTuitionFeesYear0,
$1:CHG1AT1 :: INTEGER AS PublishedInDistrictTuitionYear1,
$1:CHG1AF1 :: INTEGER AS PublishedInDistrictFeesYear1,
$1:CHG1AY1 :: INTEGER AS PublishedInDistrictTuitionFeesYear1,
$1:CHG1AT2 :: INTEGER AS PublishedInDistrictTuitionYear2,
$1:CHG1AF2 :: INTEGER AS PublishedInDistrictFeesYear2,
$1:CHG1AY2 :: INTEGER AS PublishedInDistrictTuitionFeesYear2,
$1:CHG1AT3 :: INTEGER AS PublishedInDistrictTuitionYear3,
$1:CHG1AF3 :: INTEGER AS PublishedInDistrictFeesYear3,
$1:CHG1AY3 :: INTEGER AS PublishedInDistrictTuitionFeesYear3,
$1:CHG1TGTD :: INTEGER AS 
    PublishedInDistrictTuitionYear3GuaranteedPercentIncrease,
$1:CHG1FGTD :: INTEGER AS 
    PublishedInDistrictFeesYear3GuaranteedPercentIncrease,
$1:CHG2AT0 :: INTEGER AS PublishedInStateTuitionYear0,
$1:CHG2AF0 :: INTEGER AS PublishedInStateFeesYear0,
$1:CHG2AY0 :: INTEGER AS PublishedInStateTuitionFeesYear0,
$1:CHG2AT1 :: INTEGER AS PublishedInStateTuitionYear1,
$1:CHG2AF1 :: INTEGER AS PublishedInStateFeesYear1,
$1:CHG2AY1 :: INTEGER AS PublishedInStateTuitionFeesYear1,
$1:CHG2AT2 :: INTEGER AS PublishedInStateTuitionYear2,
$1:CHG2AF2 :: INTEGER AS PublishedInStateFeesYear2,
$1:CHG2AY2 :: INTEGER AS PublishedInStateTuitionFeesYear2,
$1:CHG2AT3 :: INTEGER AS PublishedInStateTuitionYear3,
$1:CHG2AF3 :: INTEGER AS PublishedInStateFeesYear3,
$1:CHG2AY3 :: INTEGER AS PublishedInStateTuitionFeesYear3,
$1:CHG2TGTD :: INTEGER AS PublishedInStateTuitionGuaranteedPercentIncrease,
$1:CHG2FGTD :: INTEGER AS PublishedInStateFeesGuaranteedPercentIncrease,
$1:CHG3AT0 :: INTEGER AS PublishedOutOfStateTuitionYear0,
$1:CHG3AF0 :: INTEGER AS PublishedOutOfStateFeesYear0,
$1:CHG3AY0 :: INTEGER AS PublishedOutOfStateTuitionFeesYear0,
$1:CHG3AT1 :: INTEGER AS PublishedOutOfStateTuitionYear1,
$1:CHG3AF1 :: INTEGER AS PublishedOutOfStateFeesYear1,
$1:CHG3AY1 :: INTEGER AS PublishedOutOfStateTuitionFeesYear1,
$1:CHG3AT2 :: INTEGER AS PublishedOutOfStateTuitionYear2,
$1:CHG3AF2 :: INTEGER AS PublishedOutOfStateFeesYear2,
$1:CHG3AY2 :: INTEGER AS PublishedOutOfStateTuitionFeesYear2,
$1:CHG3AT3 :: INTEGER AS PublishedOutOfStateTuitionYear3,
$1:CHG3AF3 :: INTEGER AS PublishedOutOfStateFeesYear3,
$1:CHG3AY3 :: INTEGER AS PublishedOutOfStateTuitionFeesYear3,
$1:CHG3TGTD :: INTEGER AS 
    PublishedOutOfStateTuitionGuaranteedPercentIncrease,
$1:CHG3FGTD :: INTEGER AS 
    PublishedOutOfStateFeesGuaranteedPercentIncrease,
$1:CHG4AY0 :: INTEGER AS BooksSuppliesYear0,
$1:CHG4AY1 :: INTEGER AS BooksSuppliesYear1,
$1:CHG4AY2 :: INTEGER AS BooksSuppliesYear2,
$1:CHG4AY3 :: INTEGER AS BooksSuppliesYear3,
$1:CHG5AY0 :: INTEGER AS OnCampusRoomBoardYear0,
$1:CHG5AY1 :: INTEGER AS OnCampusRoomBoardYear1,
$1:CHG5AY2 :: INTEGER AS OnCampusRoomBoardYear2,
$1:CHG5AY3 :: INTEGER AS OnCampusRoomBoardYear3,
$1:CHG6AY0 :: INTEGER AS OnCampusOtherExpensesYear0,
$1:CHG6AY1 :: INTEGER AS OnCampusOtherExpensesYear1,
$1:CHG6AY2 :: INTEGER AS OnCampusOtherExpensesYear2,
$1:CHG6AY3 :: INTEGER AS OnCampusOtherExpensesYear3,
$1:CHG7AY0 :: INTEGER AS OffCampusNotWithFamilyRoomBoardYear0,
$1:CHG7AY1 :: INTEGER AS OffCampusNotWithFamilyRoomBoardYear1,
$1:CHG7AY2 :: INTEGER AS OffCampusNotWithFamilyRoomBoardYear2,
$1:CHG7AY3 :: INTEGER AS OffCampusNotWithFamilyRoomBoardYear3,
$1:CHG8AY0 :: INTEGER AS OffCampusNotWithFamilyOtherExpensesYear0,
$1:CHG8AY1 :: INTEGER AS OffCampusNotWithFamilyOtherExpensesYear1,
$1:CHG8AY2 :: INTEGER AS OffCampusNotWithFamilyOtherExpensesYear2,
$1:CHG8AY3 :: INTEGER AS OffCampusNotWithFamilyOtherExpensesYear3,
$1:CHG9AY0 :: INTEGER AS OffCampusWithFamilyOtherExpensesYear0,
$1:CHG9AY1 :: INTEGER AS OffCampusWithFamilyOtherExpensesYear1,
$1:CHG9AY2 :: INTEGER AS OffCampusWithFamilyOtherExpensesYear2,
$1:CHG9AY3 :: INTEGER AS OffCampusWithFamilyOtherExpensesYear3,
LEFT(MetaData$FileName, 4) AS AcademicYear,
metadata$filename IngestedFileName,
metadata$file_row_number RowNumber
FROM
@IPEDS_IC
WHERE LEFT(MetaData$FileName,4) = 2017;
