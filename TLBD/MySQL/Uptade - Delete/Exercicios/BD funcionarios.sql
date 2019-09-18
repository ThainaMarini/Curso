-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aula
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ aula;
USE aula;

--
-- Table structure for table `aula`.`funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE `funcionarios` (
  `codigo` int(11) NOT NULL auto_increment,
  `nome` varchar(50) default NULL,
  `cidade` varchar(50) default NULL,
  `estado` varchar(2) default NULL,
  `salario` float(10,2) default NULL,
  PRIMARY KEY  (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aula`.`funcionarios`
--

/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`codigo`,`nome`,`cidade`,`estado`,`salario`) VALUES 
 (1,'JOSE DA SILVA','SAO JOSE DO RIO PARDO','SP',1000.00),
 (2,'OSMAR DOS SANTOS','MOCOCA','SP',2000.00),
 (3,'CLEBER SILVEIRA','CURITIBA','PR',3500.00),
 (4,'JONAS DE ALMEIDA','BRASILIA','BR',1000.00),
 (5,'MARCELO DA SILVA','GOIANIA','GO',15574.00),
 (6,'MARIO SERGIO SOARES','CALDAS NOVAS','GO',1445.00),
 (7,'ISABELITA DA SILVA','SAO JOSE DO RIO PARDO','SP',199.00),
 (8,'ROSANA DOS ANJOS','LONDRINA','PR',1000.00),
 (9,'SILVIA DE SILVA','POCOS DE CALDA','MG',1000.00),
 (10,'AGUINALDO SOARES','MOCOCA','SP',19.00),
 (11,'ROBERTO DOS SANTOS','SAO JOSE DO RIO PARDO','SP',99.00),
 (12,'MARIA APARECIDA','MOCOCA','SP',100.00),
 (13,'JOANA GONCALVES','CURITIBA','PR',100.00),
 (14,'MARCO ANTONIO','POCOS DE CALDA','MG',1000.00),
 (15,'ANTONIO SERGIO','SAO JOSE DO RIO PARDO','SP',300.00),
 (16,'ISABELA SILVEIRA','FOZ DO IGUACU','PR',15000.00),
 (17,'MARCO APARECIDO','MOCOCA','SP',1000.00),
 (18,'JOANA DARC','GUAXUPE','MG',10000.00),
 (19,'PEDRO ALVARES CABRAL','SAO JOSE DO RIO PARDO','SP',4566.00);
INSERT INTO `funcionarios` (`codigo`,`nome`,`cidade`,`estado`,`salario`) VALUES 
 (20,'CRISTOVAM COLOMBO','CRICIUMA','PR',3000.00),
 (21,'JOAQUIM DA SILVERIO','MOCOCA','SP',700.00),
 (22,'ECA DE QUEIROZ','GUAXUPE','MG',4897.00),
 (23,'MACHADO DE ASSIM','SAO JOSE DO RIO PARDO','SP',4000.00),
 (24,'EUCLIDES DA CUNHA','PARATI','RJ',2750.00),
 (25,'LUIS DA SILVA','MOCOCA','SP',3350.00),
 (26,'ADILSON BASILIO','RIO JANEIRO','RJ',4500.00),
 (27,'ADRIANO SILVA','SAO JOSE DO RIO PARDO','SP',900.00),
 (28,'ALEXA DARVIE','PETROPOLIS','RJ',3200.00),
 (29,'ANDRESSA MADEIRA','MOCOCA','SP',354.00),
 (30,'KELLY MADEIRA','SAO JOSE DO RIO PARDO','SP',3000.00),
 (31,'ELAINE APARECIDA','PORTO ALEGRE','RS',1569.00),
 (32,'ERICA AURELIA','GUARULHOS','SP',2500.00),
 (33,'ELAINE APARECIDA','PORTO ALEGRE','RS',350.00),
 (34,'FILIPE DE OLIVEIRA','RIO JANEIRO','RJ',4456.00),
 (35,'JOSE CARLOS DA SILVA','PORTO ALEGRE','RS',1500.00),
 (36,'KELLY CRISTINA','PETROPOLIS','RJ',448.00),
 (37,'LAIS ASSUNCAO','OSASCO','SP',350.00),
 (38,'FABIO JUNIOR','SAO PAULO','SP',445.00);
INSERT INTO `funcionarios` (`codigo`,`nome`,`cidade`,`estado`,`salario`) VALUES 
 (39,'BRUNO DA SILVA','MOCOCA','SP',350.00),
 (40,'FABIO DE ALMEIDA','SALVADOR','BA',500.00),
 (41,'FABIANO SOARES','UBERLANDIA','MG',350.00),
 (42,'FABRICA DA DE ALMEIDA','UBERABA','MG',789.00),
 (43,'CRISTIANE ASSUNCAO','BRASILIA','BR',999.00),
 (44,'MARIA MODESTA','CAMBURIU','SC',1000.00),
 (45,'LIGIA','SALVADOR','BA',989.00),
 (46,'PEDROS SERGIO','BRASILIA','BA',999.00),
 (47,'RODRIGO VICENTE','FLORIANOPOLIS','SC',1000.00),
 (48,'RODRIGO DOS ANJOS','SALVADOR','BA',999.00),
 (49,'WILLIAN JOSE','FLORIANOPOLIS','SC',100.00),
 (50,'JOSE WILLIAN','JUAZEIRO DO NORTE','BA',25000.00),
 (51,'SERGIO DOS SANTOS','RIO JANEIRO','SP',350.00),
 (52,'VAGNER FREITAS','CASA BRANCA','SP',1000.00),
 (53,'VITORIO DOS ANJOS','RIBEIRAO PRETO','SP',3000.00),
 (54,'VITORIA APARECIDA','CASA BRANCA','SP',1000.00),
 (55,'LEANDRO DA SILVA','RIBEIRAO PRETO','SP',2000.00);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
