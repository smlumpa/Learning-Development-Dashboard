# Data dictionary

## employees.csv

| Field | Description |
|---|---|
| employee_id | Synthetic employee identifier and primary key |
| employee_name | Fictitious employee label |
| department | Organisational department |
| job_level | Synthetic job-level category |
| join_date | Synthetic employment start date |

## courses.csv

| Field | Description |
|---|---|
| course_id | Course identifier and primary key |
| course_name | Course title |
| course_category | Subject grouping |
| provider | Training-provider category |
| mandatory | Whether the course is marked mandatory |
| estimated_hours | Expected course duration |

## training_records.csv

| Field | Description |
|---|---|
| record_id | Training-record identifier and primary key |
| employee_id | Foreign key to employees |
| course_id | Foreign key to courses |
| training_start_date | Training start date |
| completion_date | Completion date when completed |
| completion_status | Completed, In Progress or Not Started |
| score | Score for completed records |
| training_hours | Recorded training hours |
| feedback_rating | Feedback rating when available |
| training_cost | Synthetic training cost |
