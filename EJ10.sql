CREATE DEFINER=`root`@`localhost` FUNCTION `apellidos1`(dni1 char(30)) RETURNS char(20) CHARSET utf8mb4
begin

declare cod char(10);
declare apellidos char(20);
set cod=
(select empleados.clave_empleado 
from empleados inner join datos_personales 
on empleados.clave_empleado=datos_personales.clave_empleado 
where dni=dni1);

set apellidos=
(select apellidos from empleados where clave_empleado=cod);

return apellidos;

end