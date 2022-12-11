-- Task 03
SELECT product.maker, laptop.speed FROM product INNER JOIN laptop ON product.model = laptop.model WHERE laptop.hd > 9;
SELECT pr.model, pr.price FROM product INNER JOIN (SELECT laptop.model, laptop.price FROM laptop UNION SELECT pc.model, pc.price FROM pc UNION SELECT printer.model, printer.price FROM printer) pr ON product.model = pr.model WHERE product.maker = 'B';
SELECT t.hd FROM (SELECT pc.hd, COUNT(*) AS num FROM pc GROUP BY pc.hd) t WHERE t.num >= 2;
SELECT DISTINCT pc.model, pc1.model FROM PC INNER JOIN pc AS pc1 ON pc.ram = pc1.ram AND pc.cd = pc1.cd AND pc.model <> pc1.model WHERE pc.code < pc1.code;
SELECT t.maker, t.CNT FROM (SELECT product.maker, COUNT(*) AS CNT FROM product INNER JOIN pc ON product.model = pc.model WHERE pc.speed > 400 GROUP BY product.maker) t WHERE t.CNT >= 2;