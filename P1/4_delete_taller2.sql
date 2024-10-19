-- Eliminar la columna estado2 de la tabla taller
ALTER TABLE Taller
DROP COLUMN Estado2;

-- Mostrar los datos de la tabla taller
describe taller;