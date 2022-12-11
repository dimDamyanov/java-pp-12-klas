-- Task 01
SELECT moviestar.NAME FROM moviestar INNER JOIN movieexec ON moviestar.NAME = movieexec.NAME WHERE movieexec.NETWORTH > 10000000;
SELECT moviestar.NAME FROM moviestar WHERE NOT EXISTS (SELECT movieexec.NAME FROM movieexec WHERE moviestar.NAME = movieexec.NAME);
SELECT movie.TITLE FROM movie WHERE movie.LENGTH > (SELECT movie.LENGTH FROM movie WHERE movie.TITLE = 'Star Wars' LIMIT 1);
SELECT movie.TITLE, movieexec.NAME FROM movie INNER JOIN movieexec ON `PRODUCERC#` = `CERT#` WHERE movieexec.NETWORTH > (SELECT movieexec.NETWORTH FROM movieexec WHERE movieexec.NAME = 'Merv Griffin');