drop database if exists Agenda;
create database Agenda;
use Agenda;
create table agenda(
codigo integer auto_increment primary key,
nombre varchar(20) not null,
domicilio varchar(30),
telefono char(11)
);
show tables;
describe agenda;
INSERT INTO agenda (nombre, domicilio, telefono)
VALUES
    ('Juan Pérez', 'Calle Florida 123', '41234567'),
    ('María González', 'Avenida 9 de Julio 456', '42345678'),
    ('Carlos Rodríguez', 'Calle Corrientes 789', '43456789'),
    ('Laura Sánchez', 'Avenida Rivadavia 1011', '44567890'),
    ('Roberto López', 'Calle San Martín 1314', '45678901'),
    ('Ana Martínez', 'Avenida Belgrano 1516', '46789012'),
    ('Pedro Ramírez', 'Calle Sarmiento 1718', '47890123'),
    ('Sofía Torres', 'Avenida Pueyrredón 1920', '48901234');
    select * from agenda;

