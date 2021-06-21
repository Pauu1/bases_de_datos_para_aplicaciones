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

CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL
)ENGINE=INNODB;

INSERT INTO clientes
  VALUES (1,"paulina","tello","perez","21301821 ","paulina@perez.com"," 2021-02-10 08-21-15"),
  (2,"fernando ","alva","gonzales"," 173470123 ","fernando@alva.com"," 2021-09-29 12-55-09 "),
  (3,"francisco","aguirre","salinas"," 3429021","francisco@salinas.com","2021-02-21 19-12-12 ");
  
  

CREATE TABLE ventas(
id_venta int NOT NULL PRIMARY KEY,
fecha_venta TIMESTAMP,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;


INSERT INTO ventas
 VALUES (1,"2021-02-10 08-21-15",04,1),
(2,"2021-09-29 12-55-09 ",28,2),
(3,"2021-02-21 19-12-12",53,3),
(4,"2020-11-20 08-32-18",45,1),
(5,"2021-10-20 06-20-18",84,2),
(6,"2020-09-20 01-34-18",14,3),
(7,"2020-08-20 05-32-18",02,1),
(8,"2020-07-20 12-12-18",18,2),
(9,"2021-06-20 10-32-18",15,3),
(10,"2020-05-20 01-32-18",81,1);


CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
total_x_producto  float GENERATED ALWAYS AS (cantidad_producto * precio),
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;


