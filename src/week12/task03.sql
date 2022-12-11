-- Task 03
SELECT moviestar.NAME FROM moviestar INNER JOIN starsin ON moviestar.NAME = starsin.STARNAME WHERE moviestar.GENDER = 'M' AND starsin.MOVIETITLE = 'Terms of Endearment';
SELECT DISTINCT starsin.STARNAME FROM starsin INNER JOIN movie ON starsin.MOVIETITLE = movie.TITLE INNER JOIN studio ON movie.STUDIONAME = studio.NAME WHERE studio.NAME = 'MGM' AND movie.YEAR = 1995;
SELECT DISTINCT movieexec.NAME FROM movieexec INNER JOIN movie ON `CERT#` = `PRODUCERC#` WHERE movie.STUDIONAME = 'MGM';
SELECT movie.TITLE FROM movie WHERE movie.LENGTH > (SELECT movie.LENGTH FROM movie WHERE movie.TITLE = 'Star Wars' LIMIT 1);
SELECT movieexec.NAME FROM movieexec WHERE movieexec.NETWORTH > (SELECT movieexec.NETWORTH FROM movieexec WHERE movieexec.NAME = 'Merv Griffin');
SELECT movie.TITLE FROM movie WHERE `PRODUCERC#` IN (SELECT `CERT#` FROM movieexec WHERE movieexec.NETWORTH > (SELECT movieexec.NETWORTH FROM movieexec WHERE movieexec.NAME = 'Merv Griffin'));