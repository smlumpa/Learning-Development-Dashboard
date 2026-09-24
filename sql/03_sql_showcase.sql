SELECT
  department,
  COUNT(record_id) AS total_enrolments,
  SUM(CASE WHEN completion_status = 'Completed' THEN 1 ELSE 0 END) AS completed_trainings,
  SAFE_DIVIDE(
    SUM(CASE WHEN completion_status = 'Completed' THEN 1 ELSE 0 END),
    COUNT(record_id)
  ) AS completion_rate,
  AVG(score) AS average_score
FROM `your-project.learning_development.training_records_enriched`
GROUP BY department
ORDER BY completion_rate DESC;
