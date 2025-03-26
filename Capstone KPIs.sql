
SELECT 
    (COUNT(CASE WHEN [Has Management Experience] = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) 
    AS Percent_With_Management_Experience
FROM MBA;

-- 39.9100



SELECT 
    (COUNT(CASE WHEN [Decided to Pursue MBA?] = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) 
    AS Percent_Decided_MBA
FROM MBA;

-- 59.0700

SELECT TOP 1 [Undergraduate Major], COUNT(*) AS Count
FROM MBA
GROUP BY [Undergraduate Major]
ORDER BY Count DESC;

-- Economics - 2082

SELECT 
    (COUNT(CASE WHEN [Location Preference (Post-MBA)] = 'International' THEN 1 END) * 100.0 / COUNT(*)) 
    AS Percent_Seeking_International
FROM MBA;

-- 50.83%

SELECT TOP 1 [Reason for MBA], COUNT(*) AS Count
FROM MBA
GROUP BY [Reason for MBA]
ORDER BY Count DESC;

-- Networking, 2546