CREATE DEFINER=`root`@`localhost` FUNCTION `AreaCirculo`(radio double) RETURNS double
begin

declare pi double;
declare area double;

set area=
(3.14*(radio*radio));

return area;

end