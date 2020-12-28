CREATE OR REPLACE PROCEDURE pr_IPEDS_Process(YEAR FLOAT)
RETURNS STRING
LANGUAGE javascript
AS
$$
//1:Academic Institution,2:Enrollment,3:Institution charges,4:Admision Stat,5: Code Mapping
// Get the list of procedures and target table names to process.

var sql_WF = `SELECT StageName,ProcedureName,SourceTableName,TargetTableName,ExecutionOrder 
              FROM IPEDS_Workflow ORDER BY ExecutionOrder`;
CmdSql = {sqlText:sql_WF};
StmtSql = snowflake.createStatement(CmdSql);
rsSql = StmtSql.execute();
//var Query = '';
// Execute each procedure and get Pre and Post rowcount if target table is provided.
try{
    while (rsSql.next()){
        var strSourceTable  = rsSql.getColumnValue("SOURCETABLENAME");
        var strTargetTable  = rsSql.getColumnValue("TARGETTABLENAME");
        var strProcedureName = '';
        var sourceCount = preCount = postCount = 'NULL';
        var sqlSourceRowCount = SqlRowCount = stmtRowCount = '';
        var rsPreRowCount,rsPostRowCount;
//Query = Query + '--Source:' + strSourceTable + ' Target: ' + strTargetTable;
// Get Source table row count if table is provided.
        if (strSourceTable != '')
        {
          sqlSourceRowCount = `SELECT Count(1) AS Counts FROM ` + strSourceTable + ` WHERE AcademicYear = ` + YEAR.toString() +`;`;
//Query = Query + '--Source:' + sqlSourceRowCount;
         var stmtSourceRowCount = snowflake.createStatement({sqlText: sqlSourceRowCount});
         var rsSourceRowCount = stmtSourceRowCount.execute();
         if (rsSourceRowCount.next())
         {
            sourceCount = rsSourceRowCount.getColumnValue("COUNTS");
         }
        }

// Get Pre rowcount if the target table is provided.
        if  (strTargetTable != '')
        {
          SqlRowCount = `SELECT COUNT(1) As Counts FROM `+ strTargetTable +` WHERE AcademicYear = ` + YEAR.toString()+`;`;
//Query = Query + '--Target:' + SqlRowCount;
          stmtRowCount = snowflake.createStatement({sqlText: SqlRowCount});
          rsPreRowCount = stmtRowCount.execute();
          if (rsPreRowCount.next())
          {
            preCount = rsPreRowCount.getColumnValue("COUNTS");
          }
        }
        
// Execute load procedure and pass parameter value if required.
        strProcedureName = `CALL `+ rsSql.getColumnValue("PROCEDURENAME").replace('@Year',YEAR.toString()) +`;`;
//Query = Query + '--Proc:' + strProcedureName;
        var stmtProcessData = snowflake.createStatement({sqlText: strProcedureName});
        stmtProcessData.execute();

// Get Post rowcount if the target table is provided.
        if (SqlRowCount !='')
        {
            rsPostRowCount = stmtRowCount.execute();
            if (rsPostRowCount.next())
            {
                postCount = rsPostRowCount.getColumnValue("COUNTS")
            }
        }
        
// Prepare audit details with procedure executed, target table aling with Pre and Post rowcount.
        var sql_Audit = 
              `INSERT INTO IPEDS_Audit 
              (StageName,ProcedureName,SourceTableName,SourceRowCount,TargetTableName,PreRowCount,PostRowCount)
              VALUES ('` + rsSql.getColumnValue("STAGENAME") + `','`+ strProcedureName
              +`','`+ strSourceTable +`',`+ sourceCount +`,'`+ strTargetTable + `',`+ preCount +`,`+ postCount +`);`;
//Query = Query + '--Audit:' + sql_Audit;        
        var stmt = snowflake.createStatement({sqlText:sql_Audit});
        stmt.execute();
    } // End While.
}
catch(err)
{
  return "Failed:" + err.toString();
}
return 'Success';
$$;
