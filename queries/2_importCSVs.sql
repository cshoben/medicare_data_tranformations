-- clear existing data, used only if serial PRIMARY KEY is added before this step
-- TRUNCATE db_lookup, db_cpc, adobe_medicare, med_beneficiaries;


-- load in CSVs
COPY db_lookup
FROM '/Users/cshoben/technical_interview_BCBS/assessment_data/DB.LOOKUP.csv'
DELIMITER ','
CSV HEADER;

COPY db_cpc
FROM '/Users/cshoben/technical_interview_BCBS/assessment_data/DB_CPC.DIGITAL.csv'
WITH DELIMITER ','
NULL AS 'NULL'
CSV HEADER;


COPY adobe_medicare
FROM '/Users/cshoben/technical_interview_BCBS/assessment_data/adobe_medicare_dump_20230111_20230311.csv'
DELIMITER ','
CSV HEADER;


COPY med_beneficiaries
FROM '/Users/cshoben/technical_interview_BCBS/assessment_data/DB_MED.BENEFICIARIES.csv'
DELIMITER ','
CSV HEADER;
