-- Best Band ever!
WITH band_fans AS (
    SELECT origin, COUNT(*) as nb_fans
    FROM metal_bands
    GROUP BY origin
)
SELECT origin, nb_fans
FROM band_fans
ORDER BY nb_fans DESC;
