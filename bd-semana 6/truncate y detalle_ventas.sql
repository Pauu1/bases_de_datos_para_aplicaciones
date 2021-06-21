
USE tienda_ac;
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE detalle_ventas;


INSERT INTO detalle_ventas(id_detalle_venta,cantidad_producto,precio,id_venta,id_producto)
 VALUES 
 (1,"3","100",2,1),
 (2,"7","50",1,3),
 (3,"1","15",1,2),
 (4,"3","80",2,2),
 (5,"2","10",3,2),
 (6,"1","200",1,3);
