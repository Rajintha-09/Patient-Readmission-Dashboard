-- Step 2: Data Cleaning - Replace all '?' with NULL
USE PatientReadmission;

UPDATE diabetic_data SET race = NULL WHERE race = '?';
UPDATE diabetic_data SET weight = NULL WHERE weight = '?';
UPDATE diabetic_data SET payer_code = NULL WHERE payer_code = '?';
UPDATE diabetic_data SET medical_specialty = NULL WHERE medical_specialty = '?';
UPDATE diabetic_data SET diag_1 = NULL WHERE diag_1 = '?';
UPDATE diabetic_data SET diag_2 = NULL WHERE diag_2 = '?';
UPDATE diabetic_data SET diag_3 = NULL WHERE diag_3 = '?';

-- Verify Cleaning: Check no more '?' exist
SELECT 
    SUM(CASE WHEN race = '?' THEN 1 ELSE 0 END) AS race_issues,
    SUM(CASE WHEN weight = '?' THEN 1 ELSE 0 END) AS weight_issues,
    SUM(CASE WHEN payer_code = '?' THEN 1 ELSE 0 END) AS payer_issues,
    SUM(CASE WHEN medical_specialty = '?' THEN 1 ELSE 0 END) AS specialty_issues
FROM diabetic_data;