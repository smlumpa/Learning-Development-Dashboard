# Power BI model validation report

## Verification source

The model structure and measures were checked against `TRAINING DATA final.vpax`, exported on 24 September 2026. Dashboard headline values were cross-checked against the published portfolio screenshot.

## Model structure

| Item | Verified value |
|---|---:|
| Imported model table | `Training_data` |
| Rows | 25 |
| Distinct employee IDs | 25 |
| Departments | 4 |
| Distinct course names | 24 |
| Completion-status values | 2 |

The model imports an Excel worksheet named `Training data`. It is a single-table Power BI model rather than a three-table employee/course/training-record model.

## Verified headline metrics

| Metric | Result | Definition |
|---|---:|---|
| Participants | 25 | Distinct `Employee_ID` |
| Completed trainings | 22 | Rows where status is `Completed` |
| Completion rate | 88.0% | Completed rows divided by all 25 rows |
| Average score | 83.8 | Average score across completed rows |
| Completed training hours | 124 | Sum of hours across completed rows |

The 88.0% rate reconciles to 22 completed records divided by 25 total records.

## Technical verification

- Source type: Excel workbook
- Power Query table: `Training_data`
- Model approach: single imported fact-style table
- Time support: automatically generated local date table linked to `Completion_Date`
- Tools evidenced by the model: Excel, Power Query, Power BI and DAX
- BigQuery and SQL are not used by this model

## Scope note

These figures describe the portfolio dataset shown in the dashboard. They are descriptive outputs and should not be presented as findings about a named employer or client.
