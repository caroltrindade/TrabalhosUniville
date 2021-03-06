-- MySQL Script generated by MySQL Workbench
-- 09/29/19 02:23:08
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema GerenciadorTarefas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema GerenciadorTarefas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `GerenciadorTarefas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `GerenciadorTarefas` ;

-- -----------------------------------------------------
-- Table `GerenciadorTarefas`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GerenciadorTarefas`.`Usuario` (
  `emailUsuario` VARCHAR(100) NOT NULL COMMENT '',
  `nomeUsuario` VARCHAR(200) NOT NULL COMMENT '',
  `senhaUsuario` VARCHAR(10) NOT NULL COMMENT '',
  PRIMARY KEY (`emailUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GerenciadorTarefas`.`projeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GerenciadorTarefas`.`projeto` (
  `idProjeto` INT NOT NULL COMMENT '',
  `descProjeto` VARCHAR(100) NULL COMMENT '',
  `usuarioEmailUsuario` VARCHAR(100) NOT NULL COMMENT '',
  PRIMARY KEY (`idProjeto`),
  CONSTRAINT `fk_Projeto_Usuario1`
    FOREIGN KEY (`usuarioEmailUsuario`)
    REFERENCES `GerenciadorTarefas`.`Usuario` (`emailUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GerenciadorTarefas`.`tarefa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GerenciadorTarefas`.`tarefa` (
  `idTarefa` INT NOT NULL COMMENT '',
  `descTarefa` VARCHAR(200) NULL COMMENT '',
  `dataAgendada` TIMESTAMP NULL COMMENT '',
  `isFinalizada` TINYINT(1) NULL COMMENT '',
  `prioridade` INT NULL DEFAULT 1 COMMENT '',
  `projetoIdProjeto` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idTarefa`),
  CONSTRAINT `fk_Tarefas_Projeto`
    FOREIGN KEY (`projetoIdProjeto`)
    REFERENCES `GerenciadorTarefas`.`projeto` (`idProjeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
