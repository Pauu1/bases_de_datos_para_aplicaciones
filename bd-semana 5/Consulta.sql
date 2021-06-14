USE tienda_ac;
CREATE TABLE productos(
id_producto int NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
descripcion VARCHAR(4000) NOT NULL,
precio_unitario float NOT NULL,
existencias int NOT NULL
)ENGINE=INNODB;

INSERT INTO productos
 VALUES ("1","tabique","tamaño",3,10),
 ("2","block","modelo",0,8),
 ("3","madera","tipo",3,5);
