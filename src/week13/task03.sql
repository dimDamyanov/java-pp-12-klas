-- Task 03
SELECT mountains.mountain_range, peaks.peak_name, peaks.elevation FROM peaks INNER JOIN mountains ON peaks.mountain_id = mountains.id WHERE mountains.mountain_range = 'Rila' ORDER BY peaks.elevation DESC;
SELECT COUNT(t.c) AS country_count FROM (SELECT countries.country_code AS c FROM countries WHERE NOT EXISTS(SELECT * FROM mountains_countries WHERE mountains_countries.country_code = countries.country_code)) t;
SELECT t.name AS country_name FROM (SELECT countries.country_name AS name FROM countries WHERE NOT EXISTS(SELECT * FROM mountains_countries WHERE mountains_countries.country_code = countries.country_code)) t;
SELECT mountains_countries.country_code, mountains.mountain_range, peaks.peak_name, peaks.elevation FROM peaks INNER JOIN mountains ON peaks.mountain_id = mountains.id INNER JOIN mountains_countries ON mountains.id = mountains_countries.mountain_id WHERE country_code = (SELECT countries.country_code FROM countries WHERE countries.country_name = 'Bulgaria' LIMIT 1) AND peaks.elevation > 2835 ORDER BY peaks.elevation DESC;
SELECT mountains_countries.country_code, countries.country_name, mountains.mountain_range FROM mountains_countries INNER JOIN countries ON mountains_countries.country_code = countries.country_code INNER JOIN mountains ON mountains_countries.mountain_id = mountains.id WHERE countries.country_name IN ('United States', 'Russia', 'Bulgaria') ORDER BY mountains_countries.country_code, mountains.mountain_range ASC;
SELECT countries.country_name, rivers.river_name FROM countries LEFT JOIN countries_rivers ON countries.country_code = countries_rivers.country_code LEFT JOIN rivers ON countries_rivers.river_id = rivers.id LEFT JOIN continents ON countries.continent_code = continents.continent_code WHERE continents.continent_name = 'Africa' ORDER BY countries.country_name LIMIT 5;