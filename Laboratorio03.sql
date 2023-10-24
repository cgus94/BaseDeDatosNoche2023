use Negocio;
describe articulos;
INSERT INTO articulos(codigo,nombre,precio,stock) VALUES
(6, 'Destornillador Phillips', 7, 70),
(7, 'Cinta métrica de acero', 8.50, 100),
(8, 'Llave inglesa ajustable', 11, 40),
(9, 'Sierra para metales', 18.50, 80),
(10, 'Taladro eléctrico inalámbrico', 120, 60)
;
-- a-	artículos con precio mayor a 100
select * from articulos where precio>100;
-- b-	artículos con precio entre 20 y 40 (usar < y >)
select * from articulos where precio>20 and precio<40;
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
select * from articulos where precio between 40 and 60;
-- d-	artículos con precio = 20 y stock mayor a 30
select * from articulos where precio=20 and stock>30;
-- e-	artículos con precio (12,20,30) no usar IN
select * from articulos where precio=12 or precio=20 or precio=30;
-- f-	artículos con precio (12,20,30) usar el IN
select * from articulos where precio IN (12,20,30);
-- g-	artículos que su precio no sea (12,20,30)
select * from articulos where precio NOT IN (12,20,30);
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
select * from articulos where precio*0.21+precio>100;
-- i-   listar nombre y descripción de los artículos que no cuesten $100
alter table articulos add descripcion varchar(150);
select nombre,descripcion from articulos where precio!=100;
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
select * from articulos where nombre like '%lampara%';
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga la letra 'a'
select * from articulos where precio<200 and nombre  not like '%a%';
-- 	2- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
select * from articulos order by precio desc,nombre;
-- 	3- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
alter table articulos add precioconIVA double;
set sql_safe_updates=0;	
update articulos set precioconiva=precio*0.21+precio;
select * from articulos;
-- 	4- Listar todos los artículos incluyendo una columna denominada 'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y es 3, 
--     el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
alter table articulos add cantidad_de_cuotas char(1);
update articulos set cantidad_de_cuotas=3;
alter table articulos add valor_de_cuota double;
update articulos set valor_de_cuota=precio/3+precio*0.05;
select * from articulos;