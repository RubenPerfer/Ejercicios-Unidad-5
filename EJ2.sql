CREATE DEFINER=`root`@`localhost` FUNCTION `suma11`(num1 int,num2 int) RETURNS int
begin

declare suma int;
set suma = num1 + num2;
return suma;

end