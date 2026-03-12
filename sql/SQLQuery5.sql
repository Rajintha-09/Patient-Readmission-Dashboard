-- Step 5: Create View - Diagnosis Patterns
USE PatientReadmission;

CREATE VIEW vw_diagnosis_patterns AS
SELECT 
    diag_1,
    COUNT(*) AS total_cases,
    SUM(CASE WHEN readmitted != 'NO' THEN 1 ELSE 0 END) AS readmitted_cases
FROM diabetic_data
WHERE diag_1 IS NOT NULL
GROUP BY diag_1;