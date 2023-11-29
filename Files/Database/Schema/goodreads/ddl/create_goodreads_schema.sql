-- MySQL Script generated by MySQL Workbench
-- Wed Nov 29 17:50:08 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema goodreads
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `goodreads` ;

-- -----------------------------------------------------
-- Schema goodreads
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `goodreads` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `goodreads` ;

-- -----------------------------------------------------
-- Table `goodreads`.`item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `goodreads`.`item` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `goodreads`.`item` (
  `item_id` BIGINT NOT NULL AUTO_INCREMENT,
  `book_id` BIGINT NOT NULL,
  `title` TEXT NOT NULL,
  `mod_title` TEXT NOT NULL,
  `ratings_count` INT NOT NULL DEFAULT -1,
  `average_rating` DECIMAL(6,3) NOT NULL DEFAULT -1.0,
  `link` TEXT NOT NULL DEFAULT '-1',
  `url` TEXT NOT NULL DEFAULT '-1',
  `image_url` TEXT NOT NULL DEFAULT '-1',
  `publication_day` TINYINT NOT NULL DEFAULT 0,
  `publication_month` TINYINT NOT NULL DEFAULT 0,
  `publication_year` INT NOT NULL DEFAULT 0,
  `num_pages` INT NOT NULL DEFAULT 0,
  `isbn` VARCHAR(15) NOT NULL DEFAULT '-1',
  `isbn13` VARCHAR(15) NOT NULL DEFAULT '-1',
  `description` TEXT NOT NULL DEFAULT 'description not available',
  `publisher` VARCHAR(500) NOT NULL DEFAULT 'publisher not available',
  PRIMARY KEY (`item_id`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `i_book_id` ON `goodreads`.`item` (`book_id` ASC);

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
