CREATE DEFINER=`root`@`localhost` FUNCTION `NumeroEmpleados`(depar varchar (20)) RETURNS int
begin
declare numero int;

set numero =(
select count(e.ClaveEmpleado)
from empleados e, departamento d
where e.ClaveDepartamento=d.ClaveDepartamento and d.Nombre= depar);

return numero;
end