-- MySQL Script generated by MySQL Workbench
-- Tue Nov  8 14:37:01 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema urna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema urna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `urna` DEFAULT CHARACTER SET utf8 ;
USE `urna` ;

-- -----------------------------------------------------
-- Table `urna`.`acessos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`acessos` (
  `AcessoID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(150) NOT NULL,
  `Usuario` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  PRIMARY KEY (`AcessoID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`partidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`partidos` (
  `PartidosID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(150) NOT NULL,
  `Sigla` VARCHAR(20) NOT NULL,
  `NumLegenda` INT(2) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  PRIMARY KEY (`PartidosID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`tipo` (
  `TipoID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  PRIMARY KEY (`TipoID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`estados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`estados` (
  `EstadoID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(150) NOT NULL,
  `Sigla` CHAR(3) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  PRIMARY KEY (`EstadoID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`municipios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`municipios` (
  `MunicipiosID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(150) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `EstadoID` INT NOT NULL,
  PRIMARY KEY (`MunicipiosID`)/*,
  INDEX `fk_municipios_estados1_idx` (`EstadoID` ASC) VISIBLE,
  CONSTRAINT `fk_municipios_estados1`
    FOREIGN KEY (`EstadoID`)
    REFERENCES `urna`.`estados` (`EstadoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`zonas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`zonas` (
  `ZonasID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `EstadoID` INT NOT NULL,
  `MunicipiosID` INT NOT NULL,
  PRIMARY KEY (`ZonasID`)/*,
  INDEX `fk_zonas_estados1_idx` (`EstadoID` ASC) VISIBLE,
  INDEX `fk_zonas_municipios1_idx` (`MunicipiosID` ASC) VISIBLE,
  CONSTRAINT `fk_zonas_estados1`
    FOREIGN KEY (`EstadoID`)
    REFERENCES `urna`.`estados` (`EstadoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zonas_municipios1`
    FOREIGN KEY (`MunicipiosID`)
    REFERENCES `urna`.`municipios` (`MunicipiosID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`secao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`secao` (
  `SecaoID` INT NOT NULL AUTO_INCREMENT,
  `Num` VARCHAR(45) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `ZonasID` INT NOT NULL,
  `MunicipiosID` INT NOT NULL,
  `EstadoID` INT NOT NULL,
  PRIMARY KEY (`SecaoID`)/*,
  INDEX `fk_secao_zonas1_idx` (`ZonasID` ASC) VISIBLE,
  INDEX `fk_secao_municipios1_idx` (`MunicipiosID` ASC) VISIBLE,
  INDEX `fk_secao_estados1_idx` (`EstadoID` ASC) VISIBLE,
  CONSTRAINT `fk_secao_zonas1`
    FOREIGN KEY (`ZonasID`)
    REFERENCES `urna`.`zonas` (`ZonasID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_secao_municipios1`
    FOREIGN KEY (`MunicipiosID`)
    REFERENCES `urna`.`municipios` (`MunicipiosID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_secao_estados1`
    FOREIGN KEY (`EstadoID`)
    REFERENCES `urna`.`estados` (`EstadoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`cargos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`cargos` (
  `CargosID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `TipoID` INT NOT NULL,
  PRIMARY KEY (`CargosID`)/*,
  INDEX `fk_cargos_Tipo1_idx` (`TipoID` ASC) VISIBLE,
  CONSTRAINT `fk_cargos_Tipo1`
    FOREIGN KEY (`TipoID`)
    REFERENCES `urna`.`tipo` (`TipoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`candidatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`candidatos` (
  `CandidatoID` INT NOT NULL AUTO_INCREMENT,
  `NomeUrna` VARCHAR(150) NOT NULL,
  `Nome` VARCHAR(150) NOT NULL,
  `Genero` VARCHAR(45) NOT NULL,
  `Foto` VARCHAR(255) NOT NULL,
  `EstadoCivil` VARCHAR(45) NOT NULL,
  `DataNascimento` DATE NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `PartidosID` INT NOT NULL,
  `CargosID` INT NOT NULL,
  PRIMARY KEY (`CandidatoID`)/*,
  INDEX `fk_candidatos_partidos1_idx` (`PartidosID` ASC) VISIBLE,
  INDEX `fk_candidatos_cargos1_idx` (`CargosID` ASC) VISIBLE,
  CONSTRAINT `fk_candidatos_partidos1`
    FOREIGN KEY (`PartidosID`)
    REFERENCES `urna`.`partidos` (`PartidosID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_candidatos_cargos1`
    FOREIGN KEY (`CargosID`)
    REFERENCES `urna`.`cargos` (`CargosID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`urnas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`urnas` (
  `UrnaID` INT NOT NULL,
  `N.Identificacao` VARCHAR(45) NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  PRIMARY KEY (`UrnaID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`importar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`importar` (
  `ImportarID` INT NOT NULL,
  `SecaoID` INT NOT NULL,
  `urnaID` INT NOT NULL,
  `DataHora` DATETIME NOT NULL,
  `Nome` VARCHAR(150) NOT NULL,
  `TipoID` INT NOT NULL,
  PRIMARY KEY (`ImportarID`)/*,
  INDEX `fk_importar_secao1_idx` (`SecaoID` ASC) VISIBLE,
  INDEX `fk_importar_urna1_idx` (`urnaID` ASC) VISIBLE,
  INDEX `fk_importar_Tipo1_idx` (`TipoID` ASC) VISIBLE,
  CONSTRAINT `fk_importar_secao1`
    FOREIGN KEY (`SecaoID`)
    REFERENCES `urna`.`secao` (`SecaoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_importar_urna1`
    FOREIGN KEY (`urnaID`)
    REFERENCES `urna`.`urnas` (`UrnaID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_importar_Tipo1`
    FOREIGN KEY (`TipoID`)
    REFERENCES `urna`.`tipo` (`TipoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`votoscandidatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`votoscandidatos` (
  `VotoCandidatoID` INT NOT NULL AUTO_INCREMENT,
  `DataHora` DATETIME NOT NULL,
  `SecaoID` INT NOT NULL,
  `CandidatoID` INT NOT NULL,
  `importarID` INT NOT NULL,
  PRIMARY KEY (`VotoCandidatoID`)/*,
  INDEX `fk_votos_secao1_idx` (`SecaoID` ASC) VISIBLE,
  INDEX `fk_votos_candidatos1_idx` (`CandidatoID` ASC) VISIBLE,
  INDEX `fk_votoscandidatos_importar1_idx` (`importarID` ASC) VISIBLE,
  CONSTRAINT `fk_votos_secao1`
    FOREIGN KEY (`SecaoID`)
    REFERENCES `urna`.`secao` (`SecaoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_votos_candidatos1`
    FOREIGN KEY (`CandidatoID`)
    REFERENCES `urna`.`candidatos` (`CandidatoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_votoscandidatos_importar1`
    FOREIGN KEY (`importarID`)
    REFERENCES `urna`.`importar` (`ImportarID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`eleicoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`eleicoes` (
  `EleicaoID` INT NOT NULL AUTO_INCREMENT,
  `Data` DATE NOT NULL,
  `HoraI` TIME NOT NULL,
  `HoraF` TIME NOT NULL,
  `Excluido` VARCHAR(1) NOT NULL DEFAULT 'f',
  `TipoID` INT NOT NULL,
  `VotoCandidatoID` INT NOT NULL,
  PRIMARY KEY (`EleicaoID`)/*,
  INDEX `fk_eleições_Tipo1_idx` (`TipoID` ASC) VISIBLE,
  INDEX `fk_eleicoes_votoscandidatos1_idx` (`VotoCandidatoID` ASC) VISIBLE,
  CONSTRAINT `fk_eleições_Tipo1`
    FOREIGN KEY (`TipoID`)
    REFERENCES `urna`.`tipo` (`TipoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_eleicoes_votoscandidatos1`
    FOREIGN KEY (`VotoCandidatoID`)
    REFERENCES `urna`.`votoscandidatos` (`VotoCandidatoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`candidaturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`candidaturas` (
  `CandidaturaID` INT NOT NULL AUTO_INCREMENT,
  `EleicaoID` INT NOT NULL,
  `CandidatoID` INT NOT NULL,
  PRIMARY KEY (`CandidaturaID`)/*,
  INDEX `fk_candidaturas_eleições1_idx` (`EleicaoID` ASC) VISIBLE,
  INDEX `fk_candidaturas_candidatos1_idx` (`CandidatoID` ASC) VISIBLE,
  CONSTRAINT `fk_candidaturas_eleições1`
    FOREIGN KEY (`EleicaoID`)
    REFERENCES `urna`.`eleicoes` (`EleicaoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_candidaturas_candidatos1`
    FOREIGN KEY (`CandidatoID`)
    REFERENCES `urna`.`candidatos` (`CandidatoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `urna`.`votoseleitores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `urna`.`votoseleitores` (
  `VotoEleitor` INT NOT NULL AUTO_INCREMENT,
  `DataHora` DATETIME NOT NULL,
  `Titulo` VARCHAR(45) NOT NULL,
  `SecaoID` INT NOT NULL,
  `EleicaoID` INT NOT NULL,
  `importarID` INT NOT NULL,
  PRIMARY KEY (`VotoEleitor`)/*,
  INDEX `fk_votoseleitores_secao1_idx` (`SecaoID` ASC) VISIBLE,
  INDEX `fk_votoseleitores_eleicoes1_idx` (`EleicaoID` ASC) VISIBLE,
  INDEX `fk_votoseleitores_importar1_idx` (`importarID` ASC) VISIBLE,
  CONSTRAINT `fk_votoseleitores_secao1`
    FOREIGN KEY (`SecaoID`)
    REFERENCES `urna`.`secao` (`SecaoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_votoseleitores_eleicoes1`
    FOREIGN KEY (`EleicaoID`)
    REFERENCES `urna`.`eleicoes` (`EleicaoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_votoseleitores_importar1`
    FOREIGN KEY (`importarID`)
    REFERENCES `urna`.`importar` (`ImportarID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION*/)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
