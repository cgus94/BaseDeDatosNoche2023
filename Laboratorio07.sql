-- Usando la base de datos negocio tabla facturas.
-- 1- 	Informar total facturado (suma de monto) en cada día.
use Negocio;
select fecha, sum(monto) total_facturado from facturas group by day(fecha);
-- 2-	Informar total facturado (suma de monto) en cada mes.
select fecha, sum(monto) total_facturado from facturas group by month(fecha);
-- 3-	Informar total facturado (suma de monto) y cuantas facturas (count(*)) se realizaron en cada año.
select year(fecha) anio, count(*) numero_facturas,sum(monto) total_facturado from facturas group by year(fecha);

-- Usando la base de datos articulos.
-- 1- Informar cantidad de televisores.
select sum(stock) cantidad_televisores from articulos where nombre like '%televisor%';
-- 2- Informar cantidad de televisores segun marca.
select sum(stock) cantidad_televisores from articulos where nombre like '%televisor%' group by marca;
-- 3- Informar cual es el televisor más barato.
select nombre,min(precio) precio_televisor_mas_barato from articulos  where nombre like '%televisor%';
-- 4- Aumentar un 15% los articulos de la marca 'LG'.
update articulos set precio=precio+precio*0.15 where marca='LG';
-- 5- Bajar un 4% los aires acondicionados.
update articulos set precio=precio-precio*0.04 where nombre like '%aire%acondicionado%';
-- 6- Listar los articulos ordenaros por marca,descripción,nombre,precio.
select * from articulos order by marca ASC, descripcion ASC, nombre ASC,precio;
-- 7- Cantidad de articulos según marca y descripción.
select marca,descripcion, sum(stock) cantidad_articulos from articulos group by marca asc;
-- 8- Mostrar el producto mas caro de la marca 'LG'
select nombre, max(precio) precio_mas_caro_lg from articulos where marca='LG';