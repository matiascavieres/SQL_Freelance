-- Insertar datos en Cliente
INSERT INTO Cliente (CodigoCliente, NombreCliente, Telefono) 
VALUES (1, 'Juan Perez', '123456789'), (2, 'Maria Lopez', '987654321');

-- Insertar datos en Dispositivo
INSERT INTO Dispositivo (CodigoDispositivo, Descripcion) 
VALUES (1, 'Celular'), (2, 'Tablet');

-- Insertar datos en Marca
INSERT INTO Marca (CodigoMarca, NombreMarca, CodigoDispositivo) 
VALUES (1, 'Samsung', 1), (2, 'Apple', 2);

-- Insertar datos en Modelo
INSERT INTO Modelo (CodigoModelo, NombreModelo, CodigoMarca) 
VALUES (1, 'Galaxy S21', 1), (2, 'iPad Pro', 2);

-- Insertar datos en Taller
INSERT INTO Taller (CodigoTaller, Descripcion, Detalles, Estado, Estado2) 
VALUES (1, 'Reparación Celular', 'Pantalla rota', 'Pendiente', 'Nuevo'), 
       (2, 'Reparación Tablet', 'Batería', 'Completado', 'Viejo');

-- Insertar datos en Producto
INSERT INTO Producto (CodigoProducto, Descripcion, Detalles, MarcaModelo_Codigo) 
VALUES (1, 'Pantalla Samsung', 'Repuesto original', 1), 
       (2, 'Batería Apple', 'Repuesto original', 2);

-- Insertar datos en Repuesto
INSERT INTO Repuesto (CodigoRepuesto, Descripcion) 
VALUES (1, 'Pantalla'), (2, 'Batería');

-- Insertar datos en Insumo
INSERT INTO Insumo (CodigoInsumo, Descripcion) 
VALUES (1, 'Pegamento'), (2, 'Cable de carga');

-- Insertar datos en Accesorio
INSERT INTO Accesorio (CodigoAccesorio, Descripcion) 
VALUES (1, 'Funda'), (2, 'Cargador');

-- Insertar datos en Producto_has_Taller
INSERT INTO Producto_has_Taller 
(Producto_Accesorio_CodigoProducto, Producto_Insumo_CodigoProducto, Producto_Repuesto_CodigoProducto, Taller_NumeroOrden, Cliente_CodigoCliente) 
VALUES (1, 1, 1, 1, 1), (2, 2, 2, 2, 2);
