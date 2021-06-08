CREATE DATABASE IF NOT EXISTS pedidos;
USE pedidos;
CREATE TABLE IF NOT EXISTS robots(nombre varchar(20), numero varchar (20));
CREATE DATABASE IF NOT EXISTS users;
USE users;
CREATE TABLE IF NOT EXISTS users(username varchar(20), password varchar (20));
INSERT INTO users(username, password) VALUES ('pepe', 'pepeadmin'), ('admin', 'R0b0t1cs!');