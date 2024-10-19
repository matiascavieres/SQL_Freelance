-- Insertar datos en la tabla Proveedor
INSERT INTO Proveedor (nombre, personaContacto, domicilio, codPostal, poblacion, telefono, fax, email, cifnif)
VALUES ('Proveedor A', 'Juan Perez', 'Calle 123', '28001', 'Madrid', '123456789', '987654321', 'juan@proveedora.com', 'A12345678'),
       ('Proveedor B', 'Maria Lopez', 'Avenida 456', '28002', 'Barcelona', '234567890', '876543210', 'maria@proveedorb.com', 'B23456789');

-- Insertar datos en la tabla Categoria
INSERT INTO Categoria (descripcion) 
VALUES ('Electrónica'), ('Mecánica');

-- Insertar datos en la tabla Ubicacion
INSERT INTO Ubicacion (ubicacion, planta)
VALUES ('Almacén Central', 'Planta 1'), ('Depósito Norte', 'Planta 2');

-- Insertar datos en la tabla Articulo
INSERT INTO Articulo (descripcion, marca, modelo, cantidad, fechaCompra, Importe, Proveedor_id, Categoria_id)
VALUES ('Laptop', 'HP', 'Envy', 10, '2024-01-10', 1200.00, 1, 1),
       ('Impresora', 'Canon', 'Pixma', 3, '2023-05-20', 300.00, 1, 1),
       ('Tornillo', 'ACME', 'T12', 50, '2024-03-15', 0.50, 2, 2),
       ('Motor', 'Bosch', 'MX200', 7, '2022-11-25', 200.00, 2, 2);

-- Insertar datos en la tabla Elemento
INSERT INTO Elemento (Ubicacion_id, Articulo_id, numSerie, cantidad, baja, fechaBaja, motivoBaja, Prestatario_id)
VALUES (1, 1, 'SN123456', 2, 0, NULL, NULL, 1),
       (2, 3, 'SN654321', 20, 0, NULL, NULL, 2);
