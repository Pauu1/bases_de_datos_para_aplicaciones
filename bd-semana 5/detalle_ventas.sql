USE tienda_ac;
CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
total_x_producto  VARCHAR(50) NOT NULL,
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;

INSERT INTO detalle_ventas
 VALUES ("1","43",2,5,1,1),
 ("2","01243",8,9,1,1),
 ("3","13071",6,7,2,2),
 ("4","30131",2,8,2,2),
 ("5","84721",8,5,3,3),
 ("6","11023",6,10,3,3);

