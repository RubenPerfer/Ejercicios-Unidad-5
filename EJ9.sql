CREATE DEFINER=`root`@`localhost` FUNCTION `NumMayor1`(num1 int, num2 int, num3 int) RETURNS int
begin

declare mayor int(5);

if num1 > num2 and num1> num3 then
set mayor=num1;
elseif num2 > num1 and  num2> num2 then
set mayor=num2;
elseif num3 > num1 and  num3> num2 then
set mayor=num3;
end if;

return mayor;

end