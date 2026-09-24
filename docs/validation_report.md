# Power BI model validation report

## Verification source

The final dashboard model and DAX measures were checked against `TRAINING DATA final.vpax`, exported on 24 September 2026. Dashboard headline values were cross-checked against the published portfolio screenshot.

## Published dashboard model

| Item | Verified value |
|---|---:|
| Imported Power BI table | `Training_data` |
| Rows | 25 |
| Distinct employee IDs | 25 |
| Departments | 4 |
| Distinct course names | 24 |
| Completion-status values | 2 |

The final Power BI layer imports a curated Excel worksheet named `Training data`.

## Verified headline metrics

| Metric | Result | Definition |
|---|---:|---|
| Participants | 25 | Distinct `Employee_ID` |
| Completed trainings | 22 | Rows where status is `Completed` |
| Completion rate | 88.0% | Completed rows divided by all 25 rows |
| Average score | 83.8 | Average score across completed rows |
| Completed training hours | 124 | Sum of hours across completed rows |

The 88.0% rate reconciles to 22 completed records divided by 25 total records.

## End-to-end workflow

SQL and BigQuery were used upstream for preparation and analysis. A curated extract was then exported to Excel for the published Power BI dashboard. Consequently, the VPAX records the Excel import used by Power BI but does not describe every upstream platform used in the project.

```text
Source data → SQL / BigQuery → Curated Excel extract → Power BI → DAX → Dashboard
```

## Repository scope

The repository also contains expanded supporting sample data and SQL scripts for demonstrating the analytical pipeline. Those files have different record counts from the curated 25-row dashboard extract. Metrics from the expanded support dataset must therefore be labelled separately and must not replace the verified dashboard headline values.

## Scope note

These figures describe the portfolio dataset shown in the dashboard. They are descriptive outputs and should not be presented as findings about a named employer or client.
