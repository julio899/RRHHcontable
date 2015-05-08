UPDATE `compacto`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `compactolara`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `compactoandina`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `compactozulia`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `deimport`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `deimportlara`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `dideco`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `dimosaandina`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `dimosazulia`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `olc`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');
UPDATE `transdevi`.`trabajadores` SET `fechaingresoT` = REPLACE(`fechaingresoT`, "/", '-');









ALTER TABLE `compacto`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `compactolara`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `compactoandina`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `compactozulia`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `deimport`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `deimportlara`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `dideco`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `dimosaandina`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `dimosazulia`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE `olc`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;
ALTER TABLE  `transdevi`.`anticipo_prestaciones` CHANGE `fechaA` `fechaA` DATE NOT NULL;


#SELECT DATE_FORMAT(STR_TO_DATE(`fechaingresoT`,'%d-%m-%Y'), '%Y-%m-%d') `fechaingresoT`, `nombreT` FROM trabajadores
