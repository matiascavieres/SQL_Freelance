use sql_prueba_p3;

CREATE TABLE Proveedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    personaContacto VARCHAR(45),
    domicilio VARCHAR(45),
    codPostal VARCHAR(5),
    poblacion VARCHAR(45),
    telefono VARCHAR(15),
    fax VARCHAR(15),
    email VARCHAR(45),
    cifnif VARCHAR(12)
);

CREATE TABLE Categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(45)
);

CREATE TABLE Ubicacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ubicacion VARCHAR(45),
    planta VARCHAR(45)
);

CREATE TABLE Articulo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(45),
    marca VARCHAR(45),
    modelo VARCHAR(45),
    cantidad INT,
    fechaCompra DATE,
    Importe DECIMAL(10, 2),
    Proveedor_id INT,
    Categoria_id INT,
    FOREIGN KEY (Proveedor_id) REFERENCES Proveedor(id),
    FOREIGN KEY (Categoria_id) REFERENCES Categoria(id)
);

CREATE TABLE Imagen (
    idArticulo INT,
    imagen MEDIUMBLOB,
    FOREIGN KEY (idArticulo) REFERENCES Articulo(id)
);

CREATE TABLE Elemento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Ubicacion_id INT,
    Articulo_id INT,
    numSerie VARCHAR(45),
    cantidad INT,
    baja BOOLEAN,
    fechaBaja DATE,
    motivoBaja VARCHAR(200),
    codigoBarras MEDIUMBLOB,
    Prestatario_id INT,
    FOREIGN KEY (Ubicacion_id) REFERENCES Ubicacion(id),
    FOREIGN KEY (Articulo_id) REFERENCES Articulo(id)
);

CREATE TABLE Prestario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nif VARCHAR(9),
    domicilio VARCHAR(45),
    codPostal VARCHAR(5),
    poblacion VARCHAR(45),
    telefono VARCHAR(15),
    email VARCHAR(45)
);
