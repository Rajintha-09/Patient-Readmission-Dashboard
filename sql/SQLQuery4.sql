-- Step 4: Create View - Age Group Analysis
USE PatientReadmission;

CREATE VIEW vw_age_group_analysis AS
SELECT 
    age,
    readmitted,
    COUNT(*) AS total_patients
FROM diabetic_data
GROUP BY age, readmitted;