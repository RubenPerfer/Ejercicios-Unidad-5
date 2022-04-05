CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarvariable1`()
begin

declare var int;
set var=12;
select var;

end