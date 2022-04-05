delimiter $$
create procedure nombre(in depart char(10))
begin

declare fecha date;
declare mensaje char(5);

set fecha = (select min(fechaAlta)
from datospersonales dat, departamento dep, empleados emp
where dat.ClaveEmpleado=emp.ClaveEmpleado and 
emp.ClaveDepartamento= dep.ClaveDepartamento and dep.nombre=nombredep);

update datos_personales set FechaAlta='2022-04-05' where FechaAlta=fecha;

set mensaje= 'OK';

select mensaje;

end$$
delimiter ;
