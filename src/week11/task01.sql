SELECT AVG(speed) FROM pc;
SELECT product.maker, AVG(laptop.screen) FROM product, laptop WHERE product.model = laptop.model GROUP BY product.maker;
SELECT AVG(laptop.speed) FROM laptop WHERE laptop.price > 1000;
SELECT product.maker, AVG(pc.price) FROM product, pc WHERE product.model = pc.model GROUP BY product.maker HAVING product.maker = 'A';
SELECT speed, AVG(PRICE) FROM pc GROUP BY speed;
SELECT product.maker, COUNT(pc.model) AS `num` FROM product, pc WHERE product.model = pc.model GROUP BY product.maker HAVING num >= 3;
SELECT product.maker, MAX(pc.price) FROM product, pc WHERE pc.model = product.model;
SELECT speed, AVG(PRICE) FROM pc WHERE speed > 800 GROUP BY speed;