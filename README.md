# Patient Readmission Analysis Dashboard

## Overview
Interactive Power BI dashboard analyzing diabetic patient readmission patterns across age groups, diagnoses and departments.

## Dataset
- **Source:** UCI Diabetic Readmission Dataset
- **Records:** 101,766 patient records
- **Columns:** 50 features
- **File:** diabetic_data.csv

## Tools Used
| Tool | Purpose |
|------|---------|
| SQL Server | Data storage and management |
| SSMS | Data cleaning and SQL views |
| Power BI Desktop | Dashboard visualization |
| DAX | Calculated measures |

## Project Structure
| File | Description |
|------|-------------|
| dashboard1.pbix | Power BI Dashboard file |
| diabetic_data.csv | Raw dataset |
| IDS_mapping.csv | Diagnosis codes mapping |
| SQLQuery1.sql | Database creation |
| SQLQuery2.sql | Data cleaning |
| SQLQuery3.sql | View: Readmission Rate |
| SQLQuery4.sql | View: Age Group Analysis |
| SQLQuery5.sql | View: Diagnosis Patterns |
| SQLQuery6.sql | View: Department Performance |

## SQL Views Created
- **vw_readmission_rate** — Overall readmission percentages
- **vw_age_group_analysis** — Patients by age group and readmission status
- **vw_diagnosis_patterns** — Most common diagnoses
- **vw_department_performance** — Readmission rate by medical department

## Key Insights
- **46.09%** overall readmission rate among diabetic patients
- **70-80 age group** has the highest number of readmissions
- **Nephrology** department has highest readmission rate at 56.66%
- **Emergency/Trauma** handles most patients with 50.92% readmission rate
- Average hospital stay is only **4.40 days**

## Dashboard Features
- 5 KPI Cards
- Donut Chart — Overall Readmission Rate
- Bar Chart — Patients by Age Group
- Treemap — Diagnosis Patterns
- Table with Conditional Formatting — Department Performance
- Interactive Slicers — Age and Gender filters

## How to Run
1. Import diabetic_data.csv into SQL Server as PatientReadmission database
2. Run SQL queries in order SQLQuery1 through SQLQuery6
3. Open dashboard1.pbix in Power BI Desktop
4. Connect to your SQL Server instance
5. Refresh the data

## Author
- **Name:** Rajintha Hewanayaka
- **Dataset Source:** UCI Machine Learning Repository
