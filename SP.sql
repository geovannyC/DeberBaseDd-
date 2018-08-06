/*use PISAComun*/
/*1)Sp*/
create procedure TablaAños
as
select*from pisa.años
go;
/*2)Sp*/
create procedure Año2000
as
select año,inicio,final,valor_pisa
from pisa.paises_años
where año<=2010;
go;
/*3)Sp*/

create procedure PaisesA
as
select id_pais, nombre
from pisa.paises
where nombre like 'A%'
go;

/*4)Sp*/
create procedure PaisesDifA
as
select id_pais, nombre
from pisa.paises
where nombre not like 'A%'
go;
/*5)Sp*/
create procedure Pais2000hasta2010
as
select pisa.paises.nombre, pisa.paises_años.año, pisa.paises_años.valor_pisa
from pisa.paises inner join pisa.paises_años 
on pisa.paises.id_pais=pisa.paises_años.id_pais
where pisa.paises_años.año <=2010
and pisa.paises_años.año >=2000
order by año
go;
/*6)Sp*/
create procedure InformationCursor1
as
declare SaveInformationPaisAño
cursor for
select pisa.paises.nombre, pisa.paises_años.año, pisa.paises_años.valor_pisa
from pisa.paises inner join pisa.paises_años 
on pisa.paises.id_pais=pisa.paises_años.id_pais
where pisa.paises_años.año <=2010
and pisa.paises_años.año >=2000;
go;
/*7)Sp */
/*create procedure CountNombre
as
select sum(count(nombre))
from pisa.paises ;
*/

/*8)Sp*/
create procedure AñoMax
as
select max( pisa.paises_años.año)
from pisa.paises inner join pisa.paises_años 
on pisa.paises.id_pais=pisa.paises_años.id_pais
go;

/*9)Sp*/

create procedure ContarPaisesA
as
select count(nombre)
from pisa.paises
where nombre like 'A%';
go;
/*10)Sp*/
create procedure ContarPaisesB
as
select count(nombre)
from pisa.paises
where nombre like 'B%';


Exec TablaAños;
Exec Año2000;
Exec PaisesA;
exec PaisesDifA;
exec Pais2000hasta2010;
exec InformationCursor1;
exec CountNombre;
exec AñoMax;
exec ContarPaisesA;
exec ContarPaisesB;
