-- db_cpc
-- must be done AFTER deleting duplicated data
ALTER TABLE db_cpc
ADD COLUMN id SERIAL PRIMARY KEY;

-- adobe_medicare
ALTER TABLE adobe_medicare
ADD COLUMN id SERIAL PRIMARY KEY;


--- WORKING ON PROBELM BELOW. 


-- med_beneficiaries
ALTER TABLE med_beneficiaries
ADD CONSTRAINT med_beneficiaries_pk
PRIMARY KEY (beneficiary_id);

SELECT COUNT(*), beneficiary_id AS id
FROM med_beneficiaries
GROUP BY id
ORDER BY count DESC;




-- db_lookup
-- requires edits to link foreign key
-- edit beneficiary_id to match the one in med_beneficiaries

DROP TABLE test_e CASCADE;
CREATE TABLE test_E AS
SELECT *
FROM db_lookup
WHERE beneficiary_id LIKE '%E+%';

UPDATE test_E
SET beneficiary_id = (
		ROUND( 
			CAST(
				SUBSTRING(beneficiary_id 
			  		FROM 1 
			  		FOR POSITION('E' IN beneficiary_id)-1)
				AS decimal)
			,2) ||
		SUBSTRING(beneficiary_id 
			FROM POSITION('E' IN beneficiary_id)))
WHERE beneficiary_id LIKE '%E+%';

SELECT COUNT(*), beneficiary_id AS id
FROM test_e
GROUP BY id
ORDER BY count DESC


ALTER TABLE test_E
ADD CONSTRAINT fk_beneficiary_id_test_E
FOREIGN KEY (beneficiary_id) REFERENCES med_beneficiaries (beneficiary_id);

ALTER TABLE db_lookup
ADD CONSTRAINT fk_beneficiary_id
FOREIGN KEY (beneficiary_id) REFERENCES med_beneficiaries (beneficiary_id);


