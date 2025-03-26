SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'MBA';

ALTER TABLE MBA
DROP COLUMN [Entrepreneurial Interest], [Networking Importance];


ALTER TABLE MBA
ADD [Salary Difference] AS ([Expected Post-MBA Salary] - [Annual Salary (Before MBA)]);


ALTER TABLE MBA
ADD [Percent of Life Worked] AS (CAST([Years of Work Experience] AS FLOAT) / CAST(Age AS FLOAT));