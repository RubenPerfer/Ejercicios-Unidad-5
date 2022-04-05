CREATE DEFINER=`root`@`localhost` FUNCTION `ParImpar`(num1 int (20)) RETURNS int
begin

declare TF boolean;

if num1 %2=0
then set TF := true;
else set TF := false;
end if;

return TF;
end