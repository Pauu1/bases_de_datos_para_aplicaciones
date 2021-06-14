USE tienda_ac;
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

