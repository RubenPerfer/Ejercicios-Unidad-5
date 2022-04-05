CREATE DEFINER=`root`@`localhost` PROCEDURE `masAntiguo`()
begin

select datos_personales.fecha_Alta 
from datos_personales inner join empleados on 
datos_personales.clave_empleado=empleados.clave_empleado 
inner join departamento on empleados.clave_departamento=departamento.clave_departamento 
order by fecha_Alta limit 1;

end