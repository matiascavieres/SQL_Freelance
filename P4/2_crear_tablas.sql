-- Crear tabla Facultad
CREATE TABLE facultad (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    direccion VARCHAR(40) NOT NULL
);

-- Crear tabla Carrera
CREATE TABLE carrera (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    duracion_anos INTEGER NOT NULL,
    creditos INTEGER NOT NULL,
    id_facultad INTEGER,
    FOREIGN KEY (id_facultad) REFERENCES facultad(id)
);

-- Crear tabla Estudiante
CREATE TABLE estudiante (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    creditos INTEGER NOT NULL,
    semestre INTEGER NOT NULL,
    promedio INTEGER NOT NULL
);

-- Crear tabla Estudiante_Carrera
CREATE TABLE estudiante_carrera (
    id_estudiante INTEGER,
    id_carrera INTEGER,
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id),
    FOREIGN KEY (id_carrera) REFERENCES carrera(id)
);

-- Crear tabla Profesor
CREATE TABLE profesor (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    jornada INTEGER NOT NULL,
    salario INTEGER NOT NULL
);

-- Crear tabla Decano
CREATE TABLE decano (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    salario INTEGER NOT NULL,
    id_facultad INTEGER,
    FOREIGN KEY (id_facultad) REFERENCES facultad(id)
);

-- Crear tabla Profesor_Estudiante
CREATE TABLE profesor_estudiante (
    id_profesor INTEGER,
    id_estudiante INTEGER,
    FOREIGN KEY (id_profesor) REFERENCES profesor(id),
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id)
);

-- Crear tabla Materia
CREATE TABLE materia (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    creditos INTEGER NOT NULL,
    horario VARCHAR(40) NOT NULL
);

-- Crear tabla Materia_Profesor
CREATE TABLE materia_profesor (
    id_materia INTEGER,
    id_profesor INTEGER,
    FOREIGN KEY (id_materia) REFERENCES materia(id),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id)
);

-- Crear tabla Materia_Estudiante
CREATE TABLE materia_estudiante (
    id_materia INTEGER,
    id_estudiante INTEGER,
    FOREIGN KEY (id_materia) REFERENCES materia(id),
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id)
);
