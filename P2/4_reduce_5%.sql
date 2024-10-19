-- desabilitar el modo seguro de sql
SET SQL_SAFE_UPDATES = 0;

-- funcion que reduce el precio en un 5%
UPDATE Articulo
SET cantidad = cantidad * 0.95
WHERE cantidad > 5;

select * from articulo;