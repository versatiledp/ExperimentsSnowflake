CREATE OR REPLACE PROCEDURE pr_od_AdmissionStat_Load(YEAR FLOAT)
RETURNS STRING
LANGUAGE javascript
EXECUTE AS OWNER
AS
$$
var sql_command = `
    INSERT INTO Od_AdmissionStat
	SELECT 
	  $1:InstitutionIdentifier :: VARCHAR AS InstitutionIdentifier, 
	  $2:SecondarySchoolGPA :: VARCHAR AS SecondarySchoolGPA, 
	  $3:SecondarySchoolRank :: VARCHAR AS SecondarySchoolRank, 
	  $4:SecondarySchoolRecord :: VARCHAR AS SecondarySchoolRecord, 
	  $5:CompletionOfCollegePreparatoryProgram :: VARCHAR AS CompletionOfCollegePreparatoryProgram, 
	  $6:Recommendations :: VARCHAR AS Recommendations, 
	  $7:FormalDemonstrationOfCompetencies :: VARCHAR AS FormalDemonstrationOfCompetencies, 
	  $8:AdmissionTestScores :: VARCHAR AS AdmissionTestScores, 
	  $9:Toefl :: VARCHAR AS Toefl, 
	  $10:OtherTest :: VARCHAR AS OtherTest, 
	  $11:ApplicantsTotal :: VARCHAR AS ApplicantsTotal, 
	  $12:ApplicantsMen :: VARCHAR AS ApplicantsMen, 
	  $13:ApplicantsWomen :: VARCHAR AS ApplicantsWomen, 
	  $14:AdmissionsTotal :: VARCHAR AS AdmissionsTotal, 
	  $15:AdmissionsMen :: VARCHAR AS AdmissionsMen, 
	  $16:AdmissionsWomen :: VARCHAR AS AdmissionsWomen, 
	  $17:EnrolledTotal :: VARCHAR AS EnrolledTotal, 
	  $1:EnrolledMen :: VARCHAR AS EnrolledMen, 
	  $18:EnrolledWomen :: VARCHAR AS EnrolledWomen, 
	  $19:EnrolledFullTimeTotal :: VARCHAR AS EnrolledFullTimeTotal, 
	  $20:EnrolledFullTimeMen :: VARCHAR AS EnrolledFullTimeMen, 
	  $21:EnrolledFullTimeWomen :: VARCHAR AS EnrolledFullTimeWomen, 
	  $22:EnrolledPartTimeTotal :: VARCHAR AS EnrolledPartTimeTotal, 
	  $23:EnrolledPartTimeMen :: VARCHAR AS EnrolledPartTimeMen, 
	  $24:EnrolledPartTimeWomen :: VARCHAR AS EnrolledPartTimeWomen, 
	  $25:FirstTimeDegreeOrCertificateSeekingStudentsSubmittingSATScores :: VARCHAR 
		AS FirstTimeDegreeOrCertificateSeekingStudentsSubmittingSATScores, 
	  $26:PercentFirstTimeDegreeOrCertificateSeekingStudentsSubmittingSATScores :: VARCHAR 
		AS PercentFirstTimeDegreeOrCertificateSeekingStudentsSubmittingSATScores, 
	  $27:FirstTimeDegreeOrCertificateSeekingStudentsSubmittingACTScores :: VARCHAR 
		AS FirstTimeDegreeOrCertificateSeekingStudentsSubmittingACTScores, 
	  $28:PercentOfFirstTimeDegreeOrCertificateSeekingStudentsSubmittingACTScores :: VARCHAR 
		AS PercentOfFirstTimeDegreeOrCertificateSeekingStudentsSubmittingACTScores, 
	  $29:SATEvidenceBasedReadingWriting25thPercentileScore :: VARCHAR 
		AS SATEvidenceBasedReadingWriting25thPercentileScore, 
	  $30:SATEvidenceBasedReadingWriting75thPercentileScore :: VARCHAR 
		AS SATEvidenceBasedReadingWriting75thPercentileScore, 
	  $31:SATMath25thPercentileScore :: VARCHAR AS SATMath25thPercentileScore, 
	  $32:SATMath75thPercentileScore :: VARCHAR AS SATMath75thPercentileScore, 
	  $33:ACTComposite25thPercentileScore :: VARCHAR AS ACTComposite25thPercentileScore, 
	  $34:ACTComposite75thPercentileScore :: VARCHAR AS ACTComposite75thPercentileScore, 
	  $35:ACTEnglish25thPercentileScore :: VARCHAR AS ACTEnglish25thPercentileScore, 
	  $36:ACTEnglish75thPercentileScore :: VARCHAR AS ACTEnglish75thPercentileScore, 
	  $37:ACTMath25thPercentileScore :: VARCHAR AS ACTMath25thPercentileScore, 
	  $38:ACTMath75thPercentileScore :: VARCHAR AS ACTMath75thPercentileScore, 
	  metadata$filename AS fileName, 
	  $YEAR AS AcademicYear, 
	  metadata$file_row_number AS RowNumber 
FROM 
  @AdmissionStat

WHERE LEFT(METADATA$FileName,4) = ` + YEAR.toString()+`;`

    try {
        snowflake.execute (
          {sqlText: sql_command}
          );
        }
    catch (err) {
        return "Failed: " + err;  // Return a success/error indicator.
        }
    return "Success.";  // Return a success/error indicator.
$$
;
