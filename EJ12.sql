CREATE DEFINER=`root`@`localhost` PROCEDURE `Notas`(in nota double)
begin
declare estado char(10);

if nota < 5 then 
set estado='Insuficiente';
elseif nota >=5 and nota <6 then
set estado='Aprobado';
elseif nota>=6 and nota <7 then
set estado='Bien';
elseif nota >=7 and nota <9 then
set estado='Notable';
elseif nota >=9 and nota =10 then
set estado='Sobresaliente';
elseif nota <0 and nota >10 then
set estado='Nota Inválida';
end if;

select estado;

end