CREATE DATABASE IF NOT EXISTS pedidos;
USE pedidos;
CREATE TABLE IF NOT EXISTS robots(nombre varchar(20), numero varchar (20));
CREATE DATABASE IF NOT EXISTS users;
USE users;
CREATE TABLE IF NOT EXISTS users(username varchar(20), password varchar (50));
INSERT INTO users(username, password) VALUES ('pepe', 'f25a2fc72690b780b2a14e140ef6a9e0'), ('root', 'R0b0t1cs!'); 