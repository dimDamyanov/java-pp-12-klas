-- Task 01
SELECT studio.ADDRESS FROM studio WHERE studio.NAME = 'MGM';
SELECT moviestar.BIRTHDATE FROM moviestar WHERE moviestar.NAME = 'Sandra Bullock';
SELECT starsin.STARNAME FROM starsin WHERE starsin.MOVIEYEAR = 1980 AND starsin.MOVIETITLE LIKE 'Empire%';
SELECT movieexec.NAME FROM movieexec WHERE movieexec.NETWORTH >= 10000000;
SELECT moviestar.NAME FROM moviestar WHERE moviestar.GENDER = 'M' OR moviestar.ADDRESS = 'Prefect Rd.';