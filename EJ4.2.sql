CREATE DEFINER=`root`@`localhost` FUNCTION `devEmp`() RETURNS int unsigned
begin

declare empleados int unsigned;

set empleados=
(select count(empleados.nombre) 
from empleados inner join departamento on empleados.clave_departamento=departamento.clave_departamento where departamento.nombre='Personal');

return empleados;

end