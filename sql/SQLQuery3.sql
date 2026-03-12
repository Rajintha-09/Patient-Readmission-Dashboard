-- Step 3: Create View - Readmission Rate
USE PatientReadmission;

CREATE VIEW vw_readmission_rate AS
SELECT 
    readmitted,
    COUNT(*) AS total_patients,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM diabetic_data
GROUP BY readmitted;