-- Crear tabla Proveedor
CREATE TABLE IF NOT EXISTS Proveedor (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    personaContacto VARCHAR(45),
    domicilio VARCHAR(45),
    codPostal VARCHAR(5),
    poblacion VARCHAR(45),
    telefono VARCHAR(15),
    fax VARCHAR(15),
    email VARCHAR(45),
    cifNif VARCHAR(12)
);

-- Crear tabla Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    id INT PRIMARY KEY,
    descripcion VARCHAR(45)
);

-- Crear tabla Ubicacion
CREATE TABLE IF NOT EXISTS Ubicacion (
    id INT PRIMARY KEY,
    ubicacion VARCHAR(45),
    planta VARCHAR(45)
);

-- Crear tabla Articulo
CREATE TABLE IF NOT EXISTS Articulo (
    id INT PRIMARY KEY,
    descripcion VARCHAR(45),
    marca VARCHAR(45),
    modelo VARCHAR(45),
    cantidad INT,
    fechaCompra DATE,
    Importe DECIMAL(10,2),
    Proveedor_id INT,
    Categoria_id INT,
    FOREIGN KEY (Proveedor_id) REFERENCES Proveedor(id),
    FOREIGN KEY (Categoria_id) REFERENCES Categoria(id)
);

-- Crear tabla Imagen
CREATE TABLE IF NOT EXISTS Imagen (
    idArticulo INT,
    imagen MEDIUMBLOB,
    FOREIGN KEY (idArticulo) REFERENCES Articulo(id)
);

-- Crear tabla Elemento
CREATE TABLE IF NOT EXISTS Elemento (
    id INT PRIMARY KEY,
    Ubicacion_id INT,
    Articulo_id INT,
    numSerie VARCHAR(45),
    cantidad INT,
    baja BOOLEAN,
    fechaBaja DATE,
    motivoBaja VARCHAR(200),
    codigoBarras MEDIUMBLOB,
    Prestario_id INT,
    FOREIGN KEY (Ubicacion_id) REFERENCES Ubicacion(id),
    FOREIGN KEY (Articulo_id) REFERENCES Articulo(id)
);

-- Crear tabla Prestario
CREATE TABLE IF NOT EXISTS Prestario (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    nif VARCHAR(9),
    domicilio VARCHAR(45),
    codPostal VARCHAR(5),
    poblacion VARCHAR(45),
    telefono VARCHAR(15),
    email VARCHAR(45)
);
