# Verified DAX measures

The following definitions were extracted from the Power BI model export dated 24 September 2026.

## Completion Rate

```DAX
Completion Rate =
DIVIDE(
    COUNTROWS(
        FILTER(
            Training_Data,
            Training_Data[Completion_Status] = "Completed"
        )
    ),
    COUNTROWS(Training_Data)
)
```

## Completion Rate %

The model also contains an equivalent measure used for percentage presentation.

```DAX
Completion Rate % =
DIVIDE(
    CALCULATE(
        COUNTROWS(Training_Data),
        Training_Data[Completion_Status] = "Completed"
    ),
    COUNTROWS(Training_Data)
)
```

## Average Score

```DAX
Average Score =
AVERAGEX(
    FILTER(
        Training_Data,
        Training_Data[Completion_Status] = "Completed"
    ),
    Training_Data[Score]
)
```

## Total Training Hours

```DAX
Total Training Hours =
SUMX(
    FILTER(
        Training_Data,
        Training_Data[Completion_Status] = "Completed"
    ),
    Training_Data[Training_Hours]
)
```

## Training Hours (Completed)

This is an equivalent completed-hours measure retained in the model.

```DAX
Training Hours (Completed) =
SUMX(
    FILTER(
        Training_Data,
        Training_Data[Completion_Status] = "Completed"
    ),
    Training_Data[Training_Hours]
)
```

## Completed Trainings

```DAX
Completed Trainings =
COUNTROWS(
    FILTER(
        Training_Data,
        Training_Data[Completion_Status] = "Completed"
    )
)
```

## Participants

```DAX
Participants =
DISTINCTCOUNT(Training_Data[Employee_ID])
```
