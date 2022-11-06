

DELIMITER $$
USE `atps2`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `produtos_AFTER_UPDATE` AFTER UPDATE ON `produtos` FOR EACH ROW BEGIN
if new.preco <> old.preco then
insert into historico_produtos values (null, now(), new.id, old.preco, new.preco);

END IF;
END$$
DELIMITER ;
