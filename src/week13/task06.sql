-- Task 06
SELECT countries.country_name, peaks.elevation AS 'MaxPeakElevation', rivers.length AS 'MaxRiverLength' FROM countries LEFT JOIN mountains_countries ON countries.country_code = mountains_countries.country_code LEFT JOIN countries_rivers ON countries.country_code = countries_rivers.country_code LEFT JOIN mountains ON mountains_countries.mountain_id = mountains.id CROSS JOIN peaks ON mountains.id = peaks.mountain_id LEFT JOIN rivers ON countries_rivers.river_id = rivers.id WHERE (peaks.elevation = (SELECT MAX(t1.elevation) FROM (SELECT peaks.elevation, mountains_countries.country_code FROM peaks INNER JOIN mountains_countries ON peaks.mountain_id = mountains_countries.mountain_id) t1 WHERE t1.country_code = countries.country_code)) AND (rivers.length = (SELECT MAX(t2.length) FROM (SELECT rivers.length, countries_rivers.country_code FROM rivers INNER JOIN countries_rivers ON rivers.id = countries_rivers.river_id) t2 WHERE t2.country_code = countries.country_code));