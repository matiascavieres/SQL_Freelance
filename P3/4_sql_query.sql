-- mostrar el nombre del proveedor y la cantidad de articulos que provee
SELECT p.nombre, COUNT(a.id) AS cantidad_articulos
FROM Proveedor p
JOIN Articulo a ON p.id = a.Proveedor_id
GROUP BY p.nombre;

