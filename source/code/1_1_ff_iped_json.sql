--- Create json file format
CREATE  OR REPLACE   FILE FORMAT ff_iped_json
                      TYPE =JSON TRIM_SPACE = TRUE; 
-- Create stage area to load json file using json format created above
CREATE OR REPLACE stage IPEDS_effys file_format = ff_iped_json;
