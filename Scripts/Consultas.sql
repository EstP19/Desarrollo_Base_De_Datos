USE BD_inventario;

SELECT address, email, name_ FROM employees;

SELECT * FROM customers;
SELECT * FROM payment;

SELECT reserves.*, payment.pay_method FROM reserves 
INNER JOIN payment ON  reserves.idpayment = payment.idpayment
WHERE payment.pay_method = 'Cash';

SELECT idreserves, state, price FROM reserves 
WHERE reserves.price BETWEEN 170 AND 200 AND reserves.state = "Confirmed";

SELECT name_, lastname FROM customers
WHERE customers.birthday > '1995-01-01' OR customers.name_ LIKE '$R$' OR customers.idtype_document = 1;

