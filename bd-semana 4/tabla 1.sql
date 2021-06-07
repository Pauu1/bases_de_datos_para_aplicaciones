
USE tienda_acme;
CREATE TABLE proveedores(
id_proveedor int,
proveedor varchar(60),
nombre_contacto varchar(40),
telefono_contacto VARCHAR(50),
email_contacto VARCHAR(50),
fecha_actualizacion TIMESTAMP,
primary key(id_proveedor)
)engine=InnoDB;

create table direcciones_proveedores (
id_direccion INT NOT NULL PRIMARY KEY,
calle varchar(50),
colonia varchar(50),
cp varchar(20),
municipio varchar(50),
pais varchar(50),
no_exterior VARCHAR(50),
no_interior VARCHAR(50),
fecha_actualizacion TIMESTAMP,
id_proveedor INT,
FOREIGN KEY (id_proveedor) REFERENCES 
proveedores(id_proveedor)
)engine=InnoDB;