/*use PISAComun*/
/*1)Sp*/
create procedure TablaA�os
as
select*from pisa.a�os
go;
/*2)Sp*/
create procedure A�o2000
as
select a�o,inicio,final,valor_pisa
from pisa.paises_a�os
where a�o<=2010;
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
select pisa.paises.nombre, pisa.paises_a�os.a�o, pisa.paises_a�os.valor_pisa
from pisa.paises inner join pisa.paises_a�os 
on pisa.paises.id_pais=pisa.paises_a�os.id_pais
where pisa.paises_a�os.a�o <=2010
and pisa.paises_a�os.a�o >=2000
order by a�o
go;
/*6)Sp*/
create procedure InformationCursor1
as
declare SaveInformationPaisA�o
cursor for
select pisa.paises.nombre, pisa.paises_a�os.a�o, pisa.paises_a�os.valor_pisa
from pisa.paises inner join pisa.paises_a�os 
on pisa.paises.id_pais=pisa.paises_a�os.id_pais
where pisa.paises_a�os.a�o <=2010
and pisa.paises_a�os.a�o >=2000;
go;
/*7)Sp */
/*create procedure CountNombre
as
select sum(count(nombre))
from pisa.paises ;
*/

/*8)Sp*/
create procedure A�oMax
as
select max( pisa.paises_a�os.a�o)
from pisa.paises inner join pisa.paises_a�os 
on pisa.paises.id_pais=pisa.paises_a�os.id_pais
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


Exec TablaA�os;
Exec A�o2000;
Exec PaisesA;
exec PaisesDifA;
exec Pais2000hasta2010;
exec InformationCursor1;
exec CountNombre;
exec A�oMax;
exec ContarPaisesA;
exec ContarPaisesB;
