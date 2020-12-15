--- Create file format
CREATE  OR REPLACE   FILE FORMAT ff_iped_parquet
                      TYPE =PARQUET TRIM_SPACE = TRUE;
-- Create stage area to load Parquet file using format created above
CREATE OR REPLACE stage IPEDS_adm file_format = ff_iped_parquet;
