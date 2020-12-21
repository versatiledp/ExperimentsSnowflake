
CREATE OR REPLACE PROCEDURE pr_IPEDS_Process(YEAR FLOAT)
RETURNS STRING
LANGUAGE javascript
AS
$$
// 1:Academic Institution,2:Enrollment,3:Institution charges,
// 4:Admision Stat,5: Code Mapping
// Get the list of procedures and target table names to process.
var sql_WF = `SELECT StageName,ProcedureName,
				TargetTableName,ExecutionOrder 
              FROM IPEDS_Workflow ORDER BY ExecutionOrder`;
CmdSql = {sqlText:sql_WF};
StmtSql = snowflake.createStatement(CmdSql);
rsSql = StmtSql.execute();
var Queries = '';
// Execute each procedure and get Pre and Post rowcount 
//   if target table is provided.
try{
    while (rsSql.next()){
        var strTargetTable  = rsSql.getColumnValue("TARGETTABLENAME");
        var preCount = '';
        var postCount = '';
        var Sql_RowCount = ``
      var stmtRowCount = '';
      var rsPreRowCount;
      var rsPostRowCount;
	// Get Pre rowcount if the target table is provided.
      if  (strTargetTable != '')
      {
        Sql_RowCount = `SELECT COUNT(1) As Counts FROM
		`+ rsSql.getColumnValue("TARGETTABLENAME") 
		 +` WHERE AcademicYear = ` + YEAR.toString()+`;`;
        stmtRowCount = snowflake.
			createStatement({sqlText: Sql_RowCount});
        rsPreRowCount = stmtRowCount.execute();
        rsPreRowCount.next();
        preCount = rsPreRowCount.getColumnValue("COUNTS");
      }
	// Execute load procedure and pass parameter value if required.
      var stmtProcessData = snowflake.createStatement
			({sqlText:`CALL 
			`+ rsSql.getColumnValue("PROCEDURENAME")
				.replace('@Year',YEAR.toString()) });
      stmtProcessData.execute();

	// Get Post rowcount if the target table is provided.
      if (Sql_RowCount !='')
      {
        rsPostRowCount = stmtRowCount.execute();
        rsPostRowCount.next();
        postCount = rsPostRowCount.getColumnValue("COUNTS")
      }
      rsPreRowCount.next();
      rsPostRowCount.next();
	// Prepare audit details with procedure executed, 
	// target table aling with Pre and Post rowcount.
      var sql_Audit = `INSERT INTO IPEDS_Audit 
	  (StageName,ProcedureName,TargetTableName
		,PreRowCount,PostRowCount)
      VALUES ('` + rsSql.getColumnValue("STAGENAME") 
		+ `','`
		+ rsSql.getColumnValue("PROCEDURENAME")
		.replace('@Year',YEAR.toString())
        +`','`+ rsSql.getColumnValue("TARGETTABLENAME")
		+ `',`+ preCount +`,`+ postCount +`)`;
      
      var stmt = snowflake.createStatement({sqlText:sql_Audit});
      stmt.execute();
    }
}
catch(err)
{
  return "Failed:"+err +`-->`+Queries;
}
return 'Success';
$$;