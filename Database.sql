-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rasmusi
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rasmusi
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rasmusi` DEFAULT CHARACTER SET utf8mb4 ;
USE `rasmusi` ;

-- -----------------------------------------------------
-- Table `rasmusi`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`actors` (
  `actorId` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `lastName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`actorId`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`directors` (
  `directorId` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `lastName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`directorId`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`movies` (
  `movieId` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `releaseDate` DATETIME NULL DEFAULT NULL,
  `directorId` INT(11) NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`movieId`),
  INDEX `fk_movie_director1_idx` (`directorId` ASC),
  CONSTRAINT `fk_movie_director1`
    FOREIGN KEY (`directorId`)
    REFERENCES `rasmusi`.`directors` (`directorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`actorsinmovie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`actorsinmovie` (
  `movieId` INT(11) NOT NULL AUTO_INCREMENT,
  `actorId` INT(11) NOT NULL,
  INDEX `fk_actorsInMovie_actor1_idx` (`actorId` ASC),
  INDEX `fk_actorsInMovie_movie` (`movieId` ASC),
  CONSTRAINT `fk_actorsInMovie_actor1`
    FOREIGN KEY (`actorId`)
    REFERENCES `rasmusi`.`actors` (`actorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actorsInMovie_movie`
    FOREIGN KEY (`movieId`)
    REFERENCES `rasmusi`.`movies` (`movieId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`customers` (
  `customerId` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `password` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`customerId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`employees` (
  `employeeId` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `lastName` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`employeeId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`moviegenre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`moviegenre` (
  `genre` VARCHAR(45) NULL DEFAULT NULL,
  `movieId` INT(11) NOT NULL,
  INDEX `fk_movieGenre_movie1_idx` (`movieId` ASC),
  CONSTRAINT `fk_movieGenre_movie1`
    FOREIGN KEY (`movieId`)
    REFERENCES `rasmusi`.`movies` (`movieId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `rasmusi`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`orders` (
  `orderId` INT(11) NOT NULL AUTO_INCREMENT,
  `adress` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_swedish_ci' NULL DEFAULT NULL,
  `employeeId` INT(11) NOT NULL,
  `customerId` INT(11) NOT NULL,
  `sendDate` DATETIME NULL DEFAULT NULL,
  `returnDate` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  INDEX `fk_order_employee1_idx` (`employeeId` ASC),
  INDEX `fk_order_customer1_idx` (`customerId` ASC),
  CONSTRAINT `fk_order_customer1`
    FOREIGN KEY (`customerId`)
    REFERENCES `rasmusi`.`customers` (`customerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_employee1`
    FOREIGN KEY (`employeeId`)
    REFERENCES `rasmusi`.`employees` (`employeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;


-- -----------------------------------------------------
-- Table `rasmusi`.`orderrows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rasmusi`.`orderrows` (
  `isReturned` TINYINT(4) NOT NULL,
  `orderId` INT(11) NOT NULL,
  `movieId` INT(11) NOT NULL,
  INDEX `fk_orderRow_order1_idx` (`orderId` ASC),
  INDEX `fk_orderRow_movie1_idx` (`movieId` ASC),
  CONSTRAINT `fk_orderRow_movie1`
    FOREIGN KEY (`movieId`)
    REFERENCES `rasmusi`.`movies` (`movieId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderRow_order1`
    FOREIGN KEY (`orderId`)
    REFERENCES `rasmusi`.`orders` (`orderId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_swedish_ci;

-- -----------------------------------------------------
-- View 1
-- -----------------------------------------------------
CREATE VIEW ownedMovies AS
SELECT title,releaseDate,description,CONCAT(directors.firstName," ",directors.lastName) as director
FROM 
movies LEFT JOIN directors ON movies.directorId = directors.directorId
ORDER BY title;


-- -----------------------------------------------------
-- View 2
-- -----------------------------------------------------
CREATE VIEW genres AS
SELECT GROUP_CONCAT(moviegenre.genre SEPARATOR ' ') AS genre,movies.title FROM moviegenre
RIGHT JOIN movies ON moviegenre.movieId = movies.movieId
GROUP BY title
ORDER BY title;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
