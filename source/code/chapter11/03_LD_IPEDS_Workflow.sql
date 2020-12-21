TRUNCATE TABLE IPEDS_Workflow;
SELECT top 10 * FROM information_schema.procedures where procedure_name like 'PR_%STG%';

INSERT INTO IPEDS_Workflow (StageName,ProcedureName,TargetTableName,ExecutionOrder)
SELECT 'Od_HDR' AS StageName,'pr_stg_AdmissionStat_FromStagedFile(@Year)' AS ProcedureName,'stg_AdmissionStat' TargetTableName,1 ExecutionOrder UNION ALL
SELECT 'SL_HDR' AS StageName,'pr_AdmissionStat_LoadFromStagingTable(@Year)' AS ProcedureName,'AdmissionStat' TargetTableName,2 ExecutionOrder UNION ALL
SELECT 'OD_CM' AS StageName,'pr_stg_CodeMapping_LoadFromStagedFile()' AS ProcedureName,'' TargetTableName,12 ExecutionOrder UNION ALL
SELECT 'SL_CM' AS StageName,'pr_CodeMapping_LoadFromStagingTable()' AS ProcedureName,'' TargetTableName,13 ExecutionOrder
                             

/*SELECT 'Od_HDR' AS StageName,'pr_stg_AcademicInstitution_LoadFromStagedFile(@Year)' AS ProcedureName,'stg_AcademicInstitution' TargetTableName,1 ExecutionOrder UNION ALL
SELECT 'SL_HDR' AS StageName,'pr_AcademicInstitution_LoadFromStagingTable(@Year)' AS ProcedureName,'AcademicInstitution' TargetTableName,2 ExecutionOrder UNION ALL
SELECT 'Od_EFFY' AS StageName,'pr_stg_Enrollment_LoadFromStagedFile(@Year)' AS ProcedureName,'stg_Enrollment' TargetTableName,3 ExecutionOrder UNION ALL
SELECT 'SL_EFFY' AS StageName,'pr_Enrollment_LoadFromStagingTable(@Year)' AS ProcedureName,'Enrollment' TargetTableName,4 ExecutionOrder UNION ALL
SELECT 'OD_IC' AS StageName,'pr_stg_InstitutionalCharge_Json_LoadFromStagedFile(@Year)' AS ProcedureName,'stg_InstitutionalCharge_JSON' TargetTableName,5 ExecutionOrder UNION ALL
SELECT 'SL_IC' AS StageName,'pr_InstitutionalCharge_Json_LoadFromStagingTable(@Year)' AS ProcedureName,'InstitutionalCharge_Json' TargetTableName,6 ExecutionOrder UNION ALL
SELECT 'SL_ICBranch' AS StageName,'pr_InstitutionalChargeByAcademicBranch_Json_LoadFromStagingTable(@Year)' AS ProcedureName,'InstitutionalChargeByAcademicBranch_Json' TargetTableName,7 ExecutionOrder UNION ALL
SELECT 'SL_ICPublication' AS StageName,'pr_InstitutionalChargeByPublication_Json_LoadFromStagingTable(@Year)' AS ProcedureName,'InstitutionalChargeByPublication_Json' TargetTableName,8 ExecutionOrder UNION ALL
SELECT 'SL_ICCategory' AS StageName,'pr_InstitutionalChargeByCategory_Json_LoadFromStagingTable(@Year)' AS ProcedureName,'InstitutionalChargeByCategory_Json' TargetTableName,9 ExecutionOrder UNION ALL
SELECT 'OD_ADM' AS StageName,'pr_stg_AdmissionStat_FromStagedFile(@Year)' AS ProcedureName,'stg_AdmissionStat' TargetTableName,10 ExecutionOrder UNION ALL
SELECT 'SL_ADM' AS StageName,'pr_AdmissionStat_LoadFromStagingTable(@Year)' AS ProcedureName,'AdmissionStat' TargetTableName,11 ExecutionOrder UNION ALL
SELECT 'OD_CM' AS StageName,'pr_stg_CodeMapping_LoadFromStagedFile()' AS ProcedureName,'' TargetTableName,12 ExecutionOrder UNION ALL
SELECT 'SL_CM' AS StageName,'pr_CodeMapping_LoadFromStagingTable()' AS ProcedureName,'' TargetTableName,13 ExecutionOrder
;*/
;