WITH RECURSIVE HOURS AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR+1 FROM HOURS WHERE HOUR < 23
) SELECT h.HOUR HOUR, COUNT(DATETIME) COUNT FROM HOURS h
LEFT OUTER JOIN ANIMAL_OUTS a
ON HOUR(a.DATETIME) = h.HOUR
GROUP BY HOUR
ORDER BY HOUR