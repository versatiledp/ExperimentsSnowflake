
DROP TABLE IF EXISTS IPEDS_Audit;
CREATE TABLE IPEDS_Audit
( StageName STRING,
  ProcedureName STRING,
  SourceTableName STRING,
  SourceRowCount NUMBER,
  TargetTableName STRING,
  PreRowCount NUMBER,
  PostRowCount NUMBER,
  ProcessDateTime DATETIME default current_timestamp
);