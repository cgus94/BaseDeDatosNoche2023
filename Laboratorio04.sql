use Negocio;
-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar campos como parte de la sentencias, es decir de la forma simplificada.
INSERT INTO clientes VALUES
(6,'Juan', 'Pérez', '123456789', 'Calle Principal 123', 'Cliente frecuente'),
(7,'María', 'Gómez', '987654321', 'Avenida Secundaria 456', 'Nuevo cliente'),
(8,'Luis', 'Martínez', '567890123', 'Calle de Ejemplo 789', 'Cliente corporativo'),
(9,'Ana', 'Rodríguez', '345678901', 'Avenida de Prueba 234', 'Cliente VIP'),
(10,'Carlos', 'Sánchez', '210987654', 'Calle de Muestra 567', 'Cliente regular');
-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la sentencias, es decir de la forma extendida. Completar solo los campos nombre, apellido y CUIT.
INSERT INTO clientes (nombre, apellido, cuit) VALUES
('Pedro', 'López', '202938475'),
('Laura', 'García', '395817263'),
('Miguel', 'Fernández', '512739485'),
('Sofía', 'Hernández', '673829104'),
('Luisa', 'Pérez', '924750138');
select * from clientes;
-- 3-	Actualizar el nombre del cliente 1 a Jose.
update clientes set nombre='Jose' where codigo=1;
-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
update clientes set nombre='Pablo' , apellido='Fuentes' , cuit=20210531190 where codigo=3;
-- 5-	Actualizar todos los comentarios NULL  a ''.
update clientes set comentarios='' where comentarios=NULL;
-- 6-	Eliminar los clientes con apellido Perez.
delete from clientes where apellido='Perez';
-- 7-	Eliminar los clientes con CUIT Terminan en 0.
delete from clientes where cuit like '%0';
-- 8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
update articulos set precio=precio*0.2+precio where precio<=50;
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
update articulos set precio=precio*0.15+precio where precio>50;
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
update articulos set precio=precio-precio*0.05 where precio>200;
-- 	11- Eliminar los artículos con stock menor a 0.
delete from articulos where stock=0;
-- 	12- Agregar a la tabla articulos, los campos stockMinimo y stockMaximo. (usar alter table add)
alter table articulos add stockMinimo integer, add stockMaximo integer;
select * from articulos;
--  13- Completar en los registros los valores de los campos stockMinimo y stockMaximo (usar update)
--      teniendo en cuenta que el stock mínimo debe ser menor que el stock máximo.
-- Actualiza 10 registros aleatorios de stock mínimo y máximo para códigos del 1 al 10
UPDATE articulos SET stockMinimo = 1,stockMaximo = 32 WHERE codigo=1 ;
UPDATE articulos SET stockMinimo = 3,stockMaximo = 21 WHERE codigo=2 ;
UPDATE articulos SET stockMinimo = 5,stockMaximo = 22 WHERE codigo=3 ;
UPDATE articulos SET stockMinimo = 8,stockMaximo = 15 WHERE codigo=4 ;
UPDATE articulos SET stockMinimo = 12,stockMaximo = 40 WHERE codigo=5 ;
UPDATE articulos SET stockMinimo = 4,stockMaximo = 20 WHERE codigo=6 ;
UPDATE articulos SET stockMinimo = 21,stockMaximo = 50 WHERE codigo=7 ;
UPDATE articulos SET stockMinimo = 53,stockMaximo = 100 WHERE codigo=8 ;
UPDATE articulos SET stockMinimo = 7,stockMaximo = 18 WHERE codigo=9 ;
UPDATE articulos SET stockMinimo = 10,stockMaximo = 35 WHERE codigo=10 ;
--  14- Lista los articulos que se deben reponer y que cantidad se debe reponer de cada articulos.
--      Tener en cuenta que se debe reponer cuando el stock es menor al stockMinimo y la cantidad de articulos a 
--      reponer es stockMaximo - stock.
alter table articulos add Cantidadareponer integer;
update articulos set Cantidadareponer=stockMaximo - stock where stock<stockMinimo;
select * from articulos where Cantidadareponer!='';
--  15- Calcular el valor de venta de toda la mercaderia que hay en stock.
--  16- Calcular el valor de venta + iva de toda la mercaderia que hay en stock.




