WITH RECURSIVE nums(i) AS (
    SELECT 0
    UNION ALL
    SELECT i + 1 FROM nums WHERE i < 10
)
SELECT 
    TO_CHAR(
        MAKE_INTERVAL(secs := (43200 * i + 21600) / 11) + INTERVAL '0 second',
        'HH12:MI:SS'
    ) AS formatted_time
FROM nums;