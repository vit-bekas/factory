	/* INSERTS */
    
	/* Parts */
INSERT INTO `factory`.`Parts` (`Nr`, `Name`, `Dir`, `Model`, `Drawing`, `Photo`, `G-code`) 
VALUES ('N00Q12', 'Test2', '/parts/N00Q12', '/parts/N00Q12/p.cad', '/parts/N00Q12/p.pdf', 
'/parts/N00Q12/p.jpeg', '/parts/N00Q12/p.nc');

INSERT INTO `factory`.`Parts` (`Nr`, `Name`, `Dir`, `Model`, `Drawing`, `Photo`, `G-code`) 
VALUES ('B33U4', 'Test1', '/parts/B33U4', '/parts/B33U4/k.cad', '/parts/B33U4/k.pgf', 
'/parts/B33U4/k.jpeg', '/parts/B33U4/k.nc');

	/* Tools */
INSERT INTO `factory`.`Tools` (`Type`, `Unique_Code`, `Name`, `Length_mm`, `Diametr_mm`, 
`Storage_Machine_ID`, `Slot`, `Dir`, `Photo`) 
VALUES ('Mill', 'NMILL16M', 'Mill 16.0 mm', '141.356', '16.0', 
'M1', '22', '/tools/mill16mm', '/tools/mill16mm/a.jpeg');

INSERT INTO `factory`.`Tools` (`Type`, `Unique_Code`, `Name`, `Length_mm`, `Angle`, 
`Storage_Machine_ID`, `Slot`, `Dir`, `Photo`) 
VALUES ('Turning', 'RT55deg', 'Rough 55deg', '200.0', '55.0', 
'T1', '1', '/tools/rough55', '/tools/rough55/b.jpeg');

	/* Parts-Tools */
INSERT INTO `factory`.`Part_Tool` (`ID_Part`, `ID_Tool`, `Operations`) 
VALUES (3, 1, 'Tube rough forming');

INSERT INTO `factory`.`Part_Tool` (`ID_Part`, `ID_Tool`, `Operations`) 
VALUES (3, 1, 'Pockets milling');

INSERT INTO `factory`.`Part_Tool` (`ID_Part`, `ID_Tool`, `Operations`) 
VALUES (4, 2, 'Rough turning');

INSERT INTO `factory`.`Part_Tool` (`ID_Part`, `ID_Tool`, `Operations`) 
VALUES (
  (SELECT `ID` FROM `factory`.`Parts` WHERE `Nr` = 'B33U4'), -- Ищет ID детали динамически
  (SELECT `ID` FROM `factory`.`Tools` WHERE `Unique_Code` = 'RT55deg'), -- Ищет ID инструмента
  'Tube rough facing'
);



