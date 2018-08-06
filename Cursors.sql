 /*Base de datos PISAComun.bak*/ 

declare cursor1 cursor for
select a�o
from pisa.a�os

open cursor1
close cursor1

declare cursor2 cursor for
select*from pisa.a�os

open cursor2
close cursor2

declare cursor3 read_only
for select
a�o
from pisa.a�os

open cursor3
close cursor3

declare @CursorDatos as nvarchar(60)
declare cursor4 cursor for
select a�o
from pisa.a�os
fetch next from cursor4 into @CursorDatos

open cursor4
close cursor4

declare cursor5 cursor for
select id_pais, nombre, id_basedatos from pisa.paises
where nombre ='Austria';

open cursor5
close cursor5

declare cursor6 cursor for
select id_pais, nombre, id_basedatos from pisa.paises
where nombre like 'A%';

open cursor6
close cursor6

declare cursor7 cursor for
select count (id_pais)from pisa.paises group by nombre;

open cursor7
close cursor7

declare cursor8 cursor for
select (nombre) from pisa.paises where nombre like 'A%' group by nombre;

open cursor8
close cursor8

declare cursor9 cursor for
select count(id_pais) from pisa.paises where nombre like 'A%' group by nombre;

open cursor9
close cursor9

declare cursor10 cursor for
select pisa.paises.nombre, pisa.paises_a�os.a�o from pisa.paises inner join pisa.paises_a�os on pisa.paises.id_pais=pisa.paises_a�os.id_pais;

open cursor10
close cursor10





