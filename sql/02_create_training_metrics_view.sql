CREATE OR REPLACE VIEW `your-project.learning_development.training_metrics` AS
SELECT
  e.department,
  c.course_category,
  c.course_name,
  COUNT(tr.record_id) AS total_enrolments,
  SUM(CASE WHEN tr.completion_status = 'Completed' THEN 1 ELSE 0 END) AS completed_trainings,
  SAFE_DIVIDE(
    SUM(CASE WHEN tr.completion_status = 'Completed' THEN 1 ELSE 0 END),
    COUNT(tr.record_id)
  ) AS completion_rate,
  AVG(CASE WHEN tr.completion_status = 'Completed' THEN tr.score END) AS average_score,
  SUM(tr.training_hours) AS total_training_hours,
  SUM(tr.training_cost) AS total_training_cost,
  AVG(CASE WHEN tr.completion_status = 'Completed' THEN tr.feedback_rating END) AS average_feedback_rating
FROM `your-project.learning_development.training_records` tr
LEFT JOIN `your-project.learning_development.employees` e
  ON tr.employee_id = e.employee_id
LEFT JOIN `your-project.learning_development.courses` c
  ON tr.course_id = c.course_id
GROUP BY e.department, c.course_category, c.course_name;
