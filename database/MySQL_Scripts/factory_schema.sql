/* Factory DataBase Schema */

/* Parts */
CREATE TABLE IF NOT EXISTS `factory`.`Parts` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT, -- Здесь UNSIGNED
  `Nr` VARCHAR(20) NOT NULL DEFAULT '0',     -- ИСПРАВЛЕНО: значение по умолчанию теперь строка
  `Name` VARCHAR(20) NOT NULL DEFAULT 'NoName',
  `Dir` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Drawing` VARCHAR(45) NULL,
  `Photo` VARCHAR(45) NULL,
  `G-code` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE);
  
/* Tools */
CREATE TABLE IF NOT EXISTS `factory`.`Tools` ( -- ИСПРАВЛЕНО: добавлен пробел после EXISTS
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,  -- РЕКОМЕНДУЕТСЯ: тоже сделать UNSIGNED для единообразия
  `Type` VARCHAR(45) NULL,
  `Unique_Code` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NOT NULL DEFAULT 'NoName',
  `Length_mm` DECIMAL(7,3) NULL DEFAULT 0.0,
  `Diametr_mm` DECIMAL(6,3) NULL DEFAULT 0.0,
  `Angle` DECIMAL(4,2) NULL DEFAULT 0.0,
  `Storage_Machine_ID` VARCHAR(10) NULL,
  `Slot` INT NULL,
  `Dir` VARCHAR(45) NULL,
  `Photo` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `Unique_Code_UNIQUE` (`Unique_Code` ASC) VISIBLE);

/* Part-Tool */
CREATE TABLE IF NOT EXISTS `factory`.`Part_Tool` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT, -- РЕКОМЕНДУЕТСЯ: сделать типом UNSIGNED
  `ID_Part` INT UNSIGNED NOT NULL,  -- ИСПРАВЛЕНО: теперь строго совпадает с Parts.ID (INT UNSIGNED)
  `ID_Tool` INT UNSIGNED NOT NULL,  -- ИСПРАВЛЕНО: теперь строго совпадает с Tools.ID (INT UNSIGNED)
  `Operations` VARCHAR(60) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  
  -- Связь с таблицей Parts
  CONSTRAINT `fk_part_tool_parts`
    FOREIGN KEY (`ID_Part`)
    REFERENCES `factory`.`Parts` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
  -- Связь с таблицей Tools
  CONSTRAINT `fk_part_tool_tools`
    FOREIGN KEY (`ID_Tool`)
    REFERENCES `factory`.`Tools` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);