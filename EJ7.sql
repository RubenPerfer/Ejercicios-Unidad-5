CREATE DEFINER=`root`@`localhost` PROCEDURE `DiaSemana`(in dia char (10))
begin

declare dias varchar(10);

case
When dia=1 then set dias:='Lunes';
When dia=2 then set dias:='Martes';
When dia=3 then set dias:='Miercoles';
When dia=4 then set dias:='Jueves';
When dia=5 then set dias:='Viernes';
When dia=6 then set dias:='Sabado';
When dia=7 then set dias:='Domingo';

end case;

select dias;

end