
-- db_cpc
-- delete all but one for identical columns

DELETE FROM db_cpc a USING db_cpc b
WHERE a=b and a.ctid < b.ctid;

--ALTER TABLE db_cpc
--DROP COLUMN bc_registered

-- med_beneficiaries
/*
TO DELETE: (these are duplicated in med_beneficiaries 
and do not exist in the db_lookup table)
8.63E+15
8,76E+15
We will not be using them for the analysis. 
*/

/*
SELECT *
FROM db_lookup
WHERE beneficiary_id = '8.76E+15'

SELECT *
FROM db_lookup
WHERE beneficiary_id = '8.63E+15'

DELETE FROM med_beneficiaries
WHERE beneficiary_id = '8.76E+15'

DELETE FROM med_beneficiaries
WHERE beneficiary_id = '8.63E+15'
*/