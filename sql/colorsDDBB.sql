-- MySQL Workbench Forward Engineering


CREATE SCHEMA `colors` ;


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema colors
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema colors
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `colors` DEFAULT CHARACTER SET latin1 ;
USE `colors` ;

-- -----------------------------------------------------
-- Table `colors`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colors`.`customer` (
  `customer_id` INT NOT NULL,
  `age` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `horoscope` VARCHAR(45) NULL,
  `blood` VARCHAR(45) NULL,
  `catdog` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `colors`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colors`.`product` (
  `brand` VARCHAR(100) NULL,
  `colour` VARCHAR(45) NULL,
  `shop` VARCHAR(45) NULL,
  `product_id` INT NOT NULL,
  `type` VARCHAR(45) NULL,
  `price_pack` VARCHAR(45) NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `colors`.`sale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colors`.`sale` (
  `payment_method` VARCHAR(45) NULL,
  `review_rating` VARCHAR(45) NULL,
  `season` VARCHAR(45) NULL,
  `customer_customer_id` INT NOT NULL,
  `product_product_id` INT NOT NULL,
  INDEX `fk_sale_customer_idx` (`customer_customer_id` ASC),
  INDEX `fk_sale_product1_idx` (`product_product_id` ASC),
  CONSTRAINT `fk_sale_customer`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `colors`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sale_product1`
    FOREIGN KEY (`product_product_id`)
    REFERENCES `colors`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
