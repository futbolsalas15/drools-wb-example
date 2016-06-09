-- MySQL Script generated by MySQL Workbench
-- 06/09/16 01:23:44
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema liquidacion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema liquidacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `liquidacion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `liquidacion` ;

-- -----------------------------------------------------
-- Table `liquidacion`.`HistoricoSalariosMin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `liquidacion`.`HistoricoSalariosMin` (
  `Ano` INT UNSIGNED NOT NULL COMMENT '',
  `SalarioMinDiario` DECIMAL(8,2) UNSIGNED NOT NULL COMMENT '',
  `SalarioMinMensual` DECIMAL(6,0) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`Ano`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liquidacion`.`EquivalenciaPBM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `liquidacion`.`EquivalenciaPBM` (
  `Pbm` INT NOT NULL COMMENT '',
  `SalariosMinimos` DECIMAL(5,3) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`Pbm`)  COMMENT '')
ENGINE = InnoDB
COMMENT = '	';

CREATE USER 'liquidacion' IDENTIFIED BY 'liquidacion';

GRANT SELECT ON TABLE `liquidacion`.* TO 'liquidacion';
GRANT SELECT, INSERT, TRIGGER ON TABLE `liquidacion`.* TO 'liquidacion';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `liquidacion`.* TO 'liquidacion';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `liquidacion`.`HistoricoSalariosMin`
-- -----------------------------------------------------
START TRANSACTION;
USE `liquidacion`;
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1984, 376.6, 11298);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1985, 451.92, 13558);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1986, 560.38, 16811);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1987, 683.66, 20510);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1988, 854.58, 25637);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1989, 1085.32, 32560);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1990, 1367.50, 41025);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1991, 1723.87, 51716);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1992, 2173.00, 65190);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1993, 2717.00, 81510);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1994, 3290.00, 98700);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1995, 3964.45, 118934);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1996, 4737.50, 142125);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1997, 5733.50, 172005);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1998, 6794.20, 203826);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (1999, 7882.00, 236460);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2000, 8670.00, 260100);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2001, 9533.33, 286000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2002, 10300.00, 309000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2003, 11066.67, 332000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2004, 11933.33, 358000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2005, 12716.67, 381500);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2006, 13600.00, 408000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2007, 14456.67, 433700);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2008, 15383.33, 461500);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2009, 16563.33, 496900);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2010, 17166.67, 515000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2011, 17853.33, 535600);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2012, 18890.00, 566700);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2013, 19650.00, 589500);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2014, 20533.33, 616000);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2015, 21478.33, 644350);
INSERT INTO `liquidacion`.`HistoricoSalariosMin` (`Ano`, `SalarioMinDiario`, `SalarioMinMensual`) VALUES (2016, 22981.83, 689455);

COMMIT;


-- -----------------------------------------------------
-- Data for table `liquidacion`.`EquivalenciaPBM`
-- -----------------------------------------------------
START TRANSACTION;
USE `liquidacion`;
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (1, 0.10);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (2, 0.10);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (3, 0.10);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (4, 0.10);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (5, 0.10);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (6, 0.11);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (7, 0.12);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (8, 0.13);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (9, 0.14);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (10, 0.15);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (11, 0.16);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (12, 0.18);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (13, 0.20);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (14, 0.23);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (15, 0.30);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (16, 0.41);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (17, 0.51);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (18, 0.650);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (19, 0.672);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (20, 0.694);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (21, 0.718);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (22, 0.742);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (23, 0.767);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (24, 0.793);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (25, 0.819);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (26, 0.846);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (27, 0.875);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (28, 0.905);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (29, 0.935);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (30, 0.966);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (31, 0.998);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (32, 1.032);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (33, 1.067);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (34, 1.102);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (35, 1.140);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (36, 1.178);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (37, 1.218);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (38, 1.258);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (39, 1.300);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (40, 1.344);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (41, 1.390);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (42, 1.437);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (43, 1.485);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (44, 1.534);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (45, 1.586);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (46, 1.639);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (47, 1.694);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (48, 1.751);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (49, 1.810);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (50, 1.871);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (51, 1.993);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (52, 1.998);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (53, 2.064);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (54, 2.135);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (55, 2.206);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (56, 2.280);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (57, 2.357);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (58, 2.436);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (59, 2.518);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (60, 2.603);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (61, 2.690);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (62, 2.779);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (63, 2.873);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (64, 2.969);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (65, 3.069);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (66, 3.172);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (67, 3.279);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (68, 3.385);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (69, 3.502);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (70, 3.621);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (71, 3.741);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (72, 3.618);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (73, 3.998);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (74, 4.131);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (75, 4.271);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (76, 4.414);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (77, 4.562);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (78, 4.715);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (79, 4.874);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (80, 4.919);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (81, 5.207);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (82, 5.381);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (83, 5.561);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (84, 5.749);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (85, 5.941);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (86, 6.140);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (87, 6.342);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (88, 6.560);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (89, 6.781);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (90, 7.008);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (91, 7.244);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (92, 7.487);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (93, 7.738);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (94, 7.998);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (95, 8.265);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (96, 8.543);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (97, 8.831);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (98, 9.127);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (99, 9.432);
INSERT INTO `liquidacion`.`EquivalenciaPBM` (`Pbm`, `SalariosMinimos`) VALUES (100, 9.750);

COMMIT;
