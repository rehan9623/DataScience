CREATE DATABASE shop;
USE shop;
CREATE TABLE payments (
    payment_id INT,
    customer_name VARCHAR(50),
    payment_method VARCHAR(20),
    amount INT
);
INSERT INTO payments VALUES
(1, 'Amit',   'Cash',   500),
(2, 'Riya',   'UPI',    1200),
(3, 'Rahul',  'Card',   800),
(4, 'Sneha',  'Cash',   300),
(5, 'Arjun',  'UPI',    700),
(6, 'Neha',   'Card',   1000),
(7, 'Karan',  'Cash',   450),
(8, 'Pooja',  'UPI',    650);
SELECT * FROM payments;
SELECT payment_method,COUNT(payment_id)
FROM payments
GROUP BY payment_method;
