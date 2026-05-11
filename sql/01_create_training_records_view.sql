CREATE OR REPLACE VIEW `your-project.learning_development.training_records_enriched` AS
SELECT
  tr.record_id,
  tr.employee_id,
  e.employee_name,
  e.department,
  e.job_level,
  e.join_date,
  tr.course_id,
  c.course_name,
  c.course_category,
  c.provider,
  c.mandatory,
  tr.training_start_date,
  tr.completion_date,
  tr.completion_status,
  tr.score,
  tr.training_hours,
  tr.feedback_rating,
  tr.training_cost
FROM `your-project.learning_development.training_records` tr
LEFT JOIN `your-project.learning_development.employees` e
  ON tr.employee_id = e.employee_id
LEFT JOIN `your-project.learning_development.courses` c
  ON tr.course_id = c.course_id;
