---1 Mostrar todos los productos dentro de la categoria electro junto con todos los detalles.
select * 
from stg.product_master1
where categoria = 'Electro'

--- 2 Cuales son los producto producidos en China?
select * 
from stg.product_master1
where origen = 'China'

---3 Mostrar todos los productos de Electro ordenados por nombre.
select *
from stg.product_master1
where categoria = 'Electro'
ORDER BY nombre asc

---4 Cuales son las TV que se encuentran activas para la venta?
select * 
from stg.product_master1
where subcategoria = 'TV' and is_active = '1'

---5. Mostrar todas las tiendas de Argentina ordenadas por fecha de apertura de las mas antigua a la mas nueva.
select *
from stg.store_master1
where pais = 'Argentina'
ORDER BY fecha_apertura asc

--- 6 Cuales fueron las ultimas 5 ordenes de ventas?
select TOP 5 *
from stg.order_line_sale1
ORDER BY FECHA DESC

-- 7 Mostrar los primeros 10 registros de el conteo de trafico por Super store ordenados por fecha.
select TOP 10 *
from stg.super_store_count1
ORDER BY FECHA DESC

--- 8. Cuales son los producto de electro que no son Soporte de TV ni control remoto.
select * 
from stg.product_master1
where categoria = 'Electro' 
and subsubcategoria != 'Soporte' and subsubcategoria != 'Control remoto'

--- 9 Mostrar todas las lineas de venta donde el monto sea mayor a $100.000 solo para transacciones en pesos.
select *
from stg.order_line_sale1
WHERE venta > 100000
AND moneda = 'ARS'

---10 Mostrar todas las lineas de ventas de Octubre 2022.
select *
from stg.order_line_sale1
where fecha BETWEEN '2022-10-01' and '2022-10-31'

--- 11 Mostrar todos los productos que tengan EAN.
select * 
from stg.product_master1
where EAN IS NOT NULL

---12 Mostrar todas las lineas de venta que que hayan sido vendidas entre 1 de Octubre de 2022 y 10 de Noviembre de 2022.
select *
from stg.order_line_sale1
where fecha BETWEEN '2022-10-01' and '2022-11-10'
