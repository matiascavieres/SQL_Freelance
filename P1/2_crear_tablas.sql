-- Crear tabla Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    CodigoCliente INT PRIMARY KEY,
    NombreCliente VARCHAR(45),
    Telefono VARCHAR(15)
);

-- Crear tabla Dispositivo
CREATE TABLE IF NOT EXISTS Dispositivo (
    CodigoDispositivo INT PRIMARY KEY,
    Descripcion VARCHAR(45)
);

-- Crear tabla Marca
CREATE TABLE IF NOT EXISTS Marca (
    CodigoMarca INT PRIMARY KEY,
    NombreMarca VARCHAR(45),
    CodigoDispositivo INT,
    FOREIGN KEY (CodigoDispositivo) REFERENCES Dispositivo(CodigoDispositivo)
);

-- Crear tabla Modelo
CREATE TABLE IF NOT EXISTS Modelo (
    CodigoModelo INT PRIMARY KEY,
    NombreModelo VARCHAR(45),
    CodigoMarca INT,
    FOREIGN KEY (CodigoMarca) REFERENCES Marca(CodigoMarca)
);

-- Crear tabla Taller
CREATE TABLE IF NOT EXISTS Taller (
    CodigoTaller INT PRIMARY KEY,
    Descripcion VARCHAR(45),
    Detalles VARCHAR(45),
    Estado VARCHAR(10),
    Estado2 VARCHAR(10)
);

-- Crear tabla Producto
CREATE TABLE IF NOT EXISTS Producto (
    CodigoProducto INT PRIMARY KEY,
    Descripcion VARCHAR(45),
    Detalles VARCHAR(45),
    MarcaModelo_Codigo INT
);

-- Crear tabla Repuesto
CREATE TABLE IF NOT EXISTS Repuesto (
    CodigoRepuesto INT PRIMARY KEY,
    Descripcion VARCHAR(45)
);

-- Crear tabla Insumo
CREATE TABLE IF NOT EXISTS Insumo (
    CodigoInsumo INT PRIMARY KEY,
    Descripcion VARCHAR(45)
);

-- Crear tabla Accesorio
CREATE TABLE IF NOT EXISTS Accesorio (
    CodigoAccesorio INT PRIMARY KEY,
    Descripcion VARCHAR(45)
);

-- Crear tabla Producto_has_Taller (relación entre Producto y Taller)
CREATE TABLE IF NOT EXISTS Producto_has_Taller (
    Producto_Accesorio_CodigoProducto INT,
    Producto_Insumo_CodigoProducto INT,
    Producto_Repuesto_CodigoProducto INT,
    Taller_NumeroOrden INT,
    Cliente_CodigoCliente INT,
    PRIMARY KEY (Producto_Accesorio_CodigoProducto, Producto_Insumo_CodigoProducto, Producto_Repuesto_CodigoProducto, Taller_NumeroOrden),
    FOREIGN KEY (Producto_Accesorio_CodigoProducto) REFERENCES Producto(CodigoProducto),
    FOREIGN KEY (Producto_Insumo_CodigoProducto) REFERENCES Producto(CodigoProducto),
    FOREIGN KEY (Producto_Repuesto_CodigoProducto) REFERENCES Producto(CodigoProducto),
    FOREIGN KEY (Cliente_CodigoCliente) REFERENCES Cliente(CodigoCliente)
);

