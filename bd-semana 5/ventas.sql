USE tienda_ac;
CREATE TABLE ventas(
id_venta int NOT NULL PRIMARY KEY,
fecha_venta TIMESTAMP,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

INSERT INTO ventas
 VALUES ("1","2021-02-10 08-21-15",04,1),
("2","2021-09-29 12-55-09 ",28,2),
("3","2021-02-21 19-12-12",53,3);

