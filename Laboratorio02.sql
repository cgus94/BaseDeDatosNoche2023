drop database if exists Negocio;
create database Negocio;
show databases;
use Negocio;
create table clientes(
codigo int auto_increment primary key,
nombre		varchar(20) not null,
apellido	varchar(20) not null,
cuit		char(13),
direccion 	varchar(50),
comentarios varchar(140));
create table facturas(
letra		char(1),
numero		integer,
fecha		date,
monto		double,
primary key(letra,numero)
);
create table articulos(
codigo		integer auto_increment primary key,
nombre 		varchar(50),
precio		double,
stock		integer
);
INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) 
VALUES ('Maria', 'Rodriguez', '20123456789', 'Calle 1234, Buenos Aires, Argentina', 'Cliente nuevo'),
('Juan', 'Perez', '20234567890', 'Calle 5678, Buenos Aires, Argentina',''),
('Ana', 'Gomez', '20345678901', 'Calle 9012, Buenos Aires, Argentina',''),
('Carlos', 'Fernandez', '20456789012', 'Calle 3456, Buenos Aires, Argentina', 'Cliente nuevo'),
('Sofia', 'Gonzalez', '20567890123', 'Calle 7890, Buenos Aires, Argentina','')
;
INSERT INTO facturas (letra, numero, fecha, monto) VALUES
('A', 100, '2022-01-01', 100.50),
('A', 200, '2022-01-02', 200.75),
('A', 300, '2022-01-03', 150.25),
('B', 400, '2022-01-04', 300.00),
('C', 100, '2022-01-01', 50.75)
;
INSERT INTO articulos(codigo,nombre,precio,stock) VALUES
(1, 'Serrucho de mano', 16.99, 50),
(2, 'Pistola de silicona caliente', 11.99, 20),
(3, 'Escalera de aluminio de 6 pies', 39.99, 60),
(4, 'Tornillos para madera de 2-1/2 pulgadas', 9.50, 80),
(5, 'Candado de seguridad resistente', 8.99, 100)
;
show tables;
describe clientes;
describe facturas;
describe articulos;
select * from clientes;
select * from facturas;
select * from articulos;
