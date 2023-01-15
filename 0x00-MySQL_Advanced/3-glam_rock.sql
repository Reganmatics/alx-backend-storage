-- Task 3. Old school band
WITH band_lifespan AS (
    SELECT band_name, DATEDIFF(split, formed) as lifespan
    FROM metal_bands
    WHERE main_style = 'Glam rock'
)
SELECT band_name, lifespan
FROM band_lifespan
ORDER BY lifespan DESC;
