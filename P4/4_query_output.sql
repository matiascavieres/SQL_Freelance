-- nombres de las facultades que no tienen carrera
SELECT f.nombre
FROM facultad f
LEFT JOIN carrera c ON f.id = c.id_facultad
WHERE c.id_facultad IS NULL;
