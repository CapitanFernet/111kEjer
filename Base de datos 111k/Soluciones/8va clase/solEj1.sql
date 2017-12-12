/*EJ1 Muestra los datos de todos los productos con precios inferiores a  $999 
select * from producto where PRECIO<999
*/

/*EJ1 Lista los productos cuya cantidad vendida (en el total de las facturas)  es superior a 5
select itf.COD_PRODUCTO, sum(itf.CANTIDAD) as cant_vendida, prod.DESCRIPCION, prod.PRECIO from itemfactura itf join producto prod on itf.COD_PRODUCTO=prod.COD_PRODUCTO group by itf.COD_PRODUCTO having sum(itf.CANTIDAD)>5
*/

/*EJ1 Listar los productos que no se han vendido nunca
select * from producto prod where prod.COD_PRODUCTO not in (select COD_PRODUCTO from itemfactura itf where itf.COD_PRODUCTO is not null)
*/

/*EJ1 Listar los clientes (todos sus datos) que no se le han realizado ninguna venta 
 (clientes que no tienen ninguna factura asociada). Al listado ordenarlo por apellido y nombre
  en forma descendente
select * from cliente cli where cli.NRO_CLIENTE not in (select NRO_CLIENTE from factura where factura.NRO_CLIENTE is not null) order by cli.APELLIDO desc, cli.NOMBRE desc
*/

/*EJ1 Indicar el código y precio de los productos que en alguna factura se ha vendido 
más de 2 unidades. El listado ordenarlo por precio del producto
select prod.COD_PRODUCTO, prod.PRECIO from producto prod join itemfactura itf on itf.COD_PRODUCTO=prod.COD_PRODUCTO where itf.CANTIDAD>2
*/
-- 20, 5, 6, 7, 8, 9, 10, 11, 12, 16, 4, 22 son los que debería retornar