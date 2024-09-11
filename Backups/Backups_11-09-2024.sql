#Creacion de la base de datos
#Paso 1
DROP DATABASE BD_inventario;
CREATE DATABASE BD_inventario;

#Paso 2

USE BD_inventario;

#Creacion de las tablas
#Paso 3

CREATE TABLE type_document(
idtype_document INT AUTO_INCREMENT UNIQUE,
type_document VARCHAR(2),
PRIMARY KEY(idtype_document)
);

CREATE TABLE payment(
    idpayment INT AUTO_INCREMENT UNIQUE,
    pay_method VARCHAR(50),
    PRIMARY KEY(idpayment)
);

CREATE TABLE employees (
idemployees INT AUTO_INCREMENT UNIQUE,
name_ VARCHAR(100),
lastname VARCHAR(100),
birthday DATE,
email VARCHAR(100),
phone VARCHAR(20),
address VARCHAR(255),
occupation VARCHAR(100),
date_recruitment DATE,
document_number INT UNIQUE,
idtype_document INT,
createdAt DATETIME,
updateAt DATETIME,
PRIMARY KEY(idemployees),
FOREIGN KEY (idtype_document) references type_document(idtype_document)
);

CREATE TABLE customers (
    idcustomers INT AUTO_INCREMENT UNIQUE,
    name_ VARCHAR(100) NOT NULL,
    lastname VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    birthday DATE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
    document_NUMBER INT UNIQUE,
    idtype_document INT,
    PRIMARY KEY(idcustomers),
    FOREIGN KEY (idtype_document) references type_document(idtype_document)
);

CREATE TABLE reserves (
    idreserves INT AUTO_INCREMENT UNIQUE,
    state VARCHAR(100) NOT NULL,
    time_ VARCHAR(15) NOT NULL,
    price DECIMAL (10, 2) ,
    idpayment INT,
    date_reserve DATE NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	idcustomers INT,
    idemployees INT,
    PRIMARY KEY(idreserves),
    FOREIGN KEY (idcustomers) REFERENCES customers(idcustomers),
    FOREIGN KEY (idpayment) REFERENCES payment(idpayment),
    FOREIGN KEY (idemployees) REFERENCES employees(idemployees)
);

CREATE TABLE reservation_history (
idreservation_history INT AUTO_INCREMENT,
idcustomers INT,
idreserves INT,
createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
_comment TEXT,
PRIMARY KEY (idreservation_history),
FOREIGN KEY (idcustomers) REFERENCES customers(idcustomers),
FOREIGN KEY (idreserves) REFERENCES reserves(idreserves),
UNIQUE (idcustomers, idreserves)
);





