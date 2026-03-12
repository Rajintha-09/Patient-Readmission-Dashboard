-- Step 6: Create View - Department Performance
USE PatientReadmission;

CREATE VIEW vw_department_performance AS
SELECT 
    medical_specialty,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN readmitted != 'NO' THEN 1 ELSE 0 END) AS readmitted_count,
    ROUND(SUM(CASE WHEN readmitted != 'NO' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS readmission_rate
FROM diabetic_data
WHERE medical_specialty IS NOT NULL
GROUP BY medical_specialty;