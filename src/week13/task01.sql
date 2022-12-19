-- Task 01
SELECT movie.TITLE, movieexec.NAME as name FROM movie INNER JOIN movieexec ON `PRODUCERC#` = `CERT#` WHERE `CERT#` = (SELECT `PRODUCERC#` FROM movie WHERE movie.TITLE = 'Star Wars' LIMIT 1);
SELECT DISTINCT movieexec.NAME FROM movieexec INNER JOIN movie ON `CERT#` = `PRODUCERC#` INNER JOIN starsin ON movie.TITLE = starsin.MOVIETITLE INNER JOIN moviestar ON moviestar.NAME = starsin.STARNAME WHERE moviestar.NAME = 'Harrison Ford';
SELECT starsin.STARNAME, movie.STUDIONAME as NAME FROM starsin LEFT JOIN movie ON starsin.MOVIETITLE = movie.TITLE ORDER BY movie.STUDIONAME ASC;
SELECT starsin.STARNAME, movieexec.NETWORTH, movie.TITLE FROM starsin LEFT JOIN movie ON starsin.MOVIETITLE = movie.TITLE LEFT JOIN movieexec ON `PRODUCERC#` = `CERT#` WHERE movieexec.NETWORTH = (SELECT MAX(movieexec.NETWORTH) FROM movieexec LIMIT 1);
SELECT moviestar.NAME FROM moviestar WHERE NOT EXISTS (SELECT * FROM starsin WHERE starsin.STARNAME = moviestar.NAME);