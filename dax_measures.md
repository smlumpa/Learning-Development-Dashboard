# DAX Measures

```DAX
Completion Rate =
DIVIDE(
    CALCULATE(
        COUNT(training_records[record_id]),
        training_records[completion_status] = "Completed"
    ),
    COUNT(training_records[record_id])
)
```

```DAX
Average Score =
AVERAGEX(
    FILTER(training_records, training_records[completion_status] = "Completed"),
    training_records[score]
)
```

```DAX
Total Training Hours =
SUM(training_records[training_hours])
```

```DAX
Training Participants =
DISTINCTCOUNT(training_records[employee_id])
```

```DAX
Completed Trainings =
CALCULATE(
    COUNT(training_records[record_id]),
    training_records[completion_status] = "Completed"
)
```
