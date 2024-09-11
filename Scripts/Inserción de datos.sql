USE bd_inventario;
#Paso 4:
#Agregar columna
ALTER TABLE employees
ADD COLUMN genus VARCHAR(1) DEFAULT "F";

#Paso 5:
#Eliminar columna
ALTER TABLE employees
DROP COLUMN genus;



#Insertar datos
#Paso 7:

INSERT INTO type_document (type_document)
VALUES
('CC'),('PP'),('CE');

INSERT INTO payment (pay_method)
VALUES
('Credit Card'),
('Debit Card'),
('Cash'),
('No pay');

INSERT INTO employees (name_, createdAt, updateAt, lastname, birthday, email,
 phone, address, occupation, date_recruitment, document_number, idtype_document)
VALUES
('Carlos', '2020-03-15','2020-03-15', 'Brown', '1987-03-15', 'carlos.brown@example.com', 
'+1123456789', '789 Pine St', 'Developer', '2021-05-10', 151515, 1),
('Bibian','2021-04-15','2021-04-15', 'Taylor', '1990-07-25', 'bibian.taylor@example.com', 
'+1098765432', '321 Oak St', 'Designer', '2022-06-20', 2222022, 2);

INSERT INTO customers (name_, lastname, email, phone, birthday, document_number, idtype_document)
VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '+123456789', '1988-02-14', 123456, 1),
('Bob', 'Williams', 'bob.williams@example.com', '+234567890', '1992-05-21', 234567, 2),
('Carol', 'Brown', 'carol.brown@example.com', '+345678901', '1985-08-30', 345678, 3),
('David', 'Jones', 'david.jones@example.com', '+456789012', '1990-11-05', 456789, 1),
('Eve', 'Davis', 'eve.davis@example.com', '+567890123', '1995-12-22', 567890, 2),
('Frank', 'Miller', 'frank.miller@example.com', '+963852741', '1987-11-25', 963852, 1),
('Grace', 'Wilson', 'grace.wilson@example.com', '+852741963', '1991-03-03', 852741, 1),
('Henry', 'Moore', 'henry.moore@example.com', '+741852963', '1992-12-08', 741852, 1),
('Ivy', 'Taylor', 'ivy.taylor@example.com', '+369852147', '1986-05-20', 369852, 2),
('Jack', 'Anderson', 'jack.anderson@example.com', '+258963147', '1989-08-15', 258963, 1),
('Liam', 'Martinez', 'liam.martinez@example.com', '+123987456', '1988-03-18', 987123, 1),
('Sophia', 'Garcia', 'sophia.garcia@example.com', '+234876543', '1993-04-29', 876234, 2),
('Noah', 'Rodriguez', 'noah.rodriguez@example.com', '+345765432', '1986-06-10', 765345, 3),
('Emma', 'Lopez', 'emma.lopez@example.com', '+456654321', '1991-09-17', 654456, 2),
('Olivia', 'Hernandez', 'olivia.hernandez@example.com', '+567543210', '1994-11-25', 543567, 2),
('Lucas', 'Gonzalez', 'lucas.gonzalez@example.com', '+678432109', '1989-12-31', 432678, 3),
('Mia', 'Perez', 'mia.perez@example.com', '+789321098', '1992-07-04', 321789, 3),
('Ethan', 'Sanchez', 'ethan.sanchez@example.com', '+890210987', '1990-08-12', 210890, 2),
('Isabella', 'Ramirez', 'isabella.ramirez@example.com', '+901109876', '1995-02-23', 109901, 1),
('Mason', 'Torres', 'mason.torres@example.com', '+012098765', '1987-10-06', 098012, 2);


INSERT INTO reserves (state, time_, price, idpayment, date_reserve, idcustomers,idemployees)
VALUES
('Confirmed', '10:00 AM', '100.00',1, '2024-09-10', 1,1),
('Pending', '02:00 PM', '150.00',2, '2024-09-11', 2,1),
('Cancelled', '11:00 AM', '200.00',4, '2024-09-12', 3,1),
('Confirmed', '03:00 PM', '250.00',2, '2024-09-13', 4,2),
('Pending', '09:00 AM', '120.00',1, '2024-09-14', 5,2),
('Confirmed', '01:00 PM', '180.00',3, '2024-09-15', 1,1),
('Cancelled', '04:00 PM', '220.00',4, '2024-09-16', 2,1),
('Pending', '05:00 PM', '130.00',1, '2024-09-17', 3,2),
('Confirmed', '07:00 PM', '170.00',3, '2024-09-18', 4,2),
('Pending', '06:00 PM', '190.00',1, '2024-09-19', 5,2),
('Confirmed', '08:30 AM', '110.00', 1, '2024-09-20', 6, 1),
('Pending', '01:30 PM', '140.00', 2, '2024-09-21', 7, 1),
('Cancelled', '12:00 PM', '160.00', 4, '2024-09-22', 8, 1),
('Confirmed', '09:45 AM', '230.00', 2, '2024-09-23', 9, 2),
('Pending', '10:15 AM', '210.00', 1, '2024-09-24', 10, 2),
('Confirmed', '11:30 AM', '170.00', 3, '2024-09-25', 6, 1),
('Cancelled', '02:45 PM', '240.00', 4, '2024-09-26', 7, 1),
('Pending', '04:00 PM', '125.00', 1, '2024-09-27', 8, 2),
('Confirmed', '05:30 PM', '190.00', 3, '2024-09-28', 9, 2),
('Pending', '06:15 PM', '175.00', 1, '2024-09-29', 10, 2);

