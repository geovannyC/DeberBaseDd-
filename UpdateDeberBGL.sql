/*use PISAComun;*/
/*select*from pisa.paises*/
/*Reemplaza el valor del campo con denominación Estonia por el de Ecuador*/
update pisa.paises
set nombre='Ecuador'
where nombre='Estonia';
/*Elimina el campo not aplicable de la columna nombre con el id_pais*/
update pisa.paises
set nombre=null
where id_pais=334433;
/*Actualizamos dos campos de la columna n_pais y nombre con el id 334519*/
update pisa.paises
set n_pais='Cl',nombre='CLora'
where id_pais=334519;
/*select * from pisa.paises_años*/
/*UPDATE "AND" CON VALORES REPETIDOS*/
/*duplicamos el valor de la columna valor_pisa con ayuda del id_pais 334351* y año del 2000 y inicio y final*/
update pisa.paises_años
set valor_pisa=valor_pisa*2
where id_pais=334351
AND año=2000
AND inicio=2
AND final=4;
/*Misma operación pero con el id*/
update pisa.paises_años
set valor_pisa=valor_pisa*2
where DATABASE_PRINCIPAL_ID=3
/*Calculamos el 10% del valor y lo incremntamos en el valor de la columna valor_pisa con ayuda del id 334353*/
update pisa.paises_años
set valor_pisa = valor_pisa+(valor_pisa*0.10)/*set valor_pisa = valor_pisa+(valor_pisa*10/100)*//*Valor_pisa*110*/
where id_pais=334351
AND año=2003
AND inicio=1
AND final=3;
/*Enviamos el mismo valor a todos los id_pais 334352 escogemos de referencia el primer valor */ 
update pisa.paises_años
set valor_pisa=(
select valor_pisa
from pisa.paises_años
where id_pais=334352
and valor_pisa=32
)
where id_pais=334352;
/*actualizamos los datos de esta tabla recuperando los datos de otra tabla externa*/
update pisa.paises_años
set ocde=(
select c_pais
from pisa.paises
where pisa.paises.id_pais=pisa.paises_años.id_pais
);
/*duplicamos el valor de la columna valor_pisa para solo los paises con el año = 200*/
update pisa.paises_años
set valor_pisa=valor_pisa*2
where año=2000;
/*Cambiamos el nombre de la columna nombre_pisa por a todos poer el de country*/
update pisa.paises_años
set nombre_pisa='Country'
where not nombre_pisa='Country';