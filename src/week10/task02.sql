-- Task 02
SELECT pc.model, pc.speed AS 'MHz', pc.hd AS 'GB' FROM pc WHERE pc.price < 1200;
SELECT DISTINCT product.maker FROM product WHERE product.type = 'PRINTER';
SELECT laptop.model, laptop.ram, laptop.screen FROM laptop WHERE laptop.price > 1000;
SELECT * FROM printer WHERE printer.color = 'y';
SELECT pc.model, pc.speed, pc.hd FROM pc WHERE pc.cd IN ('12X', '16X') AND pc.price < 2000;