-- Remove existing tables
DROP TABLE IF EXISTS db_lookup CASCADE;
DROP TABLE IF EXISTS med_beneficiaries CASCADE;


CREATE TABLE db_lookup
(ADOBE_ID varchar,
PERSON_ID varchar,
BENEFICIARY_ID varchar
);

CREATE TABLE db_cpc
(PERSON_ID varchar,
BC_REGISTERED int,
LAST_BC_LOGIN timestamp,
PAPERLESS int,
AUTOPAY int,
MOBILE_NUM_CONFIRM int,
EMAIL_CONFIRM int,
SMS_OPT_IN int
);

-- the column headers were renamed in .csv file for ease
CREATE TABLE med_beneficiaries
(BENEFICIARY_ID varchar,
 BIRTH int,
 DEATH int,
 SEX int,
 RACE int,
 ES_RENAL_DISEASE text,
 STATE_CODE int,
 COUNTY_CODE int,
 HI_CVRAGE_TOT_MONS int,
 SMI_CVRAGE_TOT_MONS int,
 HMO_CVRAGE_TOT_MONS int,
 PLAN_CVRG_MOS_NUM int,
 ALZHEIMER_RELATED int,
 HEART_FAILURE int,
 KIDNEY_DISEASE int,
 CANCER int,
 COPD int,
 DEPRESSION int,
 DIABETES int,
 ISCH_HEART_DISEASE int,
 OSTEOPRS int,
 ARTHRITIS int,
 STROKE int,
 MEDREIMB_IP int,
 BENRES_IP int,
 PPPYMT_IP int,
 MEDREIMB_OP int,
 BENRES_OP int,
 PPPYMT_OP int,
 MEDREIMB_CAR int,
 BENRES_CAR int,
 PPPYMT_CAR int
);

CREATE TABLE adobe_medicare
(Day date,
Marketing_Cloud_Visitor_ID varchar,
Visitor_Age text,
Visitor_Gender text,
Channel text,
	Campaign text,
	Visits int,
	Visitor_Actions text,
	Recommended_Plan text
);
