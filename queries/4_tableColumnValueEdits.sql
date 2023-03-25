-- med_beneficiaries 
-- change 'es_renal_disease' options to match other chronic diseases in data set
UPDATE med_beneficiaries
SET es_renal_disease = REPLACE(es_renal_disease, 'Y', '1')
WHERE es_renal_disease = 'Y';

UPDATE med_beneficiaries
SET es_renal_disease = REPLACE(es_renal_disease, '0', '2')
WHERE es_renal_disease = '0';

ALTER TABLE med_beneficiaries
ALTER COLUMN es_renal_disease TYPE int
USING es_renal_disease::int;


-- make 'birth' and 'death' columns type DATE
ALTER TABLE med_beneficiaries
ALTER COLUMN birth TYPE date
USING date(birth::TEXT);

ALTER TABLE med_beneficiaries
ALTER COLUMN death TYPE date
USING date(death::TEXT);

SELECT * FROM med_beneficiaries

-- update race code with listed options
ALTER TABLE med_beneficiaries
ALTER COLUMN race TYPE text
USING race::text;

UPDATE med_beneficiaries
SET race = REPLACE(race, '1', 'white')
WHERE race = '1';

UPDATE med_beneficiaries
SET race = REPLACE(race, '2', 'black')
WHERE race = '2';

UPDATE med_beneficiaries
SET race = REPLACE(race, '3', 'others')
WHERE race = '3';

UPDATE med_beneficiaries
SET race = REPLACE(race, '5', 'hispanic')
WHERE race = '5';









