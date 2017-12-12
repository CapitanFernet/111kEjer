/* EJ1 Insertar 5 nuevos clientes en la base de datos*/
-- insert into cliente (NRO_CLIENTE, APELLIDO, NOMBRE, DIRECCION, TELEFONO) values (25, 'TAGLIAFICO', 'NICOLAS', 'AVELLANEDA 24', '154257878')
-- select * from cliente

/* EJ1 Insertar 2 nuevos productos en la base de datos */
-- select * from producto
-- insert into producto (COD_PRODUCTO, DESCRIPCION, PRECIO) values (24, 'Celular Motorola Moto G4 Plus', 6999.99)

/* EJ1 Eliminar el producto cuyo cod_producto es 8 (Heladera Ariston MT451 NF 450L),
	intentar hacer el borrado directamente y ver que resultado obtenemos. Luego, eliminar en
    ItemFactura las facturas cuyo cod_producto es 8 antes de hacer el borrado del producto.
    Xq hay que proceder de esta manera? */
-- select * from producto
-- delete from producto where COD_PRODUCTO=8 /* Error code: 1451. Cannot delete a parent row: a foreign key constraint fails itemfactura*/
-- select * from itemfactura
-- delete from itemfactura where COD_PRODUCTO=8
