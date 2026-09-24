# Data validation report

## Dataset status

This repository uses **synthetic sample data**. Employee names are fictitious
labels and the files do not contain confidential employer, client or learner
information.

## Record counts

| Table | Rows |
|---|---:|
| Employees | 80 |
| Courses | 10 |
| Training records | 359 |

All 359 training records match an employee and a course in the supplied
dimension tables.

## Verified metrics

| Metric | Result |
|---|---:|
| Completed | 226 |
| In Progress | 73 |
| Not Started | 60 |
| Completion rate | 62.95% |
| Average score for completed records | 80.69 |
| Recorded training hours | 1,126 |
| Training participants | 80 |
| Total recorded training cost | £89,355.99 |

## Department checks

| Department | Enrolments | Completed | Completion rate | Completed average score |
|---|---:|---:|---:|---:|
| Sales | 59 | 39 | 66.10% | 80.05 |
| Finance | 51 | 33 | 64.71% | 83.76 |
| Operations | 65 | 42 | 64.62% | 80.19 |
| HR | 61 | 38 | 62.30% | 79.79 |
| IT | 53 | 32 | 60.38% | 79.53 |
| Marketing | 70 | 42 | 60.00% | 81.05 |

## Interpretation rule

Completion rate equals completed training records divided by all training
records. Average score uses completed records only. Training hours and costs are
descriptive totals from all records in the synthetic dataset.
