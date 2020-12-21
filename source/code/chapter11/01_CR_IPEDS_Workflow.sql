DROP TABLE IF EXISTS IPEDS_Workflow;
CREATE TABLE IPEDS_Workflow
( StageName STRING,
  ProcedureName STRING,
  SourceTableName STRING,
  TargetTableName STRING,
  ExecutionOrder NUMBER
);