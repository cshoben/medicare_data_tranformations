
SELECT COUNT(*), beneficiary_id
FROM med_beneficiaries
WHERE beneficiary_id LIKE '%E+%'
GROUP BY beneficiary_id
ORDER BY beneficiary_id DESC

SELECT *
FROM db_lookup
WHERE beneficiary_id LIKE '%1.48%E+15'

CREATE TABLE test_E AS
SELECT *
FROM db_lookup
WHERE beneficiary_id LIKE '%E+%'

SELECT CAST(LEFT(beneficiary_id, 7) AS decimal)
FROM test_E

SELECT
	ROUND( 
		CAST(
			SUBSTRING(beneficiary_id 
			  FROM 1 
			  FOR POSITION('E' IN beneficiary_id)-1)
			AS decimal)
		,2) ||
	SUBSTRING(beneficiary_id 
			  FROM POSITION('E' IN beneficiary_id))
FROM test_E

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



SELECT COUNT(*)
FROM db_lookup
WHERE beneficiary_id LIKE '%E+%'


SELECT *
FROM test_E


ALTER TABLE test_E
ADD CONSTRAINT fk_beneficiary_id_test_E
FOREIGN KEY (beneficiary_id) REFERENCES med_beneficiaries (beneficiary_id);

SELECT m.beneficiary_id, m.birth
FROM med_beneficiaries AS m
LEFT JOIN test_E as t
ON m.beneficiary_id = t.beneficiary_id
WHERE birth = NULL
