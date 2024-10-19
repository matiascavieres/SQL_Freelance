-- Insertar datos en Proveedor
INSERT INTO Proveedor (id, nombre, personaContacto, domicilio, codPostal, poblacion, telefono, fax, email, cifNif)
VALUES 
(1, 'Proveedor A', 'Juan Perez', 'Calle 123', '12345', 'Ciudad X', '987654321', '123456', 'juan@example.com', 'CIF1234'),
(2, 'Proveedor B', 'Maria Lopez', 'Avenida 456', '54321', 'Ciudad Y', '123456789', '654321', 'maria@example.com', 'CIF5678');

-- Insertar datos en Categoria
INSERT INTO Categoria (id, descripcion)
VALUES 
(1, 'Electrónica'),
(2, 'Muebles');

-- Insertar datos en Ubicacion
INSERT INTO Ubicacion (id, ubicacion, planta)
VALUES 
(1, 'Almacén 1', 'Planta Baja'),
(2, 'Almacén 2', 'Planta Alta');

-- Insertar datos en Articulo
INSERT INTO Articulo (id, descripcion, marca, modelo, cantidad, fechaCompra, Importe, Proveedor_id, Categoria_id)
VALUES 
(1, 'Laptop', 'Dell', 'Inspiron', 100, '2023-01-10', 800.00, 1, 1),
(2, 'Escritorio', 'Ikea', 'Moderno', 3, '2023-02-15', 150.00, 2, 2),
(3, 'Monitor', 'Samsung', '24 pulgadas', 70, '2023-03-10', 200.00, 1, 1);

-- Insertar datos en Imagen
INSERT INTO Imagen (idArticulo, imagen)
VALUES 
(1, NULL), (2, NULL), (3, NULL);

-- Insertar datos en Elemento
INSERT INTO Elemento (id, Ubicacion_id, Articulo_id, numSerie, cantidad, baja, fechaBaja, motivoBaja, codigoBarras, Prestario_id)
VALUES 
(1, 1, 1, 'SN12345', 10, FALSE, NULL, NULL, NULL, NULL),
(2, 2, 2, 'SN54321', 3, FALSE, NULL, NULL, NULL, NULL),
(3, 1, 3, 'SN67890', 7, FALSE, NULL, NULL, NULL, NULL);

-- Insertar datos en Prestario
INSERT INTO Prestario (id, nombre, nif, domicilio, codPostal, poblacion, telefono, email)
VALUES 
(1, 'Empresa XYZ', '12345678A', 'Calle Falsa 123', '12345', 'Ciudad Z', '123123123', 'empresa@xyz.com');

Select * from articulo;