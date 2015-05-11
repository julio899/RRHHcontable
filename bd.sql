-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2015 a las 16:21:45
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `compacto`
--
CREATE DATABASE IF NOT EXISTS `compacto` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `compacto`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('00qm', 'zz1o', 'BANCO-PLAZA', 'CHEQUEADO', '00640981', '27942', 25000, '2014-02-25', ''),
('0emv', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '09531151', '11670', 500, '2007-08-07', ''),
('0s0w', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '90636113', '21883', 1500, '2011-05-12', ''),
('0ybw', 'yba3', 'BANCO-CARIBE', 'CHEQUEADO', '52961500', '10877', 5000, '2007-02-22', ''),
('22md', 'op7z', 'N/A-22md', 'CHEQUEADO', 'N/A-22md', 'N/A-22md', 4000, '2001-05-22', 'CHEQUE-> 59001999 '),
('230i', 'op7z', 'BANCO-PLAZA', 'CHEQUEADO', '00639925', '24187', 30000, '2012-05-30', ''),
('27ij', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '46558194', '24343', 3000, '2012-06-25', ''),
('2kaz', 'j105', 'BANCO-CARIBE', 'CHEQUEADO', '34207261', '8596', 500, '2004-03-25', ''),
('2ntw', '72k0', 'BANCO-MERCANTIL', 'CHEQUEADO', '02662411', '21523', 9900, '2011-03-30', ''),
('2o04', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '26478886', '25141', 2000, '2012-11-05', ''),
('2rye', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '55090186', '8215', 700, '2004-01-21', ''),
('2v5p', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '12652843', '14264', 1500, '2006-04-04', ''),
('42v0', 'v3zq', 'BANCO-VENEZUELA', 'CHEQUEADO', '17244', '17244', 5000, '2009-02-12', ''),
('4gzq', 'eyqv', 'BANCO-BOD', 'CHEQUEADO', '00000530', '14912', 3000, '2006-08-30', ''),
('4icg', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '64112506', '20299', 1000, '2010-09-21', ''),
('4rgg', 'my8y', 'BANCO-CARIBE', 'CHEQUEADO', '4688495', '16503', 4500, '2008-02-28', ''),
('4zg3', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '53898456', '18022', 5000, '2009-09-28', ''),
('52gn', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '86810999', '10120', 1500, '2005-02-16', ''),
('53v8', 'op7z', 'BANCO-PLAZA', 'CHEQUEADO', '00638022', '11352', 16000, '2007-06-04', ''),
('54eo', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '70536194', '22108', 4500, '2011-06-20', ''),
('5f26', 'op7z', 'BANCO-EXTERIOR', 'EMITIDO', '90008074', '28551', 250000, '2014-06-26', ''),
('5tgz', 'wuf4', 'BANCO-CARIBE', 'CHEQUEADO', '60012434', '20201', 6000, '2010-09-08', ''),
('5xir', 'qw4t', 'BANCO-VENEZUELA', 'CHEQUEADO', '71087316', '12816', 7000, '2009-08-13', ''),
('66f7', 'yba3', 'BANCO-MERCANTIL', 'CHEQUEADO', '03471643', '10059', 2400, '2005-02-02', ''),
('6xdh', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '39615836', '15803', 1180, '2006-10-29', ''),
('70ej', 'wuf4', 'BANCO-CARIBE', 'CHEQUEADO', '14984494', '16502', 2000, '2008-02-28', ''),
('76hr', 'my8y', 'BANCO-MERCANTIL', 'CHEQUEADO', '79741600', '28055', 100000, '2014-03-20', ''),
('7cag', 'xiqk', 'BANCO-PLAZA', 'CHEQUEADO', '00638519', '17262', 10000, '2009-02-17', ''),
('7mtc', 'd5ux', 'BANCO-EXTERIOR', 'CHEQUEADO', '91069075', '28225', 5000, '2014-04-28', ''),
('7nio', '72k0', 'BANCO-CARIBE', 'CHEQUEADO', '36005040', '23738', 10900, '2012-04-26', ''),
('7w0g', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '779341147', '11661', 2500, '2007-08-02', ''),
('88eh', 'qw4t', 'BANCO-CARIBE', 'CHEQUEADO', '05391127', '22271', 14000, '2011-07-21', ''),
('8tpi', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '65161518', '15134', 1000, '2006-10-10', ''),
('9t2s', 'j105', 'N/A-9t2s', 'CHEQUEADO', 'N/A-9t2s', 'N/A-9t2s', 400, '2003-04-30', ' CHEQUE->47792752'),
('a4t3', 'j105', 'BANCO-EXTERIOR', 'CHEQUEADO', '56412996', '22971', 33000, '2011-11-02', ''),
('a68j', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '62832453', '5462', 500, '2002-07-04', ''),
('a8s2', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '05974795', '11853', 5000, '2008-08-27', ''),
('ad8b', 'my8y', 'BANCO-PLAZA', 'CHEQUEADO', '00529802', '7478', 3468.8, '2003-09-04', ''),
('agsm', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '97784352', '16555', 620, '2008-03-11', ''),
('atdj', 'yba3', 'BANCO-CARIBE', 'CHEQUEADO', '43068622', '23613', 10000, '2012-04-11', ''),
('atr8', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '91536239', '22708', 1000, '2011-09-26', ''),
('az5f', 'wuf4', 'BANCO-CARIBE', 'CHEQUEADO', '23298354', '17836', 1800, '2009-06-26', ''),
('b7ui', 'yba3', 'BANCO-PROVINCIAL', 'CHEQUEADO', '02526701', '5895', 350, '2002-09-12', ''),
('bb7q', 'yba3', 'BANCO-MERCANTIL', 'CHEQUEADO', '55662417', '21621', 15000, '2011-04-12', ''),
('bhp5', 'yba3', 'BANCO-MERCANTIL', 'CHEQUEADO', '61741599', '28054', 50000, '2014-03-20', ''),
('bkww', 'v3zq', 'BANCO-PLAZA', 'CHEQUEADO', '00638835', '18775', 5000, '2010-02-09', ''),
('boaz', 'op7z', 'N/A-boaz', 'CHEQUEADO', 'N/A-boaz', 'N/A-boaz', 3000, '2002-07-16', ' CHEQUE->93144990'),
('buyn', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '94998357', '17880', 1700, '2009-07-03', ''),
('c07g', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '64068571', '23485', 13000, '2012-03-14', ''),
('caoh', 'my8y', 'BANCO-MERCANTIL', 'CHEQUEADO', '29198449', '17930', 5000, '2009-09-15', ''),
('cd3g', 'j105', 'BANCO-CARIBE', 'CHEQUEADO', '96299184', '10223', 1000, '2005-03-14', ''),
('ce4c', 'j105', 'BANCO-MERCANTIL', 'CHEQUEADO', '958618', '2115', 1000, '2000-11-01', ''),
('cjab', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '72374814', '16843', 1000, '2008-05-19', ''),
('cp5j', 'op7z', 'BANCO-EXTERIOR', 'CHEQUEADO', '77450343', '26234', 50000, '2013-05-09', ''),
('d5yn', 'op7z', 'BANCO-MERCANTIL', 'CHEQUEADO', '45337011', '20330', 16000, '2010-07-28', ''),
('DDwu', 'qw4t', 'EXTERIOR', 'EMITIDO', '98824691', '29606', 49000, '2015-03-26', ''),
('e27w', 'd5ux', 'BANCO-MERCANTIL', 'CHEQUEADO', '28925172', '21462', 2000, '2011-03-24', ''),
('e48o', 'eyqv', 'BANCO-PLAZA', 'CHEQUEADO', '00640954', '27869', 80000, '2014-02-15', ''),
('eg6t', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '38505090', '23870', 4000, '2012-05-16', ''),
('ehwy', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '08861461', '10770', 1000, '2007-01-29', ''),
('er82', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '53062769', '25899', 3000, '2013-03-14', ''),
('eU8n', 'd5ux', 'EXTERIOR', 'EMITIDO', '98824692', '29607', 25000, '2015-03-26', ''),
('f3vf', 'yba3', 'BANCO-CARIBE', 'CHEQUEADO', '97762782', '26045', 30000, '2013-04-11', ''),
('GbHG', 'zz1o', 'BANCARIBE', 'EMITIDO', '12617733', '29739', 45000, '2015-05-05', ''),
('gdh2', 'wuf4', 'BANCO-CARIBE', 'CHEQUEADO', '62832478', '0015', 200, '2002-05-27', ''),
('gggr', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '00972770', '16691', 650, '2005-07-27', ''),
('godj', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '65339270', '24911', 6000, '2012-09-27', ''),
('gwez', 'v3zq', 'BANCO-BOD', 'CHEQUEADO', '09001800', '23511', 6000, '2012-03-21', ''),
('gyc0', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '53572581', '13537', 400, '2005-10-04', ''),
('h2ui', 'qw4t', 'BANCO-CARIBE', 'CHEQUEADO', '29012580', '26089', 11000, '2013-04-17', ''),
('h5ah', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '96612690', '26887', 6000, '2013-08-14', ''),
('hqd2', 'd5ux', 'N/A-hqd2', 'CHEQUEADO', 'N/A-hqd2', 'N/A-hqd2', 200, '2002-10-30', ' '),
('j4do', 'zz1o', 'N/A-j4do', 'CHEQUEADO', 'N/A-j4do', 'N/A-j4do', 212, '1998-07-14', ' '),
('johu', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '87464416', '5689', 200, '2002-08-06', ''),
('jyxf', '72k0', 'BANCO-BANESCO', 'CHEQUEADO', '21890368', '19227', 2000, '2010-04-22', ''),
('kfrq', 'yba3', 'BANCO-CARIBE', 'CHEQUEADO', '70852893', '7222', 1000, '2003-07-01', ''),
('kibn', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '71574822', '16957', 2000, '2008-06-09', ''),
('knoq', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '02141737', '19120', 4500, '2010-04-08', ''),
('kur8', 'qw4t', 'BANCO-EXTERIOR', 'CHEQUEADO', '64805041', '24172', 13600, '2012-05-25', ''),
('m3ox', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '28691193', '23253', 1500, '2012-02-01', ''),
('m5tx', 'zz1o', 'BANCO-MERCANTIL', 'CHEQUEADO', '49043184', '16539', 2000, '2008-03-07', ''),
('mfua', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '66698488', '18341', 7000, '2009-11-19', ''),
('mh5s', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '02872588', '13572', 2000, '2005-10-11', ''),
('n4do', 'yba3', 'BANCO-BANESCO', 'CHEQUEADO', '14901577', '19239', 10000, '2010-04-26', ''),
('n632', 'zz1o', 'BANCO-BANESCO', 'CHEQUEADO', '24521638', '17269', 2000, '2009-02-19', ''),
('n6mf', 'yba3', 'BANCO-MERCANTIL', 'CHEQUEADO', '885604569', '14512', 3500, '2006-06-02', ''),
('oqxt', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '21599171', '10206', 1500, '2005-03-09', ''),
('owc3', 'mj4j', 'BANCO-CARIBE', 'CHEQUEADO', '77662783', '26046', 9000, '2013-04-11', ''),
('oxuf', 'my8y', 'BANCO-PLAZA', 'CHEQUEADO', '00530242', '14450', 7000, '2006-05-18', ''),
('P40s', 'd5ux', 'BANCARIBE', 'EMITIDO', '26517734', '29740', 20000, '2015-05-05', ''),
('p7yy', 'xiqk', 'BANCO-BANESCO', 'CHEQUEADO', '46672200', '27198', 6000, '2013-10-02', ''),
('pqt8', 'wuf4', 'BANCO-BOD', 'CHEQUEADO', '00000346', '13941', 780, '2006-01-19', ''),
('psdx', 'zz1o', 'N/A-psdx', 'CHEQUEADO', 'N/A-psdx', 'N/A-psdx', 100, '2002-06-30', ' '),
('qcbr', 'my8y', 'BANCO-EXTERIOR', 'CHEQUEADO', '08856884', '11043', 3000, '2007-03-30', ''),
('qe8e', 'xiqk', 'BANCO-EXTERIOR', 'CHEQUEADO', '72752559', '25666', 5000, '2013-02-07', ''),
('qi3r', 'v3zq', 'BANCO-CARIBE', 'CHEQUEADO', '88889592', '8340', 600, '2007-03-01', ''),
('qyi4', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '34110206', '17397', 6500, '2009-03-20', ''),
('R204', 'yba3', 'PLAZA', 'EMITIDO', '00641110', '29414', 81000, '2015-02-19', ''),
('ra2v', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '8285309', '18475', 1600, '2006-08-16', ''),
('rk7g', 'my8y', 'BANCO-CARIBE', 'CHEQUEADO', '99612364', '19884', 4000, '2010-07-26', ''),
('rnbd', 'j105', 'N/A-rnbd', 'CHEQUEADO', 'N/A-rnbd', 'N/A-rnbd', 100, '2003-05-08', ' CHEQUE->87292757'),
('ruj0', 'eyqv', 'BANCO-EXTERIOR', 'CHEQUEADO', '33845308', '19249', 5300, '2010-04-27', ''),
('s6mp', 'xiqk', 'BANCO-CARIBE', 'CHEQUEADO', '34258177', '24281', 6000, '2012-06-14', ''),
('s6z0', 'xiqk', 'BANCO-MERCANTIL', 'CHEQUEADO', '48741601', '28056', 35000, '2014-03-20', ''),
('stf3', 'mj4j', 'BANCO-PLAZA', 'CHEQUEADO', '00640028', '28224', 30000, '2014-04-24', ''),
('t3tz', 'eyqv', 'BANCO-CARIBE', 'CHEQUEADO', '66236252', '22811', 3000, '2011-10-06', ''),
('tdrr', 'qw4t', 'BANCO-EXTERIOR', 'EMITIDO', '91801672', '28362', 50000, '2014-05-22', ''),
('tt3q', 'd5ux', 'BANCO-EXTERIOR', 'CHEQUEADO', '46425209', '19761', 5000, '2010-07-08', ''),
('tumr', 'my8y', 'BANCO-CARIBE', 'CHEQUEADO', '56391262', '23426', 15000, '2012-03-01', ''),
('tv4h', 'd5ux', 'BANCO-BOD', 'CHEQUEADO', '17001600', '18020', 5000, '2009-09-28', ''),
('upwf', 'j105', 'BANCO-MERCANTIL', 'CHEQUEADO', '53000719', '10995', 9000, '2007-03-20', ''),
('uqfd', 'd5ux', 'BANCO-CARIBE', 'CHEQUEADO', '90474441', '27979', 15000, '2014-03-06', ''),
('ut2w', 'wuf4', 'BANCO-EXTERIOR', 'CHEQUEADO', '56354138', '8329', 600, '2004-02-10', ''),
('vbet', 'op7z', 'BANCO-MERCANTIL', 'CHEQUEADO', '1424310', '12605', 22000, '2009-07-13', ''),
('vies', 'v3zq', 'BANCO-MERCANTIL', 'CHEQUEADO', '10662413', '21525', 5600, '2011-03-30', ''),
('vq3z', 'zz1o', 'BANCO-CARIBE', 'CHEQUEADO', '30462775', '25976', 4000, '2013-04-02', ''),
('vqis', 'zz1o', 'BANCO-MERCANTIL', 'EMITIDO', '06015252', '28779', 30000, '2014-08-21', ''),
('vwhg', 'd5ux', 'BANCO-BANESCO', 'CHEQUEADO', '47855040', '12627', 4000, '2009-07-14', ''),
('w65U', 'my8y', 'MERCANTIL', 'EMITIDO', '57015317', '29349', 84000, '2015-02-06', ''),
('Wa1W', 'xiqk', 'BANCARIBE', 'EMITIDO', '21141834', '29525', 52000, '2015-03-12', ''),
('wfd1', 'yba3', 'N/A-wfd1', 'CHEQUEADO', 'N/A-wfd1', 'N/A-wfd1', 67.5, '2001-08-24', ' VAUCHER->3726'),
('wjvb', 'eyqv', 'BANCO-BOD', 'CHEQUEADO', '45002214', '26706', 10000, '2013-07-22', ''),
('wkph', 'zz1o', 'BANCO-BOD', 'CHEQUEADO', '00000523', '14914', 600, '2006-08-30', ''),
('wonp', 'xiqk', 'BANCO-BANESCO', 'EMITIDO', '12672158', '28927', 29000, '2014-09-30', ''),
('xtHk', 'mj4j', 'EXTERIOR', 'EMITIDO', '99685926', '29366', 30000, '2015-02-11', ''),
('YGgW', 'op7z', 'EXTERIOR', 'EMITIDO', '97908272', '29521', 150000, '2015-03-12', ''),
('yozk', 'my8y', 'BANCO-PLAZA', 'CHEQUEADO', '00639369', '21422', 20000, '2011-03-17', ''),
('yr5e', 'my8y', 'BANCO-BOD', 'CHEQUEADO', '07002057', '25689', 15000, '2013-02-07', ''),
('ysrk', 'op7z', 'BANCO-MERCANTIL', 'CHEQUEADO', '72471554', '13958', 7000, '2006-01-27', ''),
('ZAFm', 'eyqv', 'PLAZA', 'EMITIDO', '00641109', '29413', 115000, '2015-02-19', ''),
('zk82', 'd5ux', 'BANCO-EXTERIOR', 'CHEQUEADO', '81352750', '27015', 10000, '2013-09-05', ''),
('ztyu', 'v3zq', 'BANCO-CARIBE', 'CHEQUEADO', '72612628', '26647', 14000, '2013-07-11', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Truncar tablas antes de insertar `liquidaciones`
--

TRUNCATE TABLE `liquidaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('TIWER ELIAS', 'SANCHEZ PEREZ', 'V-15181995', 'C', '', 'Representante de Ven', '4-5-2009', '	', '72k0', 'NO'),
('LUIS MANUEL', 'CAMACHO SOUBLETT', 'V-5332750', 'C', '', 'Gerente de RRHH', '1-10-1996', '	', 'd5ux', ''),
('JAVIER GREGORIO', 'GARCIA GUZMAN', 'V-12311698', 'C', '', 'Representante de Ven', '1-6-', '	', 'eyqv', ''),
('FERNANDO', 'RODRIGUEZ PESTANO', 'V-9434343', 'C', '', 'Representante de Ven', '4-1-1994', '	', 'j105', ''),
('NESTOR', 'GARCIA', 'V-14683063', 'C', '', 'Representante de Ven', '27-2-2012', '	', 'mj4j', ''),
('JOSE MANUEL', 'RODREIGUEZ MOSQUERA', 'E-81920034', 'C', '', 'Supervisor de Ventas', '2-8-1999', '	', 'my8y', ''),
('JOAQUIN MANUEL', 'DA COSTA PINTO', 'V-9657162', 'C', '', 'Gerente de Ventas', '3-1-1994', '	', 'op7z', ''),
('EDGARDO JOSE', 'PARRA MOSQUERA', 'V-12612151', 'C', '', 'Representante de Ven', '19-3-2007', '	', 'qw4t', ''),
('ABRAHAM JOSUE', 'DURATE MOLINA', 'V-11087802', 'C', '', 'Representante de Ven', '16-5-2006', '	', 'v3zq', ''),
('JULIO JOSE ', 'ZARATE MARTINEZ', 'V-9962472', 'S', '', 'Cajero', '4-7-2001', '	', 'wuf4', ''),
('PABLO', 'PEREZ', 'V-13802210', 'C', '', 'Representante de Ven', '6-7-2004', '	', 'xiqk', ''),
('ARGENIS CARMELO', 'GARCIA GUZMAN', 'V-12997802', 'C', '', 'Representante de Ven', '16-8-2001', '	', 'yba3', ''),
(' GARCIA LIROLAIZA', 'JOSEFINA', 'V-10491834', 'S', '', 'Analista Contable', '1-6-1994', '			', 'zz1o', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `anticipo_prestaciones_ibfk_1` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;

--
-- Filtros para la tabla `liquidaciones`
--
ALTER TABLE `liquidaciones`
  ADD CONSTRAINT `liquidaciones_ibfk_1` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `compactoandina`
--
CREATE DATABASE IF NOT EXISTS `compactoandina` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `compactoandina`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `compactolara`
--
CREATE DATABASE IF NOT EXISTS `compactolara` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `compactolara`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('02yp', '96gi', 'BANCO-MERCANTIL', 'CHEQUEADO', '17241602', '25467', 6000, '2011-07-21', ''),
('0ao3', '38a9', 'BANCO-VENEZUELA', 'CHEQUEADO', '27087517', '18834', 3000, '2010-02-18', ''),
('0d4a', 'wr95', 'BANCO-CARIBE', 'CHEQUEADO', '98191159', '22473', 1600, '2011-08-17', ''),
('0ipt', '5xdq', 'BANCO-PLAZA', 'CHEQUEADO', '00638690', '19958', 1400, '2007-08-10', ''),
('0urx', 'u4kb', 'BANCO-VENEZUELA', 'CHEQUEADO', '61309401', '25668', 15000, '2011-09-15', ''),
('0yfy', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '18411240', '16371', 600, '2005-03-14', ''),
('0zcf', 'oqwt', 'BANCO-CARIBE', 'CHEQUEADO', '43611024', '13411', 500, '2005-09-14', ''),
('0zjm', '3o03', 'BANCO-BOD', 'CHEQUEADO', '45001948', '25024', 6000, '2012-10-17', ''),
('2Huc', 'oqwt', 'BANCARIBE', 'EMITIDO', '65841827', '29401', 8000, '2015-03-13', ''),
('2iyy', 'qs70', 'BANCO-MERCANTIL', 'CHEQUEADO', '24518052', '25806', 6000, '2011-10-26', ''),
('3766', '9a1i', 'BANCO-BOD', 'CHEQUEADO', '47001267', '21578', 4000, '2011-11-07', ''),
('3s30', 'r3fx', 'BANCO-CARIBE', 'CHEQUEADO', '08962720', '26485', 8500, '2013-06-13', ''),
('3xge', '3o03', 'BANCO-CARIBE', 'CHEQUEADO', '22737293', '15234', 500, '2004-06-01', ''),
('42zm', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '31311237', '16358', 900, '2005-03-14', ''),
('43m6', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '24532800', '22474', 10000, '2009-04-01', ''),
('47aq', '38a9', 'BANCO-EXTERIOR', 'CHEQUEADO', '88008659', '27884', 28000, '2014-02-15', ''),
('4ctf', 'wr95', 'BANCO-BOD', 'CHEQUEADO', '32001034', '16695', 1500, '2008-04-11', ''),
('5ENg', '71tx', 'BANCARIBE', 'EMITIDO', '32717732', '29738', 45000, '2015-05-05', ''),
('5ji0', 'oqwt', 'BANCO-BOD', 'CHEQUEADO', '18002091', '25923', 4000, '2013-03-19', ''),
('5uyx', '71tx', 'BANCO-MERCANTIL', 'CHEQUEADO', '73909251', '28277', 5000, '2013-10-17', ''),
('5vef', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '10816002', '20228', 7500, '2007-10-04', ''),
('66f7', 'azrp', 'BANCO-BANESCO', 'CHEQUEADO', '46169597', '26150', 2000, '2012-02-01', ''),
('6tjj', '4wdm', 'BANCO-CARIBE', 'CHEQUEADO', '71831187', '10897', 2200, '2007-03-01', ''),
('6y7g', 'rer0', 'BANCO-CARIBE', 'EMITIDO', '05312838', '28946', 25000, '2014-06-12', ''),
('7rv2', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '61510316', '22370', 1000, '2009-02-13', ''),
('8fbh', 'qs70', 'BANCO-BANESCO', 'CHEQUEADO', '30329649', '26638', 5300, '2012-06-21', ''),
('a4mv', 'oqwt', 'BANCO-CARIBE', 'EMITIDO', '54074648', '28680', 8000, '2014-07-23', ''),
('abbp', 'oqwt', 'BANCO-BOD', 'CHEQUEADO', '13001382', '20159', 1500, '2010-09-01', ''),
('aedj', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '56048061', '14062', 360, '2003-09-12', ''),
('aer8', 'oqwt', 'BANCO-EXTERIOR', 'CHEQUEADO', '82345853', '26842', 2600, '2013-08-08', ''),
('agpa', '5xdq', 'BANCO-EXTERIOR', 'CHEQUEADO', '56414449', '18344', 1100, '2006-07-12', ''),
('b85d', '4wdm', 'BANCO-VENEZUELA', 'CHEQUEADO', '27296309', '26865', 20000, '2013-08-13', ''),
('b8dg', '5xdq', 'BANCO-BANESCO', 'CHEQUEADO', '11464426', '21041', 2000, '2008-04-11', ''),
('BkSw', 'c50f', 'BANCARIBE', 'EMITIDO', '91741828', '29402', 8000, '2015-02-13', ''),
('cg5w', 'wr95', 'BANCO-EXTERIOR', 'CHEQUEADO', '45307601', '19924', 2500, '2010-07-28', ''),
('cjea', '5xdq', 'BANCO-VENEZUELA', 'CHEQUEADO', '11308995', '23772', 2500, '2010-03-22', ''),
('do8h', 'oqwt', 'BANCO-CARIBE', 'CHEQUEADO', '08225159', '21341', 600, '2011-03-03', ''),
('dtww', '38a9', 'BANCO-CARIBE', 'CHEQUEADO', '44310105', '12560', 2500, '2009-01-30', ''),
('emkm', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '33125264', '25087', 3000, '2011-03-24', ''),
('fh74', '4wdm', 'BANCO-EXTERIOR', 'CHEQUEADO', '56388988', '13443', 900, '2005-09-22', ''),
('fjx4', '5xdq', 'BANCO-BANESCO', 'CHEQUEADO', '40169625', '26478', 5000, '2012-05-03', ''),
('fnaq', '9a1i', 'BANCO-BOD', 'CHEQUEADO', '64000789', '11576', 4000, '2007-07-19', ''),
('fr04', 'g5r8', 'BANCO-MERCANTIL', 'CHEQUEADO', '03145551', '11997', 600, '2002-05-27', ''),
('fru5', 'wr95', 'BANCO-PLAZA', 'CHEQUEADO', '00640672', '26869', 11000, '2013-08-13', ''),
('g5mn', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '87891570', '26445', 30000, '2012-04-26', ''),
('gyhx', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '02825264', '25088', 6000, '2011-03-24', ''),
('gz4w', '4wdm', 'BANCO-BANESCO', 'CHEQUEADO', '43855033', '17849', 3500, '2009-06-30', ''),
('iq8o', 'wr95', 'BANCO-CARIBE', 'EMITIDO', '61774564', '28770', 5800, '2014-08-14', ''),
('jCiL', 'd36y', 'BANCARIBE', 'EMITIDO', '65541830', '29476', 17800, '2015-03-05', ''),
('k4mo', 'oqwt', 'BANCO-CARIBE', 'CHEQUEADO', '28731178', '10880', 2000, '2007-02-22', ''),
('kk1d', 'u4kb', 'N/A-kk1d', 'CHEQUEADO', 'N/A-kk1d', 'N/A-kk1d', 240, '2002-06-30', ' '),
('Koyf', '9a1i', 'MERCANTIL', 'EMITIDO', '96015318', '29350', 50000, '2015-02-06', ''),
('ks8t', '4wdm', 'BANCO-CARIBE', 'CHEQUEADO', '80591175', '22658', 8000, '2011-09-15', ''),
('kxbg', '4wdm', 'BANCO-MERCANTIL', 'CHEQUEADO', '63819436', '16615', 2400, '2008-03-27', ''),
('mhvn', '0kxe', 'BANCO-CARIBE', 'CHEQUEADO', '24305057', '23765', 2280, '2012-05-03', ''),
('mur0', 'd36y', 'BANCO-CARIBE', 'CHEQUEADO', '09905177', '27904', 5000, '2013-06-19', ''),
('n2xk', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '32261279', '19570', 4500, '2007-05-16', ''),
('nzmo', 'i5e6', 'BANCO-BOD', 'EMITIDO', '68002324', '28684', 15000, '2014-07-23', ''),
('ogec', '3o03', 'BANCO-MERCANTIL', 'CHEQUEADO', '39471575', '14326', 1500, '2006-04-18', ''),
('ojrc', 'azrp', 'BANCO-CARIBE', 'CHEQUEADO', '89825275', '25108', 1500, '2011-03-30', ''),
('oqno', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '65239060', '26650', 15000, '2012-06-26', ''),
('pazx', 'dpo5', 'BANCO-CARIBE', 'CHEQUEADO', '59102748', '19190', 700, '2007-02-22', ''),
('qczt', '71tx', 'BANCO-MERCANTIL', 'CHEQUEADO', '46662001', '26981', 7000, '2012-09-24', ''),
('qps5', '38a9', 'BANCO-CARIBE', 'CHEQUEADO', '92258197', '24423', 9000, '2012-07-06', ''),
('qs0i', 'urf6', 'BANCO-CARIBE', 'CHEQUEADO', '40781620', '24768', 2000, '2010-12-01', ''),
('r5h2', 'u4kb', 'N/A-r5h2', 'CHEQUEADO', 'N/A-r5h2', 'N/A-r5h2', 15000, '2010-08-06', ' '),
('r8i2', 'wr95', 'BANCO-CARIBE', 'CHEQUEADO', '14452845', '14289', 1000, '2006-04-05', ''),
('rwpr', 'ntrs', 'BANCO-CARIBE', 'CHEQUEADO', '93905041', '23739', 2400, '2012-04-26', ''),
('s2qo', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '03194113', '15799', 500, '2004-10-06', ''),
('s35r', 'wr95', 'BANCO-VENEZUELA', 'CHEQUEADO', '37087276', '17243', 2500, '2009-02-12', ''),
('sxdv', 'gcl8', 'BANCO-CARIBE', 'CHEQUEADO', '30358310', '28565', 11700, '2014-02-15', ''),
('utaw', 'd36y', 'BANCO-CARIBE', 'EMITIDO', '91974649', '28681', 16000, '2014-07-23', ''),
('uwi2', '3o03', 'BANCO-EXTERIOR', 'CHEQUEADO', '82345847', '26832', 3000, '2013-08-07', ''),
('v5wh', 'oqwt', 'BANCO-BOD', 'CHEQUEADO', '00000439', '14503', 1000, '2006-06-01', ''),
('vyms', '38a9', 'BANCO-EXTERIOR', 'CHEQUEADO', '77450332', '26190', 14000, '2013-05-07', ''),
('waxj', 'f1dw', 'BANCO-CARIBE', 'CHEQUEADO', '33625229', '24924', 2000, '2011-02-02', ''),
('wjhm', '38a9', 'BANCO-PLAZA', 'CHEQUEADO', '00639238', '21465', 5026, '2011-03-24', ''),
('x2e7', '9a1i', 'BANCO-MERCANTIL', 'CHEQUEADO', '13741361', '24494', 30000, '2012-07-18', ''),
('xvib', 'r3fx', 'BANCO-CARIBE', 'CHEQUEADO', '78836266', '22847', 10500, '2011-10-13', ''),
('y30s', '3o03', 'BANCO-BANESCO', 'CHEQUEADO', '15481625', '12163', 4000, '2008-11-03', ''),
('y5jm', 'g5r8', 'BANCO-EXTERIOR', 'CHEQUEADO', '56053518', '13817', 500, '2003-07-23', ''),
('ybbb', '1ba2', 'BANCO-CARIBE', 'CHEQUEADO', '64925302', '25255', 4000, '2011-05-17', ''),
('yiAL', '71tx', 'BANESCO', 'EMITIDO', '24672165', '14683', 30000, '2014-10-16', ''),
('yj0o', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '57905163', '28184', 15100, '2013-09-11', ''),
('ymou', '38a9', 'BANCO-CARIBE', 'CHEQUEADO', '19691144', '22337', 10000, '2011-07-28', ''),
('yxr2', 'oqwt', 'BANCO-VENEZUELA', 'CHEQUEADO', '78087491', '12846', 1500, '2009-08-14', ''),
('zhhj', 'oqwt', 'BANCO-PLAZA', 'CHEQUEADO', '00638830', '18751', 1500, '2010-02-04', ''),
('zkAq', '38a9', 'MERCANTIL', 'EMITIDO', '65015319', '29351', 62000, '2015-02-06', ''),
('znoj', 'h04y', 'BANCO-MERCANTIL', 'EMITIDO', '26909347', '28872', 20000, '2014-05-21', ''),
('zph7', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '60353045', '18238', 2500, '2006-06-14', ''),
('zq7q', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '18917095', '225', 300, '2001-11-27', ''),
('zwbk', 'wr95', 'BANCO-BOD', 'CHEQUEADO', '20030414', '15779', 2000, '2007-10-16', ''),
('zzgg', 'r3fx', 'BANCO-BOD', 'CHEQUEADO', '26001957', '25290', 11020, '2012-11-29', '');

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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('YERMIRA', 'COLMENARES', 'V-13567336', 'S', '', 'Recepcionista-Asiste', '1-1-2011', '	', '0kxe', ''),
('YOHANNA TERESA', 'ORELLANA FALCON', 'V-15961323', 'S', '', 'Representante de Ven', '5-10-2009', '	', '1ba2', 'NO'),
('ROBERTO DANIEL', 'COLMENAREZ  Z.', 'V-15340688', 'C', '', 'Supervisor de Ventas', '16-7-2007', '	', '38a9', ''),
('JONNIS ENRIQUEZ', 'PEREZ JIMENEZ', 'V-9991021', 'C', '', 'Auxiliar de Almacen', '14-3-2001', '	', '3o03', 'NO'),
('HUMBERTO PASTOR', 'CACERES PEREZ', 'V-11883716', 'C', '', 'Representante de Ven', '1-6-2004', '	', '4wdm', 'NO'),
('PASTOR AMADO', 'PIÑA NOGUERA', 'V-7375892', 'C', '', 'Jefe de Almacen', '21-7-2003', '	', '5xdq', 'NO'),
('ARMANDO', 'GALINDEZ', 'V-18334823', 'S', '', 'Representante de Ven', '2-5-2011', '	', '71tx', ''),
('JOSE', 'MENDEZ', 'V-9629565', 'C', '', 'Chofer', '7-7-2008', '	', '96gi', 'NO'),
('OLGA DEL CARMEN', 'RODRIGUEZ', 'V-11084640', 'C', '', 'Representante de Ven', '14-7-2003', '	', '9a1i', ''),
('WALTER JESUS', 'MENDEZ PINEDA', 'V-19590716', 'C', '', 'Ayudante de Camion', '21-8-2008', '	', 'azrp', 'NO'),
('JHONNY', 'ARANGUREN', 'V-23852733', 'S', '', 'REPRESENTANTE DE VEN', '2014-02-05', 'BARQUISIMETO', 'c50f', ''),
('JULIO', 'TORRES', 'V-17506313', 'S', '', 'Representante de Ven', '5-6-2012', '	', 'd36y', ''),
('GLENDY', 'VASQUEZ', 'V-12407611', 'C', '', 'Auxiliar de Almacen', '17-1-2006', '	', 'dpo5', 'NO'),
('LUIS ENRIQUE', 'LEON QUINTERO', 'V-16796733', 'C', '', 'Representante de Ven', '1-2-2010', '	', 'f1dw', 'NO'),
('ENRIQUE RAFAEL ', 'PEREZ RODRIGUEZ', 'V-4069856', 'C', '', 'Representante de Ven', '1-6-2001', '	', 'g5r8', 'NO'),
('CARLOS', 'ALVAREZ', 'V-15778846', 'S', '', 'Chofer', '16-6-2011', '	', 'gcl8', ''),
('SONNY', 'ARANGUREN', 'V-15668182', 'C', '', 'Representante de Ven', '22-5-2012', '	', 'h04y', ''),
('RICARDO', 'GARRIDO', 'V-21127588', 'S', '', 'Representante de Ven', '18-6-2012', '	', 'i5e6', ''),
('JHON', 'BONILLA', 'V-23812275', 'C', '', 'Cajero', '17-1-2011', '	', 'ntrs', 'NO'),
('JUAN BAUTISTA ', 'SUAREZ CRESPO', 'V-7370695', 'C', '', 'Auxiliar de Almacen', '11-5-1999', '	', 'oqwt', ''),
('FRANCISCO', 'GOMEZ', 'V-17943280', 'S', '', 'Representante de Ven', '1-7-2010', '	', 'qs70', 'NO'),
('JUAN CARLOS', 'CARRILLO', 'V-14384527', 'S', '', 'Representante de Ven', '25-1-2010', '	', 'r3fx', 'NO'),
('Arnaldo ', 'Suarez', 'V-17342836', 'C', '', 'Representante de Ven', '3-10-2011', '	', 'rer0', ''),
('KELVIN ALBEIRO', 'OVANDO ORTEGA', 'V-15533991', 'S', '', 'Coordinador Administ', '31-1-2001', '	', 'u4kb', 'NO'),
('FRANK DAVID', 'VIVAS GUERRERO', 'V-14412076', 'C', '', 'Representante de Ven', '28-6-2010', '	', 'urf6', 'NO'),
('FORTULIO ANTONIO', 'GRANADILLO JIMENEZ', 'V-12433705', 'C', '', 'Auxiliar de Almacen', '8-6-1999', '	', 'wr95', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `compactozulia`
--
CREATE DATABASE IF NOT EXISTS `compactozulia` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `compactozulia`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `deimport`
--
CREATE DATABASE IF NOT EXISTS `deimport` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `deimport`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('02ky', 'sfhz', 'BANCO-CARIBE', 'CHEQUEADO', '2500', '28567', 2500, '2014-02-14', ''),
('2cv8', 'cg4y', 'BANCO-CARIBE', 'CHEQUEADO', '59012795', '28787', 7400, '2014-04-29', ''),
('2dp5', 'cg4y', 'BANCO-CARIBE', 'CHEQUEADO', '73342229', '27704', 4000, '2013-04-11', ''),
('2epf', 'h5dm', 'BANCO-VENEZUELA', 'CHEQUEADO', '70087475', '21471', 1200, '2008-07-25', ''),
('2m7c', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '58725361', '25471', 2000, '2011-07-21', ''),
('2qyq', '2a7h', 'BANCO-EXTERIOR', 'CHEQUEADO', '54587519', '26290', 9000, '2012-03-08', ''),
('2tcx', '224m', 'BANCO-CARIBE', 'CHEQUEADO', '70942291', '27492', 5450, '2013-02-21', ''),
('3074', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '55536323', '26749', 3500, '2012-07-20', ''),
('30iv', 'awnb', 'BANCO-BOD', 'CHEQUEADO', '78000938', '24307', 2000, '2010-08-03', ''),
('36ou', 'cpdb', 'BANCO-CARIBE', 'CHEQUEADO', '17272769', '16692', 600, '2005-07-27', ''),
('3rkh', 'eea4', 'BANCO-BOD', 'CHEQUEADO', '17000951', '24390', 8000, '2010-08-19', ''),
('4jue', 'awnb', 'BANCO-CARIBE', 'CHEQUEADO', '23910308', '22310', 3000, '2009-01-29', ''),
('5bhs', 'nh9g', 'BANCO-CARIBE', 'CHEQUEADO', '45642282', '27463', 2000, '2013-02-14', ''),
('5gdz', 'nh9g', 'BANCO-PLAZA', 'CHEQUEADO', '00640096', '28601', 2000, '2014-02-25', ''),
('6fqf', 'cpdb', 'BANCO-CARIBE', 'CHEQUEADO', '23077756', '15015', 300, '2004-04-01', ''),
('6i4k', 'cpdb', 'N/A-6i4k', 'CHEQUEADO', 'N/A-6i4k', 'N/A-6i4k', 800, '2007-03-29', ' '),
('6n04', 'dsdc', 'BANCO-BANESCO', 'CHEQUEADO', '34169528', '25490', 5000, '2011-07-28', ''),
('6Npv', '224m', 'PLAZA', 'EMITIDO', '00640291', '29521', 30000, '2015-02-19', ''),
('6yww', 'a9xl', 'BANCO-CARIBE', 'CHEQUEADO', '83572708', '17029', 600, '2005-06-06', ''),
('6z0d', 'cg4y', 'BANCO-MERCANTIL', 'EMITIDO', '23909297', '29131', 5000, '2014-08-19', ''),
('70ih', 'mlv9', 'BANCO-BOD', 'EMITIDO', '65001336', '29068', 5000, '2014-07-23', ''),
('7jd5', '2a7h', 'BANCO-CARIBE', 'CHEQUEADO', '92012785', '28740', 37000, '2014-04-09', ''),
('7x66', 'sfhz', 'BANCO-CARIBE', 'CHEQUEADO', '52342293', '27528', 3000, '2013-02-28', ''),
('8E3j', 'sfhz', 'BANCARIBE', 'EMITIDO', '94574878', '29650', 3500, '2015-04-15', ''),
('8t3z', 'cg4y', 'BANCO-CARIBE', 'CHEQUEADO', '38405128', '28057', 2000, '2013-08-06', ''),
('8uhm', 'va7d', 'BANCO-CARIBE', 'EMITIDO', '78112862', '29048', 22000, '2014-07-11', ''),
('a37b', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '34737253', '15091', 250, '2004-04-27', ''),
('acgr', 'awnb', 'N/A-acgr', 'CHEQUEADO', 'N/A-acgr', 'N/A-acgr', 200, '2001-05-28', ' CHEQUE->17202141'),
('bppb', 'cpdb', 'BANCO-BOD', 'CHEQUEADO', '40000999', '24979', 1000, '2011-02-17', ''),
('bw3d', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '841202721', '19137', 1100, '2007-02-09', ''),
('bxzv', 'h5dm', 'BANCO-PLAZA', 'CHEQUEADO', '00530540', '17692', 700, '2006-01-25', ''),
('by8k', 'cpdb', 'BANCO-BANESCO', 'CHEQUEADO', '27854603', '23084', 400, '2009-09-28', ''),
('bzxi', '2a7h', 'BANCO-EXTERIOR', 'CHEQUEADO', '46561349', '24986', 6000, '2011-02-21', ''),
('cxmy', 'awnb', 'BANCO-MERCANTIL', 'CHEQUEADO', '17819803', '20948', 2500, '2008-03-14', ''),
('d63d', 'awnb', 'BANCO-BANESCO', 'CHEQUEADO', '22521474', '22768', 1000, '2009-06-18', ''),
('dbuo', 'sfhz', 'BANCO-CARIBE', 'CHEQUEADO', '14712796', '28788', 2000, '2014-04-29', ''),
('djah', 'nh9g', 'BANCO-CARIBE', 'EMITIDO', '69212882', '29196', 4000, '2014-09-10', ''),
('e5cb', 'cpdb', 'BANCO-BANESCO', 'CHEQUEADO', '44531851', '27455', 6000, '2013-02-07', ''),
('ecgn', 'cpdb', 'BANCO-CARIBE', 'CHEQUEADO', '90791364', '25626', 1000, '2011-09-01', ''),
('edgw', 'sfhz', 'BANCO-EXTERIOR', 'CHEQUEADO', '69873232', '28115', 1000, '2013-08-28', ''),
('euvz', '224m', 'BANCO-BANESCO', 'CHEQUEADO', '44073483', '25391', 2000, '2011-06-29', ''),
('exc5', 'dsdc', 'BANCO-BOD', 'CHEQUEADO', '86001021', '25149', 4000, '2011-04-12', ''),
('fv60', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '59932977', '22838', 4000, '2009-07-03', ''),
('gnon', 'cpdb', 'BANCO-PROVINCIAL', 'CHEQUEADO', '01722070', '15595', 150, '2004-08-16', ''),
('gtgz', 'dfnd', 'BANCO-BANESCO', 'CHEQUEADO', '32531860', '27569', 2500, '2013-03-07', ''),
('gtx8', '2a7h', 'BANCO-CARIBE', 'CHEQUEADO', '45310310', '22312', 4400, '2009-01-30', ''),
('gw3g', '2a7h', 'BANCO-CARIBE', 'CHEQUEADO', '74098590', '23801', 9000, '2010-03-25', ''),
('gwzb', 'awnb', 'BANCO-MERCANTIL', 'CHEQUEADO', '29311048', '13372', 200, '2003-04-09', ''),
('h2xo', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '18298647', '23654', 2550, '2010-02-22', ''),
('h8uv', 'a9xl', 'BANCO-CARIBE', 'CHEQUEADO', '65342283', '27464', 5000, '2013-02-14', ''),
('hRfZ', '2a7h', 'EXTERIOR', 'EMITIDO', '93310677', '29498', 70000, '2015-02-06', ''),
('ifw3', 'cpdb', 'BANCO-BOD', 'CHEQUEADO', '16000498', '20911', 1500, '2008-03-07', ''),
('j6g8', 'eea4', 'BANCO-BANESCO', 'CHEQUEADO', '43073545', '25130', 4000, '2011-04-07', ''),
('jf6u', 'a9xl', 'BANCO-BANESCO', 'CHEQUEADO', '27169617', '26326', 13000, '2012-03-22', ''),
('jnpj', 'sfhz', 'BANCO-BOD', 'CHEQUEADO', '98001126', '26320', 600, '2012-03-21', ''),
('kbzx', 'cpdb', 'BANCO-BOD', 'CHEQUEADO', '00000072', '18477', 300, '2006-08-18', ''),
('kjzd', 'h5dm', 'BANCO-BOD', 'CHEQUEADO', '82001022', '25150', 4100, '2011-04-12', ''),
('Kxm', 'sfhz', 'BANCARIBE', 'EMITIDO', '55312969', '29563', 10000, '2015-03-05', ''),
('mc64', 'awnb', 'BANCO-PLAZA', 'CHEQUEADO', '00530673', '18244', 500, '2006-06-16', ''),
('n3c5', 'h5dm', 'BANCO-EXTERIOR', 'CHEQUEADO', '27742261', '27829', 13800, '2013-05-29', ''),
('nx5k', '2a7h', 'BANCO-CARIBE', 'CHEQUEADO', '10232996', '23038', 6000, '2009-09-10', ''),
('nxsh', 'cpdb', 'BANCO-BOD', 'CHEQUEADO', '66000877', '23705', 700, '2010-03-08', ''),
('nxyv', '224m', 'BANCO-CARIBE', 'CHEQUEADO', '11858305', '28560', 9600, '2014-02-15', ''),
('nzwm', 'cpdb', 'BANCO-EXTERIOR', 'CHEQUEADO', '56397510', '17884', 500, '2006-03-16', ''),
('o7vf', 'a9xl', 'BANCO-CARIBE', 'CHEQUEADO', '06405222', '28034', 5000, '2013-07-29', ''),
('ojah', 'cpdb', 'BANCO-PLAZA', 'CHEQUEADO', '00639704', '26329', 3000, '2012-03-27', ''),
('os39', 'em0g', 'N/A-os39', 'CHEQUEADO', 'N/A-os39', 'N/A-os39', 67000, '2008-12-19', ' '),
('pg67', '224m', 'BANCO-MERCANTIL', 'CHEQUEADO', '51518130', '26386', 3500, '2012-04-11', ''),
('pxfb', 'va7d', 'BANCO-CARIBE', 'CHEQUEADO', '28242320', '27617', 6350, '2013-03-14', ''),
('q3v0', 'h5dm', 'BANCO-VENEZUELA', 'CHEQUEADO', '22086721', '15233', 250, '2004-06-01', ''),
('qdfp', 'cg4y', 'BANCO-PLAZA', 'CHEQUEADO', '00639682', '26253', 2500, '2012-03-06', ''),
('qrqp', '2a7h', 'BANCO-CARIBE', 'CHEQUEADO', '86742231', '27706', 22000, '2013-04-11', ''),
('r7c2', 'nh9g', 'BANCO-MERCANTIL', 'CHEQUEADO', '48661957', '26606', 1400, '2012-06-07', ''),
('rboo', 'h5dm', 'BANCO-CARIBE', 'CHEQUEADO', '84211117', '16860', 600, '2005-04-28', ''),
('rhyh', 'h5dm', 'BANCO-EXTERIOR', 'EMITIDO', '87830686', '29144', 30000, '2014-08-26', ''),
('rxzk', 'cpdb', 'BANCO-BANESCO', 'CHEQUEADO', '38531925', '28713', 7000, '2014-04-02', ''),
('s0i3', 'r53t', 'BANCO-BOD', 'CHEQUEADO', '17001222', '27070', 7000, '2012-10-17', ''),
('siuq', 'a9xl', 'BANCO-BANESCO', 'CHEQUEADO', '37854601', '23056', 10000, '2009-09-21', ''),
('sous', 'dfnd', 'BANCO-BOD', 'CHEQUEADO', '14001290', '28037', 3000, '2013-07-31', ''),
('szmx', 'dsdc', 'BANCO-CARIBE', 'CHEQUEADO', '25698503', '23849', 6300, '2010-04-13', ''),
('szyg', 'a9xl', 'BANCO-BANESCO', 'CHEQUEADO', '22890169', '23930', 5000, '2010-05-04', ''),
('u8a0', '224m', 'BANCO-CARIBE', 'EMITIDO', '83512881', '29195', 20000, '2014-09-10', ''),
('uIiA', 'dd73', 'EXTERIOR', 'EMITIDO', '96746562', '29607', 7000, '2015-03-26', ''),
('w0iz', 'a9xl', 'BANCO-PLAZA', 'CHEQUEADO', '00639541', '25285', 3500, '2011-05-26', ''),
('w0ph', 'r53t', 'BANCO-BANESCO', 'CHEQUEADO', '25169561', '25873', 6000, '2011-11-16', ''),
('w8n3', 'awnb', 'BANCO-CARIBE', 'CHEQUEADO', '98025325', '25378', 1000, '2011-06-20', ''),
('wdbr', 'nh9g', 'BANCO-CARIBE', 'EMITIDO', '54512834', '28933', 2000, '2014-06-09', ''),
('wezo', '224m', 'BANCO-EXTERIOR', 'CHEQUEADO', '65239089', '26797', 1000, '2012-08-03', ''),
('wffv', 'eea4', 'BANCO-CARIBE', 'CHEQUEADO', '96991533', '26307', 7000, '2012-03-14', ''),
('x2ja', 'cpdb', 'BANCO-CARIBE', 'CHEQUEADO', '75553041', '13448', 200, '2003-04-30', ''),
('xi27', 'cpdb', 'BANCO-BOD', 'CHEQUEADO', '240000692', '23625', 2000, '2009-03-19', ''),
('xSQm', 'cpdb', 'EXTERIOR', 'EMITIDO', '96746561', '29606', 6000, '2015-03-26', ''),
('y8pc', 'cpdb', 'BANCO-EXTERIOR', 'CHEQUEADO', '68529585', '27650', 5000, '2013-03-21', ''),
('zfag', 'a9xl', 'N/A-zfag', 'CHEQUEADO', 'N/A-zfag', 'N/A-zfag', 3000, '2007-03-29', ' '),
('zr0n', 'r53t', 'BANCO-CARIBE', 'EMITIDO', '25712850', '28994', 42000, '2014-06-26', ''),
('zs8b', 'a9xl', 'BANCO-MERCANTIL', 'CHEQUEADO', '97819870', '21341', 2500, '2008-06-19', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Truncar tablas antes de insertar `liquidaciones`
--

TRUNCATE TABLE `liquidaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('EDUARDO ', 'CORREIA', 'V-18531485', 'S', '', 'Representante de Ven', '1-6-2010', '	', '224m', ''),
('CRINTIAN JONNAT', 'RODRIGUEZ', 'V-17066140', 'C', '', 'Representante de Ven', '9-7-2007', '	', '2a7h', ''),
('JOSE DAVID ', 'DIAZ', 'V-16732636', 'S', '', 'Representante de Ven', '--', '	', 'a9xl', 'NO'),
('JOSE BENITO', 'MONTILLA', 'V-9633094', 'C', '', 'Chofer', '--', '		', 'awnb', 'NO'),
('DAYANA', 'ECHENIQUE', 'V-13256775', 'S', '', 'Asistente de Ventas', '9-11-2010', '	', 'cg4y', ''),
('EDGAR GILBERTO', 'CORONIL HERRERA', 'V-4555726', 'C', '', 'Chofer', '--', '	', 'cpdb', ''),
('ALEXANDER', 'LEONETT', 'V-13870515', 'S', '', 'AUXILIAR DE AL MACEN', '2011-04-25', 'MARACAY', 'dd73', ''),
('ALEJANDRO', 'OVANDO', 'V-17274255', 'S', '', 'Ayudante de Camion', '25-4-2011', '	', 'dfnd', 'NO'),
('ALFREDO', 'HURTADO', 'V-15746812', 'C', '', 'Representante de Ven', '--', '	', 'dsdc', 'NO'),
('MAUDY', 'MONTESINO', 'V-14162393', 'C', '', 'Representante de Ven', '--', '	', 'eea4', 'NO'),
('LEONARDO', 'CAMPOLI', 'V-10279262', 'C', '', 'Seleccione un Cargo-', '--', '	', 'em0g', 'NO'),
('ARTUR', 'GOUVEIA DA SILVA', 'E-81958484', 'S', '', 'Almacenista', '16-5-2002', '	', 'h5dm', ''),
('YERMIS', 'HERRERA', 'V-18855150', 'S', '', 'Auxiliar de Almacen', '28-2-2013', '	', 'mlv9', 'NO'),
('JOSE', 'ROSALES', 'V-19201522', 'C', '', 'Auxiliar de Almacen', '1-8-2011', '	', 'nh9g', 'NO'),
('ROMINA', 'GRATEROL', 'V-18253635', 'S', '', 'Representante de Ven', '9-3-2010', '	', 'r53t', ''),
('INERVIC', 'NIEVES', 'V-16765370', 'S', '', 'Recepcionista-Asiste', '17-10-2011', '	', 'sfhz', ''),
('ANTONIO', 'MUÑOZ', 'V-20515222', 'S', '', 'Representante de Ven', '9-1-2012', '	', 'va7d', '');

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
-- Base de datos: `deimportlara`
--
CREATE DATABASE IF NOT EXISTS `deimportlara` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `deimportlara`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('02yp', '96gi', 'BANCO-MERCANTIL', 'CHEQUEADO', '17241602', '25467', 6000, '2011-07-21', ''),
('0ipt', '5xdq', 'BANCO-PLAZA', 'CHEQUEADO', '00638690', '19958', 1400, '2007-08-10', ''),
('0urx', 'u4kb', 'BANCO-VENEZUELA', 'CHEQUEADO', '61309401', '25668', 15000, '2011-09-15', ''),
('0yfy', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '18411240', '16371', 600, '2005-03-14', ''),
('2iyy', 'qs70', 'BANCO-MERCANTIL', 'CHEQUEADO', '24518052', '25806', 6000, '2011-10-26', ''),
('42zm', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '31311237', '16358', 900, '2005-03-14', ''),
('43m6', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '24532800', '22474', 10000, '2009-04-01', ''),
('5uyx', '71tx', 'BANCO-MERCANTIL', 'CHEQUEADO', '73909251', '28277', 5000, '2013-10-17', ''),
('5vef', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '10816002', '20228', 7500, '2007-10-04', ''),
('66f7', 'azrp', 'BANCO-BANESCO', 'CHEQUEADO', '46169597', '26150', 2000, '2012-02-01', ''),
('6y7g', 'rer0', 'BANCO-CARIBE', 'EMITIDO', '05312838', '28946', 25000, '2014-06-12', ''),
('7rv2', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '61510316', '22370', 1000, '2009-02-13', ''),
('8fbh', 'qs70', 'BANCO-BANESCO', 'CHEQUEADO', '30329649', '26638', 5300, '2012-06-21', ''),
('aedj', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '56048061', '14062', 360, '2003-09-12', ''),
('agpa', '5xdq', 'BANCO-EXTERIOR', 'CHEQUEADO', '56414449', '18344', 1100, '2006-07-12', ''),
('b8dg', '5xdq', 'BANCO-BANESCO', 'CHEQUEADO', '11464426', '21041', 2000, '2008-04-11', ''),
('cjea', '5xdq', 'BANCO-VENEZUELA', 'CHEQUEADO', '11308995', '23772', 2500, '2010-03-22', ''),
('emkm', '5xdq', 'BANCO-CARIBE', 'CHEQUEADO', '33125264', '25087', 3000, '2011-03-24', ''),
('fjx4', '5xdq', 'BANCO-BANESCO', 'CHEQUEADO', '40169625', '26478', 5000, '2012-05-03', ''),
('fr04', 'g5r8', 'BANCO-MERCANTIL', 'CHEQUEADO', '03145551', '11997', 600, '2002-05-27', ''),
('g5mn', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '87891570', '26445', 30000, '2012-04-26', ''),
('gyhx', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '02825264', '25088', 6000, '2011-03-24', ''),
('kk1d', 'u4kb', 'N/A-kk1d', 'CHEQUEADO', 'N/A-kk1d', 'N/A-kk1d', 240, '2002-06-30', ' '),
('mhvn', '0kxe', 'BANCO-CARIBE', 'CHEQUEADO', '24305057', '23765', 2280, '2012-05-03', ''),
('mur0', 'd36y', 'BANCO-CARIBE', 'CHEQUEADO', '09905177', '27904', 5000, '2013-06-19', ''),
('n2xk', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '32261279', '19570', 4500, '2007-05-16', ''),
('ojrc', 'azrp', 'BANCO-CARIBE', 'CHEQUEADO', '89825275', '25108', 1500, '2011-03-30', ''),
('oqno', 'u4kb', 'BANCO-EXTERIOR', 'CHEQUEADO', '65239060', '26650', 15000, '2012-06-26', ''),
('qczt', '71tx', 'BANCO-MERCANTIL', 'CHEQUEADO', '46662001', '26981', 7000, '2012-09-24', ''),
('qs0i', 'urf6', 'BANCO-CARIBE', 'CHEQUEADO', '40781620', '24768', 2000, '2010-12-01', ''),
('r5h2', 'u4kb', 'N/A-r5h2', 'CHEQUEADO', 'N/A-r5h2', 'N/A-r5h2', 15000, '2010-08-06', ' '),
('s2qo', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '03194113', '15799', 500, '2004-10-06', ''),
('sxdv', 'gcl8', 'BANCO-CARIBE', 'CHEQUEADO', '30358310', '28565', 11700, '2014-02-15', ''),
('waxj', 'f1dw', 'BANCO-CARIBE', 'CHEQUEADO', '33625229', '24924', 2000, '2011-02-02', ''),
('y5jm', 'g5r8', 'BANCO-EXTERIOR', 'CHEQUEADO', '56053518', '13817', 500, '2003-07-23', ''),
('ybbb', '1ba2', 'BANCO-CARIBE', 'CHEQUEADO', '64925302', '25255', 4000, '2011-05-17', ''),
('yj0o', 'g5r8', 'BANCO-CARIBE', 'CHEQUEADO', '57905163', '28184', 15100, '2013-09-11', ''),
('znoj', 'h04y', 'BANCO-MERCANTIL', 'EMITIDO', '26909347', '28872', 20000, '2014-05-21', ''),
('zph7', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '60353045', '18238', 2500, '2006-06-14', ''),
('zq7q', 'u4kb', 'BANCO-CARIBE', 'CHEQUEADO', '18917095', '225', 300, '2001-11-27', '');

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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('YERMIRA', 'COLMENARES', 'V-13567336', 'S', '', 'Recepcionista-Asiste', '1-1-2011', '	', '0kxe', 'NO'),
('YOHANNA TERESA', 'ORELLANA FALCON', 'V-15961323', 'S', '', 'Representante de Ven', '5-10-2009', '	', '1ba2', 'NO'),
('PASTOR AMADO', 'PIÑA NOGUERA', 'V-7375892', 'C', '', 'Jefe de Almacen', '21-7-2003', '	', '5xdq', 'NO'),
('ARMANDO', 'GALINDEZ', 'V-18334823', 'S', '', 'Representante de Ven', '2-5-2011', '	', '71tx', 'NO'),
('JOSE', 'MENDEZ', 'V-9629565', 'C', '', 'Chofer', '7-7-2008', '	', '96gi', 'NO'),
('WALTER JESUS', 'MENDEZ PINEDA', 'V-19590716', 'C', '', 'Ayudante de Camion', '21-8-2008', '	', 'azrp', 'NO'),
('JULIO', 'TORRES', 'V-17506313', 'S', '', 'Representante de Ven', '5-6-2012', '	', 'd36y', 'NO'),
('LUIS ENRIQUE', 'LEON QUINTERO', 'V-16796733', 'C', '', 'Representante de Ven', '1-2-2010', '	', 'f1dw', 'NO'),
('ENRIQUE RAFAEL ', 'PEREZ RODRIGUEZ', 'V-4069856', 'C', '', 'Representante de Ven', '1-6-2001', '	', 'g5r8', 'NO'),
('CARLOS', 'ALVAREZ', 'V-15778846', 'S', '', 'Chofer', '16-6-2011', '	', 'gcl8', 'NO'),
('SONNY', 'ARANGUREN', 'V-15668182', 'C', '', 'Representante de Ven', '22-5-2012', '	', 'h04y', 'NO'),
('FRANCISCO', 'GOMEZ', 'V-17943280', 'S', '', 'Representante de Ven', '1-7-2010', '	', 'qs70', 'NO'),
('Arnaldo ', 'Suarez', 'V-17342836', 'C', '', 'Representante de Ven', '3-10-2011', '	', 'rer0', 'NO'),
('KELVIN ALBEIRO', 'OVANDO ORTEGA', 'V-15533991', 'S', '', 'Coordinador Administ', '31-1-2001', '	', 'u4kb', 'NO'),
('FRANK DAVID', 'VIVAS GUERRERO', 'V-14412076', 'C', '', 'Representante de Ven', '28-6-2010', '	', 'urf6', 'NO');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `dideco`
--
CREATE DATABASE IF NOT EXISTS `dideco` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dideco`;

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
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `liquidaciones`
--

TRUNCATE TABLE `liquidaciones`;
--
-- Volcado de datos para la tabla `liquidaciones`
--

INSERT INTO `liquidaciones` (`id`, `fecha`, `monto`, `IDT`) VALUES
(1, '1998-05-11', '21.000,00', 'idqs');

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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
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
('JULIO', 'VINACHI', 'V-18266159', 'C', '', 'Asistente-Sistemas', '15-6-2011', '	', 'idqs', 'NO'),
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
-- Base de datos: `dimosaandina`
--
CREATE DATABASE IF NOT EXISTS `dimosaandina` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dimosaandina`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `dimosazulia`
--
CREATE DATABASE IF NOT EXISTS `dimosazulia` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dimosazulia`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `olc`
--
CREATE DATABASE IF NOT EXISTS `olc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `olc`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;
--
-- Base de datos: `rrhh`
--
CREATE DATABASE IF NOT EXISTS `rrhh` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rrhh`;

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
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
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
--
-- Base de datos: `transdevi`
--
CREATE DATABASE IF NOT EXISTS `transdevi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `transdevi`;

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
  UNIQUE KEY `nro_concep` (`nro_concep`),
  KEY `IDT` (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `anticipo_prestaciones`
--

TRUNCATE TABLE `anticipo_prestaciones`;
--
-- Volcado de datos para la tabla `anticipo_prestaciones`
--

INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES
('2jk2', 'cbay', 'BANCO-BANESCO', 'CHEQUEADO', '46531895', '28153', 2000, '2013-09-05', ''),
('4euw', '4zlv', 'BANCO-MERCANTIL', 'CHEQUEADO', '74478718', '3117', 1200, '2011-02-17', ''),
('4r0q', '4zlv', 'BANCO-CARIBE', 'CHEQUEADO', '17792063', '3335', 3500, '2013-02-14', ''),
('4wbh', 'tc7f', 'BANCO-BOD', 'CHEQUEADO', '00000052', '18412', 2000, '2006-03-04', ''),
('4ylz', 'ernd', 'N/A-4ylz', 'CHEQUEADO', 'N/A-4ylz', 'N/A-4ylz', 328.65, '2008-03-15', ' '),
('6604', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '91078079', '2047', 400, '2006-02-23', ''),
('6ijq', 'pc2f', 'N/A-6ijq', 'CHEQUEADO', 'N/A-6ijq', 'N/A-6ijq', 1000, '2007-03-01', ' '),
('6o5r', '4zlv', 'BANCO-CARIBE', 'EMITIDO', '43116640', '3508', 2500, '2014-07-04', ''),
('83i2', 'c3o0', 'BANCO-CARIBE', 'CHEQUEADO', '25694727', '3350', 2300, '2013-03-06', ''),
('8ow0', 'ernd', 'BANCO-MERCANTIL', 'CHEQUEADO', '69478727', '3205', 2500, '2011-07-14', ''),
('8rdz', 'tc7f', 'BANCO-CARIBE', 'CHEQUEADO', '76191890', '1505', 7000, '2012-02-01', ''),
('8y2m', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '56294749', '3373', 4000, '2013-05-09', ''),
('a3ea', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '12416621', '3488', 3500, '2014-05-06', ''),
('a82x', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '75272794', '16741', 200, '2005-08-04', ''),
('dgqk', 'o7xu', 'BANCO-CARIBE', 'CHEQUEADO', '84294786', '3415', 2000, '2013-09-19', ''),
('dixo', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '54092074', '3346', 3000, '2013-02-28', ''),
('dkh6', 'c3o0', 'BANCO-CARIBE', 'CHEQUEADO', '36791912', '1526', 1500, '2012-03-29', ''),
('ev7t', '4zlv', 'BANCO-CARIBE', 'CHEQUEADO', '42039989', '3222', 2000, '2011-08-17', ''),
('fegm', '4zlv', 'BANCO-CARIBE', 'CHEQUEADO', '79213397', '3484', 7000, '2014-04-24', ''),
('frmc', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '35770482', '16199', 400, '2005-02-02', ''),
('g6tt', 'c3o0', 'EXTERIOR', 'EMITIDO', '98824679', '29594', 7000, '2015-03-26', ''),
('h67z', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '97491500', '26186', 1500, '2012-02-14', ''),
('hqvs', 'tc7f', 'BANCO-CARIBE', 'CHEQUEADO', '38217239', '005', 500, '2003-03-24', ''),
('i84x', 'tc7f', 'BANCO-CARIBE', 'CHEQUEADO', '00257727', '002', 1000, '2001-05-22', ''),
('iht4', 'tc7f', 'BANCO-BOD', 'CHEQUEADO', '90000885', '23761', 3600, '2010-03-18', ''),
('iptv', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '48389698', '2433', 700, '2008-03-07', ''),
('j7ky', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '32894771', '3396', 2000, '2013-07-31', ''),
('jots', 'shn4', 'BANCO-CARIBE', 'CHEQUEADO', '55591945', '1560', 1250, '2012-05-30', ''),
('nyvq', 'tc7f', 'BANCO-CARIBE', 'CHEQUEADO', '46189704', '2452', 500, '2008-03-11', ''),
('o03o', 'ernd', 'BANCO-CARIBE', 'CHEQUEADO', '38041903', '2883', 2000, '2010-03-11', ''),
('Qips', 'tc7f', 'PLAZA', 'EMITIDO', '00640302', '29572', 30000, '2015-03-11', ''),
('sspj', 'c3o0', 'BANCO-CARIBE', 'CHEQUEADO', '22016613', '3479', 3000, '2014-04-02', ''),
('stmv', 'pc2f', 'BANCO-BOD', 'CHEQUEADO', '50001048', '25422', 700, '2011-07-07', ''),
('sUyE', 'pc2f', 'EXTERIOR', 'EMITIDO', '98824680', '29595', 7000, '2015-03-26', ''),
('t40y', 'cbay', 'BANCO-CARIBE', 'CHEQUEADO', '70994805', '3440', 2000, '2013-10-31', ''),
('u0vj', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '45516608', '3468', 4000, '2014-03-12', ''),
('urqk', 'ernd', 'BANCO-VENEZUELA', 'CHEQUEADO', '66087563', '21960', 750, '2008-11-13', ''),
('vavz', 'vhxn', 'BANCO-BOD', 'CHEQUEADO', '51001112', '26093', 1100, '2012-01-19', ''),
('vh53', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '70791924', '2293', 500, '2007-06-27', ''),
('w6bv', 'pc2f', 'BANCO-MERCANTIL', 'CHEQUEADO', '15241685', '2909', 500, '2010-04-26', ''),
('x8mb', 'tc7f', 'BANCO-CARIBE', 'CHEQUEADO', '42977816', '14929', 206.600006103516, '2004-03-15', ''),
('y4iq', 'pc2f', 'BANCO-MERCANTIL', 'CHEQUEADO', '43478719', '3118', 1200, '2011-02-17', ''),
('yzku', 'pc2f', 'BANCO-CARIBE', 'CHEQUEADO', '08510568', '2568', 1500, '2009-02-10', ''),
('z5fg', 'pc2f', 'BANCO-MERCANTIL', 'CHEQUEADO', '56241666', '2853', 1000, '2010-02-18', ''),
('zmjp', '4zlv', 'BANCO-CARIBE', 'CHEQUEADO', '89191501', '26187', 1500, '2012-02-14', '');

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
-- Truncar tablas antes de insertar `rh_emp`
--

TRUNCATE TABLE `rh_emp`;
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
-- Truncar tablas antes de insertar `trabajadores`
--

TRUNCATE TABLE `trabajadores`;
--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES
('JEAN CARLOS', 'ARUJO VILLARREAL', 'E-14319771', 'C', '', 'Monta Carguista', '2-11-2009', '	', '4zlv', ''),
('HANGDIGUES', 'HERNANDEZ', 'V-13517884', 'C', '', 'Ayudante de Camion', '11-1-2011', '	', 'c3o0', ''),
('GUSTAVO', 'CHIRINOS', 'V-15738686', 'S', '', 'Auxiliar de Almacen', '3-9-2012', '	', 'cbay', ''),
('OSWALDO OCTAVIO', 'ZAMORA MEDINA', 'V-16758113', 'C', '', 'Auxiliar de Almacen', '2-5-2007', '	', 'ernd', 'NO'),
('JOSE', 'HIDALGO', 'V-24837571', 'S', '', 'Auxiliar de Almacen', '22-8-2013', '	', 'o7xu', 'NO'),
('OMAR ALBERTO', 'MARQUEZ', 'V-9438642', 'C', '', 'Chofer', '19-1-2004', '	', 'pc2f', ''),
('ALFONSO', 'RAMIREZ', 'V-20450921', 'C', '', 'Auxiliar de Almacen', '1-8-2011', '	', 'shn4', 'NO'),
('JOSE AXIVIADES', 'CONTRERAS LOPEZ', 'V-10103532', 'C', '', 'chequeador', '10-1-1994', '	', 'tc7f', ''),
('JERAR', 'FERNANDEZ', 'V-16129992', 'S', '', 'Auxiliar de Almacen', '19-1-2011', '	', 'vhxn', 'NO');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anticipo_prestaciones`
--
ALTER TABLE `anticipo_prestaciones`
  ADD CONSTRAINT `IDT` FOREIGN KEY (`IDT`) REFERENCES `trabajadores` (`IDT`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
