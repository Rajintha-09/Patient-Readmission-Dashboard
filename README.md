# Patient Readmission Analysis Dashboard

Data-driven analysis of diabetic patient readmission patterns using SQL Server and Power BI.

---

## Project Overview

This project presents a data-driven analysis of diabetic patient readmission patterns using the UCI Diabetic Readmission Dataset containing 101,766 real patient records.

The analysis focuses on:
- Overall readmission rates
- Age group patterns
- Diagnosis trends
- Department performance

---

## Dataset Source
- **Source:** UCI Machine Learning Repository — Diabetic Readmission Dataset
- **Records:** 101,766 patient records
- **Features:** 50 columns
- **File:** dataset/diabetic_data.csv

---

## Technologies Used
- **SQL Server** — Data storage, cleaning, transformation
- **SSMS** — Writing and running SQL queries
- **Power BI** — Data modeling, DAX, visualization
- **GitHub** — Version control and project documentation

---

## Project Structure

```
Patient-Readmission-Dashboard/
|-- dataset/
|   |-- diabetic_data.csv
|   |-- IDS_mapping.csv
|-- powerbi/
|   |-- dashboard1.pbix
|   |-- dashboard_preview.png
|-- sql/
|   |-- SQLQuery1.sql
|   |-- SQLQuery2.sql
|   |-- SQLQuery3.sql
|   |-- SQLQuery4.sql
|   |-- SQLQuery5.sql
|   |-- SQLQuery6.sql
|-- README.md
```

---

## SQL Views Created
| View | Description |
|------|-------------|
| vw_readmission_rate | Overall readmission percentages |
| vw_age_group_analysis | Patients by age group and readmission status |
| vw_diagnosis_patterns | Most common diagnoses |
| vw_department_performance | Readmission rate by medical department |

---

## Key Insights
- **46.09%** overall readmission rate among diabetic patients
- **70-80 age group** has the highest number of readmissions
- **Nephrology** department has highest readmission rate at 56.66%
- **Emergency/Trauma** handles most patients with 50.92% readmission rate
- Average hospital stay is only **4.40 days**

---

## Dashboard Features
- 5 KPI Cards — Readmission Rate %, Total Patients, Total Readmitted, Total Departments, Avg Days in Hospital
- Donut Chart — Overall Readmission Rate breakdown
- Bar Chart — Patients by Age Group
- Treemap — Diagnosis Patterns
- Table with Conditional Formatting — Department Performance
- Interactive Slicers — Age and Gender filters

---

## How to Run
1. Import `diabetic_data.csv` into SQL Server as `PatientReadmission` database
2. Run `analysis_queries.sql` in SSMS in order from Step 1 to Step 6
3. Open `dashboard1.pbix` in Power BI Desktop
4. Connect to your SQL Server instance
5. Refresh the data

---

## Author
**Rajintha Hewanayaka**
- GitHub: [Rajintha-09](https://github.com/Rajintha-09)
