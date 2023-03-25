-- run these if using original DB_MED.BENEFICIARIES.csv file
ALTER TABLE db_med_beneficiaries
RENAME COLUMN bene_id TO beneficiary_id;

ALTER TABLE db_med_beneficiaries
RENAME COLUMN bene_birth_dt TO birth;

ALTER TABLE db_med_beneficiaries
RENAME COLUMN bene_death_dt TO death;

ALTER TABLE db_med_beneficiaries
RENAME COLUMN bene_sex_ident_cd TO sex;

ALTER TABLE db_med_beneficiaries
RENAME COLUMN bene_race_cd TO race;

-- adobe_medicare

ALTER TABLE adobe_medicare
RENAME COLUMN marketing_cloud_visitor_id TO adobe_id;

ALTER TABLE adobe_medicare
RENAME COLUMN visitor_age TO age_range;

ALTER TABLE adobe_medicare
RENAME COLUMN visitor_gender TO gender;


