use colegio;
select*from alumno;


/*procedimiento inserción tabla alumno*/
delimiter $$
create procedure insertAlumno (
MYNombre varchar (50),
MYApellido varchar (50),
MYEdad tinyint,
MYGenero Char(1),
out MYid int)
begin
insert into alumno(nombre,apellido,edad,género)values(MYnombre,MYapellido,MYedad,MYgenero);
set MYid= last_insert_id();
select*from alumno where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/

create procedure ActualizaAlumno(
MYNombre varchar (50),
MYApellido varchar (50),
MYEdad tinyint,
MYGenero Char(1),
out MYid int)
begin
update Alumno set Nombre=MYNombre, Apellido=MYApellido, Edad=MYEdad, Género=MYGenero where id=MYid;

/*Procedimiento lectura*/

create procedure leeAlumno
(MYid int)
begin select*from Alumno where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraAlumno
(MYid int)
begin 
delete from Alumno where id=MYid;

/*Procedimiento insercion tabla Artículo*/

create procedure insertArtículo (
MYNombre varchar (50),
out MYid int)
begin
insert into articulo(Nombre)values(MYNombre);
set MYid= last_insert_id();
select*from articulo where id=MYid;

/*Procedimiento de actualizacion*/

create procedure ActualizaArticulo(
MYNombre varchar(50),
out MYid int)
begin
update Articulo set Nombre=MYNombre where id=MYid;

/*Procedimiento lectura*/

create procedure leeArticulo
(MYid int)
begin select*from Articulo where id=MYid;

/*Procedimiento de borrar*/

create procedure BorraArticulo
(MYid int)
begin 
delete from Articulo where id=MYid;

/*Procedimiento inserción tabla Asignarura*/

create procedure insertAsignatura (
MYAsignarura varchar (50),
out MYid int)
begin
insert into asignatura(Nombre)values(MYAsigatura);
set MYid= last_insert_id();
select*from asignatura where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/

create procedure ActualizaAsignatura(
MYAsigatura varchar(50),
out MYid int)
begin
update Asignatura set Asigatura=MYAsigatura where id=MYid;

/*Procedimiento lectura*/

create procedure leeAsignaruta
(MYid int)
begin select*from Asignaruta where id=MYid;

/*Procedimiento de borrar*/

create procedure BorraAsignatura
(MYid int)
begin 
delete from Asignatura where id=MYid;


create procedure insertcobros (
MYpago int,
out MYid int)
begin
insert into cobros(Pago)values(MYpago);
set MYid= last_insert_id();
select*from cobros where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/

create procedure ActualizaCobros(
MYPago int,
out MYid int)
begin
update Cobros set Pago=MYPago where id=MYid;

/*Procedimiento lectura*/

create procedure leeCobros
(MYid int)
begin select*from Cobros where id=MYid;

/*Procedimiento de borrar*/

create procedure BorraCobros
(MYid int)
begin 
delete from Cobros where id=MYid;


create procedure insertCurso (
MYcurso varchar(15),
MYParalelo char(1),
out MYid int)
begin
insert into curso(curso,Paralelo)values(MYcurso,MYParalelo);
set MYid= last_insert_id();
select*from curso where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/

create procedure ActualizaCurso(
MYCurso varchar(50),
MYParalelo char(1),
out MYid int)
begin
update Curso set Curso=MYCurso,Paralelo=MYParalelo where id=MYid;

/*Procedimiento lectura*/

create procedure leeCurso
(MYid int)
begin select*from Curso where id=MYid;

/*Procedimiento de borrar*/

create procedure BorraCurso
(MYid int)
begin 
delete from Curso where id=MYid;


create procedure insertNotas (
MYNota  int,
out MYid int)
begin
insert into Notas(Nota)values(MYNota);
set MYid= last_insert_id();
select*from Notas where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/

create procedure ActualizaNotas(
MYNota int,
out MYid int)
begin
update Notas set Nota=MYNota where id=MYid;

/*Procedimiento lectura*/

create procedure leeNotas
(MYid int)
begin select*from Notas where id=MYid;

/*Procedimiento de borrar*/

create procedure BorraNotas
(MYid int)
begin 
delete from Notas where id=MYid;
create procedure insertPagos (
MYMonto int,
MYPagoProfesor int,
out MYid int)
begin
insert into Pagos(PagoProfesor,Monto)values(MYPagoProfesor,MYMonto);
set MYid= last_insert_id();
select*from Pagos where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/
create procedure ActualizaPagos(
MYPagoProfesor int,
MYMonto int,
out MYid int)
begin
update Pagos set PagoProfesor=MYPagoProfesor, Monto=MYMonto where id=MYid;

/*Procedimiento lectura*/
create procedure leePagos
(MYid int)
begin select*from Pagos where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraPagos
(MYid int)
begin 
delete from Pagos where id=MYid;

create procedure insertPagosProveedor (
MYPago int,
out MYid int)
begin
insert into PagosProveedor(Pago)values(MYPago);
set MYid= last_insert_id();
select*from PagosProveedor where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/
create procedure ActualizaPagosProveedor(
MYPago int,
out MYid int)
begin
update PagosProveedor set Pago=MYPago where id=MYid;

/*Procedimiento lectura*/
create procedure leePagosProveedor
(MYid int)
begin select*from PagosProveedor where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraPagosProveedor
(MYid int)
begin 
delete from PagosProveedor where id=MYid;

create procedure insertProfesor (
MYNombre varchar(50),
MYApellido varchar(50),
MYEdad int,
MYGénero char (1),
out MYid int)
begin
insert into Profesor(Nombre,Apellido,Edad,Género)values(MYNombre,MYApellido,MYEdad,MYGénero);
set MYid= last_insert_id();
select*from Profesor where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/
create procedure ActualizaProfesor(
MYNombre varchar(50),
MYApellido varchar(50),
MYEdad INT,
MYGénero char (1) ,
out MYid int)
begin
update Profesor set Nombre=MYNombre, Apellido=MYApellido,Edad=MYEdad, Género=MYGénero where id=MYid;

/*Procedimiento lectura*/
create procedure leeProfesor
(MYid int)
begin select*from Profesor where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraProfesor
(MYid int)
begin 
delete from Profesor where id=MYid;

create procedure insertProveedor (
MYNombre varchar(50),
out MYid int)
begin
insert into Proveedor(Nombre)values(MYNombre);
set MYid= last_insert_id();
select*from Proveedor where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/
create procedure ActualizaProveedor(
MYNombre varchar(50),
out MYid int)
begin
update Proveedor set Nombre=MYNombre where id=MYid;

/*Procedimiento lectura*/
create procedure leeProveedor
(MYid int)
begin select*from Proveedor where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraProveedor
(MYid int)
begin 
delete from Proveedor where id=MYid;

create procedure insertTienda (
MYSucursal varchar(50),
out MYid int)
begin
insert into Tienda(Sucursal)values(MYSucursal);
set MYid= last_insert_id();
select*from Tienda where id=MYid;

/*Procedimiento Update de una tabla, con ayuda de su id*/
create procedure ActualizaTienda(
MYSucursal varchar(50),
out MYid int)
begin
update Tienda set Sucursal=MYSucursal where id=MYid;

/*Procedimiento lectura*/
create procedure leeTienda
(MYid int)
begin select*from Tienda where id=MYid;
/*Procedimiento de borrar*/
create procedure BorraTienda
(MYid int)
begin 
delete from Tienda where id=MYid;
end;
call insertAlumno(/*DATOS HA INSERTAR*/);
call insertArtículo;
call insertAsignatura;
call insertcobros;
call insertCurso;
call insertNotas;
call insertPagosProveedor;
call insertProfesor;
call insertProveedor;
call insertTienda;

call ActualizaAlumno;
call ActualizaArtículo;
call ActualizaAsignatura;
call Actualizacobros;
call ActualizaCurso;
call ActualizaNotas;
call ActualizaPagosProveedor;
call ActualizaProfesor;
call ActualizaProveedor;
call ActualizaTienda;

call leeAlumno;
call leeArtículo;
call leeAsignatura;
call leecobros;
call leeCurso;
call leeNotas;
call leePagosProveedor;
call leeProfesor;
call leeProveedor;
call leeTienda;

call Borralumno;
call Borrartículo;
call Borrasignatura;
call BorraCobros;
call BorraCurso;
call BorraNotas;
call BorraPagosProveedor;
call BorraProfesor;
call BorraProveedor;
call BorraTienda;
