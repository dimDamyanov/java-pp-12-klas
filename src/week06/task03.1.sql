INSERT INTO  customers (customerName, customerAddress, phoneNum, ssn) VALUES ('Georgi Ivanov - Gonzo', 'Sofia, Budapester Str. 1', '0877777777', '7607028965');
INSERT INTO  customers (customerName, customerAddress, phoneNum, ssn) VALUES ('Ivan Atanasov - Vankata', 'Sofia, Levski G', '0866666666', '6505192571');
INSERT INTO  customers (customerName, customerAddress, phoneNum, ssn) VALUES ('Georgi Milchev - Godzhi', 'Sofia, Levski G', '0855555555', '6307152015');
INSERT INTO accounts (customerId, balance, accountType) VALUES (1, 15562, 'Payment');
INSERT INTO accounts (customerId, balance, accountType) VALUES (2, 17734, 'Savings');
INSERT INTO accounts (customerId, balance, accountType) VALUES (3, 11987, 'Payment');
UPDATE customers SET customerAddress = 'Sofia, Hipodruma' WHERE customerName = 'Ivan Atanasov - Vankata';
DELETE FROM customers WHERE customerAddress = 'Sofia, Levski G';