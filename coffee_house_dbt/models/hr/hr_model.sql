-- models/hr_model.sql
WITH hr_data AS (
    SELECT
        employee_id,
        employee_name,
        hire_date,
        department,
        salary
    FROM
        raw_hr.hr_data
)
SELECT
    employee_id,
    employee_name,
    hire_date,
    department,
    salary,
    CASE
        WHEN hire_date < '2020-01-01' THEN 'Veteran'
        ELSE 'New'
    END AS employee_status
FROM hr_data
