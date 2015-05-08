-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-05-2015 a las 16:30:16
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dideco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anticipo_prestaciones`
--

CREATE TABLE IF NOT EXISTS `anticipo_prestaciones` (
  `IDanticipo` varchar(20) NOT NULL,
  `IDT` varchar(4) NOT NULL,
  `bancoA` varchar(20) NOT NULL,
  `estadoAnticipo` varchar(10) NOT NULL,
  `CONCEPTO` varchar(20) NOT NULL,
  `nro_concep` varchar(20) NOT NULL,
  `monto_A` double NOT NULL,
  `fechaA` date NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  PRIMARY KEY (`IDanticipo`),
  UNIQUE KEY `CONCEPTO` (`CONCEPTO`),
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('08rg', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '94333052', '10956', 500, '2010-06-04', ''),
('2gxs', 'nrj8', 'BANCO-PLAZA', 'CHEQUEADO', '00639326', '13499', 3500, '2013-04-17', ''),
('2ido', 'qb9z', 'BANCO-PLAZA', 'CHEQUEADO', '00639054', '12502', 9000, '2012-03-06', ''),
('2jdc', 'qb9z', 'BANCO-CARIBE', 'CHEQUEADO', '55333133', '11208', 3400, '2010-09-16', ''),
('330w', '6dwd', 'BANCO-MERCANTIL', 'CHEQUEADO', '09336735', '10901', 3500, '2010-05-21', ''),
('3fer', '1b2n', 'BANCO-BANESCO', 'CHEQUEADO', '31013888', '11851', 1400, '2011-06-23', ''),
('3rog', '5jg4', 'BANCO-CARIBE', 'CHEQUEADO', '94341858', '11329', 1500, '2010-11-04', ''),
('4ccp', '7dv7', 'BANCO-PLAZA', 'CHEQUEADO', '00638753', '10791', 1600, '2010-04-16', ''),
('4z5m', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '32475066', '7448', 700, '2008-09-08', ''),
('53es', '051u', 'BANCO-EXTERIOR', 'CHEQUEADO', '56391300', '7852', 500, '2006-10-06', ''),
('6dss', '6dwd', 'BANCO-CARIBE', 'CHEQUEADO', '86679998', '11641', 6000, '2011-03-31', ''),
('6iko', '051u', 'BANCO-UNIBANCA', 'CHEQUEADO', '42651383', '4519', 1500, '2004-04-28', ''),
('7ikh', 'wiy6', 'BANCO-CARIBE', 'CHEQUEADO', '23341888', '11380', 10000, '2010-11-29', ''),
('7meq', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '15275147', '9684', 1000, '2009-03-26', ''),
('7rde', 'ddu5', 'BANCO-CARIBE', 'CHEQUEADO', '62832353', '2984', 400, '2002-08-15', ''),
('7vcb', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '21175065', '7446', 1000, '2008-09-08', ''),
('a4wf', '1b2n', 'BANCO-CARIBE', 'CHEQUEADO', '25441849', '11538', 3000, '2011-02-14', ''),
('ab3b', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '53705269', '13765', 12000, '2013-07-31', ''),
('apmr', '051u', 'BANCO-VENEZUELA', 'CHEQUEADO', '66174717', '09171', 4388, '2008-11-07', ''),
('au76', 'nrj8', 'N/A-au76', 'CHEQUEADO', 'N/A-au76', 'N/A-au76', 6500, '2013-09-16', ' ANTICIPO DE VACACIONES PASADAS \r\nANTICIPO DE PRESTACIONES'),
('avvy', '051u', 'BANCO-PLAZA', 'CHEQUEADO', '00639061', '12539', 15000, '2012-03-21', ''),
('bpy0', 'idqs', 'BANCO-CARIBE', 'CHEQUEADO', '33591727', '12780', 3100, '2012-06-25', ''),
('bz40', '051u', 'BANCO-MERCANTIL', 'CHEQUEADO', '45953713', '2527', 200, '2002-03-20', ''),
('c38f', 'qb9z', 'BANCO-BOD', 'CHEQUEADO', '15000502', '10052', 1500, '2009-07-14', ''),
('c92b', 'y5tc', 'N/A-c92b', 'CHEQUEADO', 'N/A-c92b', 'N/A-c92b', 6670, '2008-12-19', ' '),
('chxk', 'ddu5', 'BANCO-BANESCO', 'CHEQUEADO', '19904135', '11018', 5000, '2010-07-01', ''),
('cmm0', '6dwd', 'BANCO-PLAZA', 'CHEQUEADO', '00639369', '13695', 15000, '2013-06-27', ''),
('dang', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '29361423', '6515', 1100, '2007-11-29', ''),
('ddsa', '7dv7', 'BANCO-MERCANTIL', 'CHEQUEADO', '29336842', '11897', 1700, '2011-07-12', ''),
('dffx', 't55w', 'BANCO-EXTERIOR', 'CHEQUEADO', '33844653', '12009', 2800, '2011-08-31', ''),
('e3fs', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '18189593', '8355', 650, '2007-03-07', ''),
('e3zh', 'nrj8', 'BANCO-MERCANTIL', 'CHEQUEADO', '47661834', '12620', 2500, '2012-04-17', ''),
('eeyj', 'y5tc', 'BANCO-CARIBE', 'CHEQUEADO', '68410183', '17333', 10000, '2009-03-09', ''),
('en7e', 'ddu5', 'BANCO-CARIBE', 'CHEQUEADO', '63081292', '2804', 600, '2002-07-04', ''),
('euvz', 'idqs', 'BANCO-CARIBE', 'CHEQUEADO', '21205244', '13636', 3900, '2013-06-06', ''),
('ff6q', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '85341832', '11482', 5000, '2011-01-24', ''),
('fq0n', '1b2n', 'BANCO-CARIBE', 'CHEQUEADO', '98975071', '7461', 1000, '2008-09-11', ''),
('g05e', 'i5e6', 'BANCO-EXTERIOR', 'CHEQUEADO', '33844615', '11588', 2000, '2011-03-04', ''),
('g3ai', '051u', 'BANCO-CARIBE', 'EMITIDO', '52713074', '14482', 40000, '2014-06-26', ''),
('gfgo', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '27112998', '14268', 10000, '2014-03-13', ''),
('gno8', 'y5tc', 'BANCO-CARIBE', 'CHEQUEADO', '49045332', '8586', 3847.54, '2007-05-03', ''),
('gxh0', 'nrj8', 'BANCO-VENEZUELA', 'CHEQUEADO', '12296279', '24355', 2300, '2012-06-26', ''),
('hfmk', 'qb9z', 'BANCO-CARIBE', 'CHEQUEADO', '07979999', '11642', 4000, '2011-03-31', ''),
('hfq7', 'idqs', 'BANCO-EXTERIOR', 'EMITIDO', '87012366', '14652', 14000, '2014-10-02', ''),
('hhoj', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '52333123', '11191', 3000, '2010-09-08', ''),
('iJ95', 'nrj8', 'PLAZA', 'EMITIDO', '00639642', '14887', 4600, '2015-02-12', ''),
('ik3p', '1620', 'BANCO-EXTERIOR', 'CHEQUEADO', '54587616', '12917', 1400, '2012-08-22', ''),
('jgsf', '051u', 'BANCO-VENEZUELA', 'CHEQUEADO', '71174426', '5486', 400, '2005-09-07', ''),
('js20', 'ddu5', 'BANCO-EXTERIOR', 'CHEQUEADO', '56414106', '8130', 9000, '2006-12-15', ''),
('kdq9', '051u', 'N/A-kdq9', 'CHEQUEADO', 'N/A-kdq9', 'N/A-kdq9', 215, '2002-06-30', ' '),
('KFYF', 'ddu5', 'PLAZA', 'EMITIDO', '00639588', '14758', 50000, '2014-11-25', ''),
('m3dd', 't55w', 'BANCO-EXTERIOR', 'CHEQUEADO', '64533071', '13619', 8300, '2013-05-29', ''),
('m6mt', '7dv7', 'BANCO-EXTERIOR', 'EMITIDO', '84328118', '14573', 8000, '2014-08-19', ''),
('mhdp', '6dwd', 'BANCO-PLAZA', 'CHEQUEADO', '00639089', '12592', 4500, '2012-04-11', ''),
('mj7r', 'qb9z', 'BANCO-CARIBE', 'CHEQUEADO', '27110518', '10731', 1500, '2010-03-25', ''),
('mox2', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '26791771', '12894', 12000, '2012-08-02', ''),
('n4om', '7dv7', 'BANCO-PLAZA', 'CHEQUEADO', '00638311', '09161', 3600, '2008-11-03', ''),
('n56f', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '75580053', '11870', 500, '2011-07-01', ''),
('na26', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '96961638', '5251', 1000, '2005-05-09', ''),
('nepi', '051u', 'BANCO-BANESCO', 'CHEQUEADO', '14904136', '11025', 11646.61, '2010-07-06', ''),
('nh56', '0j1c', 'BANCO-EXTERIOR', 'CHEQUEADO', '79213397', '14343', 15000, '2014-04-24', ''),
('nnc5', '5jg4', 'BANCO-CARIBE', 'CHEQUEADO', '27510506', '10693', 1000, '2010-03-10', ''),
('noup', 'y5tc', 'BANCO-CARIBE', 'CHEQUEADO', '64705181', '27913', 14000, '2013-06-20', ''),
('o8za', 'j3w3', 'BANCO-EXTERIOR', 'CHEQUEADO', '56388895', '7502', 3500, '2006-06-22', ''),
('oofk', '1b2n', 'BANCO-MERCANTIL', 'CHEQUEADO', '94241261', '10593', 6000, '2010-02-02', ''),
('p3ix', 'qb9z', 'BANCO-CARIBE', 'CHEQUEADO', '78191676', '12667', 3000, '2012-05-07', ''),
('posa', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '72110462', '10220', 1000, '2009-09-03', ''),
('q5id', 'j3w3', 'N/A-q5id', 'CHEQUEADO', 'N/A-q5id', 'N/A-q5id', 500, '2006-08-31', ' '),
('qbt9', 'j3w3', 'N/A-qbt9', 'CHEQUEADO', 'N/A-qbt9', 'N/A-qbt9', 220, '1997-08-19', ' '),
('qdfh', 'y5tc', 'BANCO-MERCANTIL', 'CHEQUEADO', '69399621', '6118', 2450, '2006-05-18', ''),
('qhkm', 'vugl', 'BANCO-CARIBE', 'EMITIDO', '40013080', '14506', 5000, '2014-07-11', ''),
('qmcz', '5jg4', 'BANCO-CARIBE', 'EMITIDO', '18780084', '12037', 4700, '2011-09-13', ''),
('r8ja', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '23748835', '1583', 300, '2001-05-14', ''),
('rjm5', '1620', 'BANCO-PLAZA', 'CHEQUEADO', '00639327', '13503', 2500, '2013-04-17', ''),
('rmc6', '6dwd', 'BANCO-EXTERIOR', 'CHEQUEADO', '33844592', '11994', 2000, '2011-08-26', ''),
('sqav', 'qb9z', 'BANCO-PLAZA', 'CHEQUEADO', '00639286', '13316', 6000, '2013-01-31', ''),
('sut2', 's47j', 'BANCO-UNIBANCA', 'CHEQUEADO', '35028091', '2500', 1500, '2002-03-18', ''),
('swoc', 'nrj8', 'BANCO-CARIBE', 'CHEQUEADO', '91810497', '10597', 700, '2010-02-03', ''),
('tclI', 't3aq', 'EXTERIOR', 'EMITIDO', '81603864', '14871', 10000, '2015-02-06', ''),
('u0yw', '051u', 'BANCO-EXTERIOR', 'CHEQUEADO', '56388812', '5681', 600, '2005-11-28', ''),
('uBYD', 'bfe9', 'EXTERIOR', 'EMITIDO', '87012369', '14691', 20000, '2014-10-21', ''),
('utai', '051u', 'BANCO-BOD', 'CHEQUEADO', '60000483', '10029', 7324.12, '2009-07-06', ''),
('wp65', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '40993042', '3981', 200, '2003-08-18', ''),
('xoij', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '43561656', '4735', 500, '2004-08-16', ''),
('xqdw', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '02810461', '10178', 1500, '2009-11-27', ''),
('xsbx', '7dv7', 'BANCO-PLAZA', 'CHEQUEADO', '00639501', '14286', 4000, '2014-03-21', ''),
('xx5y', '051u', 'BANCO-EXTERIOR', 'CHEQUEADO', '56371652', '4953', 400, '2004-12-07', ''),
('yrgr', 't55w', 'BANCO-CARIBE', 'EMITIDO', '50213114', '14607', 20000, '2014-09-10', ''),
('yrq3', 'vugl', 'BANCO-CARIBE', 'CHEQUEADO', '96858429', '13999', 10000, '2013-10-11', ''),
('yviv', 't3aq', 'BANCO-EXTERIOR', 'CHEQUEADO', '61241352', '13646', 7300, '2013-06-10', ''),
('ywqy', 'nrj8', 'BANCO-MERCANTIL', 'CHEQUEADO', '26023166', '13928', 12000, '2013-09-16', ''),
('z3k2', 'i5e6', 'BANCO-CARIBE', 'CHEQUEADO', '46041783', '11287', 1500, '2010-10-21', ''),
('zd04', '7dv7', 'BANCO-CARIBE', 'CHEQUEADO', '00245885', '0225', 2400, '2011-12-01', ''),
('zf5u', '7dv7', 'BANCO-PLAZA', 'CHEQUEADO', '00638043', '6261', 800, '2008-09-29', ''),
('ztdc', 't55w', 'BANCO-EXTERIOR', 'CHEQUEADO', '54587594', '12815', 5000, '2012-07-04', ''),
('zujx', '051u', 'BANCO-CARIBE', 'CHEQUEADO', '18684775', '6955', 1500, '2008-04-08', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidaciones`
--

CREATE TABLE IF NOT EXISTS `liquidaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `monto` varchar(15) NOT NULL,
  `IDT` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `liquidaciones`
--

INSERT INTO `liquidaciones` (`id`, `fecha`, `monto`, `IDT`) VALUES
(1, '2015-05-08', '20.000', 'idqs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rh_emp`
--

CREATE TABLE IF NOT EXISTS `rh_emp` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `cod_emp` varchar(15) NOT NULL,
  `razon_soc` varchar(50) NOT NULL,
  `nombre_comercial` varchar(50) NOT NULL,
  `rif` varchar(15) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`id_emp`),
  UNIQUE KEY `cod_emp` (`cod_emp`),
  UNIQUE KEY `nombre_comercial` (`nombre_comercial`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `rh_emp`
--

INSERT INTO `rh_emp` (`id_emp`, `cod_emp`, `razon_soc`, `nombre_comercial`, `rif`, `telefono`, `ciudad`, `estado`) VALUES
(1, '001', 'MAYORISTA DE CONFITES Y VIVERES (DIDECO) C A', 'DIDECO C.A.', 'J-07516808-9', '', 'MARACAY', 'ARAGUA'),
(2, '002', 'DEIMPORT C.A.', 'DEIMPORT C.A.', 'J-30076979-8', '', 'Maracay', 'Aragua'),
(3, 'A03', 'DIMOSA ANDINA C.A.', 'DIMOSA ANDINA C.A.', '', '', '', ''),
(4, 'Z03', 'DIMOSA ZULIA C.A.', 'DIMOSA ZULIA C.A.', '', '', '', ''),
(5, '003', 'TRANSDEVI C.A.', 'TRANSDEVI C.A.', '', '', '', ''),
(6, '005', 'COMPACTO C.A.', 'COMPACTO C.A.', '', '', '', ''),
(7, 'A05', 'COMPACTO ANDINA C.A.', 'COMPACTO ANDINA C.A.', '', '', '', ''),
(8, '004', 'COMPACTO LARA C.A.', 'COMPACTO LARA C.A.', '', '', '', ''),
(9, 'Z05', 'COMPACTO ZULIA C.A.', 'COMPACTO ZULIA C.A.', '', '', '', ''),
(10, '008', 'DEIMPORT LARA C.A.', 'DEIMPORT LARA C.A.', '', '', 'LARA', 'BARQUISIMETO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE IF NOT EXISTS `trabajadores` (
  `nombreT` varchar(20) NOT NULL,
  `apellidoT` varchar(20) NOT NULL,
  `cedulaT` varchar(11) NOT NULL,
  `edoCivilT` varchar(10) NOT NULL,
  `telefonoT` varchar(20) NOT NULL,
  `cargoT` varchar(20) NOT NULL,
  `fechaingresoT` varchar(15) NOT NULL,
  `direccionT` varchar(300) NOT NULL,
  `IDT` varchar(4) NOT NULL,
  `TRABAJANDO` char(2) NOT NULL,
  PRIMARY KEY (`IDT`),
  UNIQUE KEY `cedulaT` (`cedulaT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('SANDRA', 'VIEIRA', 'V-12142816', 'C', '0424-3569813', 'Jefe Sistemas', '3-1-1999', 'CALLEJON EL DIAMANTE EL LIMON MARACAY	', '051u', ''),
('GLADIS', 'MACHADO', 'V-9434950', 'S', '', 'Analista Credito y C', '5-5-2009', '	', '0j1c', ''),
('CARLINA', 'CASTELLANOS', 'V-22288428', 'S', '', 'Mantenimiento', '13-8-2011', '	', '1620', ''),
('ERIC', 'VEGAS', 'V-15336164', 'C', '0412-6001581', 'Representante de Ven', '2-11-2007', 'URB. LA PUNTA MARACAY	', '1b2n', 'NO'),
('BELKIS', 'RATTIA', 'V-13938670', 'S', '2722619', 'Asistente de Ventas', '12-1-2009', 'BASE ARAGUA MARACAY	', '5jg4', 'NO'),
('MIGUEL', 'PANTOJA', 'V-16411596', 'C', '0245-5810611', 'Representante de Ven', '2-6-2009', 'GUACARA EDO.CARABOBO	', '6dwd', 'NO'),
('RICHARD', 'URBINA', 'E-83342351', 'S', '0414-0351271', 'Facturador', '17-4-2006', 'CALLE RICAUTER Nª14 BARRIO SAN MIGUEL TURMERO.		', '7dv7', 'NO'),
('ANA ', 'RATTI', 'V-18231438', 'S', '', 'ANALISTA CONTABLE', '2012-02-08', 'TURMERO ESTADO ARAGUA', 'bfe9', ''),
('ANTONIO', 'CARVALHO', 'V-9647823', 'C', '0243-5540039', 'Jefe de Almacen', '1-8-1994', 'lA COROMOTO MARACAY	', 'ddu5', ''),
('IVAN', 'ITURRIZA', 'V-9691009', 'S', '0424-3231233', 'Representante de Ven', '1-12-2009', 'CALLE CANDELARIA Nª30 MARACAY EDO-ARAGUA	', 'i5e6', 'NO'),
('JULIO', 'VINACHI', 'V-18266159', 'C', '', 'Asistente-Sistemas', '15-6-2011', '	', 'idqs', ''),
('EMILIO', 'ROMERO', 'V-343791', 'C', '', 'Jefe de Cuentas por ', '15-3-1984', '	', 'j3w3', 'NO'),
('DIUGLIS', 'CHIRINOS', 'V-15473973', 'C', '0412-1769006', 'Asistente RRHH', '17-10-2007', 'URB. CASANOVA GODOY MARACAY	', 'nrj8', ''),
('ALEJANDRO', 'ALVARADO', 'V-11414192', 'C', '0414-4452181', 'Representante de Ven', '16-7-2008', 'URB. MATA REDONDA MARACAY	', 'qb9z', 'NO'),
('MARIA', 'BODIAO', 'E-81694054', 'C', '', 'Conserje', '7-2-1994', 'AV. INTECOMUNAL PARCELA Nª33	', 's47j', 'NO'),
('BRAHYAN', 'DEVODIER', 'V-19652519', 'S', '', 'Representante de Ven', '16-1-2012', '	', 't3aq', ''),
('RONALD', 'MOREJON', 'V-17472821', 'S', '', 'Representante de Ven', '18-2-2010', '	', 't55w', ''),
('JONATHAN', 'KLEE', 'V-14959204', 'C', '', 'Representante de Ven', '16-8-2011', '	', 'vugl', ''),
('ANGEL ', 'PEREZ', 'V-7254685', 'C', '02432675520', 'Jefe de Cuentas por ', '22-2-1988', 'CALLE ALTAMIRA Nª23 BARRIO SAN MARTIN DE PORRE PALO NEGRO MARACAY EDO-ARAGUA	', 'wiy6', ''),
('AMILCAR', 'GIMON', 'V-15993886', 'C', '2357430', 'Coordinador Administ', '27-1-2004', 'AV. BERMUDEZ MARACAY	', 'y5tc', 'NO');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;

--
-- Filtros para la tabla `liquidaciones`
--
ALTER TABLE `liquidaciones`
  ADD CONSTRAINT `liquidaciones_ibfk_1` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `rrhh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `IDusu` int(2) NOT NULL,
  `usuarioRH` varchar(15) NOT NULL,
  `claveRH` varchar(15) NOT NULL,
  `tipo` char(1) NOT NULL,
  PRIMARY KEY (`IDusu`),
  UNIQUE KEY `usuarioRH` (`usuarioRH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDusu`, `usuarioRH`, `claveRH`, `tipo`) VALUES
(3, '3', '3', 'E'),
(10, 'lirolaiza', 'yonela', 'A'),
(20, 'olc', 'olc123', 'A'),
(21, 'anar', '18231438', 'A'),
(22, 'Yohelys', 'olcolc', 'A'),
(25, 'julio899', 'vinachi89', 'A'),
(26, 'julio899c', 'vinachi89', 'C'),
(98, 'camacho', 'LMCS5332', 'A'),
(99, 'RRHH', 'diuglisd', 'A');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
