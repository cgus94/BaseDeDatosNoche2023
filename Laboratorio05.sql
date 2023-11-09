-- 1- Crear la tabla 'autos' en una nueva base de datos (Vehiculos) con el siguiente detalle:

-- 	codigo	INTEGER y PK
-- 	marca	VARCHAR(25)
-- 	modelo	VARCHAR(25)
-- 	color	VARCHAR(25)
-- 	anio	INTEGER
-- 	precio	DOUBLE

--  nota: (anio - año) seguramente tu computadora tiene soporte para la letra ñ,
--        pero muchas instalaciones (ej: web host alquilados) pueden que no tenga soporte para esa letra.
-- 		  en programación se acostumbra a usar los caracteres menores a 128 en la tabla ASCII.

create database vehiculos;
use vehiculos;
create table autos(
	codigo int auto_increment primary key, 
    marca varchar(25) not null,   
    modelo varchar(25) not null,
    color varchar(25),
    anio integer,
    precio double
);
-- 2- Agregar el campo patente despues del campo modelo.
alter table autos add patente varchar(7) after modelo;
select * from autos;
-- 3- Cargar la tabla con 15 autos (hacerlo con MySQL WorkBench o el INSERT INTO).
INSERT INTO autos (marca, modelo, patente, color, anio, precio)
VALUES
    ('Toyota', 'Corolla', 'ABC1234', 'Azul', 2020, 20000.00),
    ('Honda', 'Civic', 'XYZ5678', 'Rojo', 2019, 22000.00),
    ('Ford', 'Focus', 'LMN4321', 'Blanco', 2018, 18000.00),
    ('Chevrolet', 'Malibu', 'PQR9876', 'Gris', 2021, 25000.00),
    ('Mazda', 'CX-5', 'STU2468', 'Negro', 2017, 19000.00),
    ('Nissan', 'Altima', 'DEF7890', 'Plata', 2019, 21000.00),
    ('Volkswagen', 'Jetta', 'JKL5432', 'Azul', 2018, 17000.00),
    ('Subaru', 'Outback', 'MNO1234', 'Verde', 2019, 22000.00),
    ('Hyundai', 'Elantra', 'GHI4567', 'Gris', 2020, 20000.00),
    ('Kia', 'Optima', 'UVW7890', 'Blanco', 2018, 19000.00),
    ('Audi', 'A4', 'XYZ1234', 'Rojo', 2021, 28000.00),
    ('BMW', '3 Series', 'ABC5678', 'Negro', 2020, 26000.00),
    ('Mercedes-Benz', 'C-Class', 'PQR2345', 'Plateado', 2019, 24000.00),
    ('Lexus', 'ES', 'STU9012', 'Blanco', 2021, 29000.00),
    ('Tesla', 'Model 3', 'EFG3456', 'Azul', 2022, 35000.00);
    -- 4- Realizar las siguientes consultas:
-- 	a. obtener el precio máximo.
SELECT MAX(precio) FROM autos;
-- 	b. obtener el precio mínimo.
SELECT MIN(precio) from autos;
-- 	c. obtener el precio mínimo entre los años 2010 y 2018.
SELECT MIN(precio) from autos where anio between 2010 and 2018;
-- 	d. obtener el precio promedio.
select avg(precio) precio_promedio from autos;
-- 	e. obtener el precio promedio del año 2016.
select avg(precio) precio_promedio from autos where anio=2016;
-- 	f. obtener la cantidad de autos.
select  count(*) cantidad from autos;
-- 	g. obtener la cantidad de autos que tienen un precio entre $235.000 y $240.000.
select  count(*) cantidad from autos where precio between 235.000 and 240.000;
-- 	h. obtener la cantidad de autos que hay en cada año.
select anio, count(*) cantidad from autos group by anio;
-- 	i. obtener la cantidad de autos y el precio promedio en cada año.
select anio, count(*)cantidad, avg(precio) precio from autos group by anio;
-- 	j. obtener la suma de precios y el promedio de precios según marca.
select marca, SUM(precio) suma_de_precios, avg(precio) promedio_de_precios from autos group by marca;
--  k. informar los autos con el menor precio.
select codigo, marca, modelo, color, anio, precio from autos where precio = (select MIN(precio) from autos);
--  l. informar los autos con el menor precio entre los años 2016 y 2018.
select codigo, marca, modelo, color, anio, precio from autos where precio = (select MIN(precio) from autos) and anio between 2016 and 2018;
--  m. listar los autos ordenados ascendentemente por marca,modelo,año.
select * from autos order by marca ASC, modelo ASC, anio ASC;
--  n. contar cuantos autos hay de cada marca.
select marca, COUNT(*) cantidad_de_autos from autos group by marca;
--  o. borrar los autos del siglo pasado.
delete from autos where anio < 2000;






