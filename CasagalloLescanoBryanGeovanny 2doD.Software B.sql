-- crea la base de datos con el nombre pelis 
CREATE database NuevaBase;	
-- Elimina completamente la base de datos
Drop database NuevaBase			 
-- Crear la tabla 
CREATE TABLE Tabla(id int primary key, genero varchar(15), tipo varchar(10), aÃ±o varchar(4));
-- Crea la columna
alter table Tabla add column  primeraColumna varchar(20);
-- Eliminar una columna especifica
alter table Tabla drop column PrimeraColumna;
-- selecciona Tabla tabla
select * from Tabla;
-- insertar datos a la columna y los modifica
insert into Tabla Values(1,'genero','tipo','aÃ±o');
--Actualiza los datos
Update Tabla SET "Lista" where id=1
-- concatenar columnas
select concat(id, genero) from Tabla
select id, genero from PelÃ­culas
select + from Tabla
-- elimina los datos de la tabla 
truncate table Tabla;
