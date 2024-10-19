-- Insertar datos en Facultad
INSERT INTO facultad (id, nombre, direccion) VALUES
(1, 'Facultad de Ciencias', 'Avenida Siempre Viva 123'),
(2, 'Facultad de Ingeniería', 'Calle Falsa 456'),
(3, 'Facultad de Artes', 'Calle Real 789');

-- Insertar datos en Carrera (solo algunas facultades tienen carreras)
INSERT INTO carrera (id, nombre, duracion_anos, creditos, id_facultad) VALUES
(1, 'Ingeniería Civil', 5, 250, 2),
(2, 'Ingeniería Informática', 5, 250, 2),
(3, 'Matemáticas', 4, 200, 1);

-- Insertar datos en Estudiante
INSERT INTO estudiante (id, nombre, apellido, email, creditos, semestre, promedio) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@example.com', 180, 5, 6),
(2, 'Ana', 'López', 'ana.lopez@example.com', 120, 3, 7);

-- Insertar datos en Profesor
INSERT INTO profesor (id, nombre, apellido, telefono, email, jornada, salario) VALUES
(1, 'Carlos', 'Ramírez', '987654321', 'carlos.ramirez@example.com', 40, 1200000),
(2, 'Lucía', 'Martínez', '912345678', 'lucia.martinez@example.com', 40, 1100000);

-- Insertar datos en Decano
INSERT INTO decano (id, nombre, apellido, telefono, email, salario, id_facultad) VALUES
(1, 'Ricardo', 'González', '912345678', 'ricardo.gonzalez@example.com', 1500000, 1),
(2, 'Marta', 'López', '912345679', 'marta.lopez@example.com', 1500000, 2);
