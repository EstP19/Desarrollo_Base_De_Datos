#Creacion de la base de datos
#Paso 1
drop database BD_inventario;
CREATE DATABASE BD_inventario;

#Paso 2

USE BD_inventario;

#Creacion de las tablas
#Paso 3

CREATE TABLE type_document(
idtype_document INT PRIMARY KEY AUTO_INCREMENT,
type_document VARCHAR(2)
);
CREATE TABLE payment(
    idpayment INT PRIMARY KEY AUTO_INCREMENT,
    pay_method VARCHAR(50)
);


CREATE TABLE employees (
idemployees INT PRIMARY KEY AUTO_INCREMENT,
name_ VARCHAR(100),
createdAt DATETIME,
updateAt DATETIME,
lastname VARCHAR(100),
birthday DATE,
email VARCHAR(100) UNIQUE,
phone VARCHAR(20),
address VARCHAR(255),
occupation VARCHAR(100),
date_recruitment DATE,
document INT UNIQUE,
idtype_document INT,
FOREIGN KEY (idtype_document) references type_document(idtype_document)
);

CREATE TABLE customers (
    idcustomers INT PRIMARY KEY AUTO_INCREMENT,
    name_ VARCHAR(100) NOT NULL,
    lastname VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    birthday DATE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
    document INT UNIQUE,
    idtype_document INT,
    FOREIGN KEY (idtype_document) references type_document(idtype_document)
);

CREATE TABLE reserves (
    idreserves INT PRIMARY KEY AUTO_INCREMENT,
    state VARCHAR(100) NOT NULL,
    time_ VARCHAR(20),
    price VARCHAR(100) ,
    idpayment INT,
    date_reserve DATE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	idcustomers INT,
    idemployees INT,
    FOREIGN KEY (idcustomers) REFERENCES customers(idcustomers),
    FOREIGN KEY (idpayment) REFERENCES payment(idpayment),
    FOREIGN KEY (idemployees) REFERENCES employees(idemployees)
);





