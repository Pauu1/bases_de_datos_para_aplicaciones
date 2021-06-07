USE tienda_acme;
SELECT * FROM direcciones_proveedores;
SELECT 
direcciones_proveedores.id_direccion,direcciones_proveedores.calle , direcciones_proveedores.colonia , direcciones_proveedores.cp , direcciones_proveedores.municipio, direcciones_proveedores.pais, direcciones_proveedores.no_exterior,direcciones_proveedores.no_interior, direcciones_proveedores.id_proveedor, proveedores.proveedor, proveedores.nombre_contacto, proveedores.telefono_contacto, proveedores.email_contacto, proveedores.fecha_actualizacion
FROM direcciones_proveedores, proveedores
WHERE direcciones_proveedores.id_proveedor = proveedores.id_proveedor;

CREATE VIEW proveedores_direcciones_proveedores AS 
SELECT 
direcciones_proveedores.id_direccion,direcciones_proveedores.calle , direcciones_proveedores.colonia , direcciones_proveedores.cp , direcciones_proveedores.municipio, direcciones_proveedores.pais, direcciones_proveedores.no_exterior,direcciones_proveedores.no_interior, direcciones_proveedores.id_proveedor, proveedores.proveedor, proveedores.nombre_contacto, proveedores.telefono_contacto, proveedores.email_contacto, proveedores.fecha_actualizacion
FROM direcciones_proveedores, proveedores
WHERE direcciones_proveedores.id_proveedor = proveedores.id_proveedor;