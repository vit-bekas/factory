SELECT * FROM factory.Parts;
SELECT * FROM factory.Tools;
SELECT * FROM factory.Part_Tool;

	/* All Tools and Operations for one Part */
SELECT 
    p.`Nr` AS `Part_Number`,
    p.`Name` AS `Part_Name`,
    t.`Name` AS `Tool_Name`,
    t.`Type` AS `Tool_Type`,
    pt.`Operations` AS `Opertions`
FROM `factory`.`Part_Tool` pt
JOIN `factory`.`Parts` p ON pt.`ID_Part` = p.`ID`
JOIN `factory`.`Tools` t ON pt.`ID_Tool` = t.`ID`
WHERE p.`Nr` = 'N00Q12'; -- Сюда подставляйте нужный номер детали

	/* SELECT Parts Milling-Turning */
SELECT DISTINCT 
    p.`Nr` AS `Part_Nr`,
    p.`Name` AS `Part_Name`
FROM `factory`.`Parts` p
JOIN `factory`.`Part_Tool` pt ON p.`ID` = pt.`ID_Part`
JOIN `factory`.`Tools` t ON pt.`ID_Tool` = t.`ID`
WHERE t.`Type` = 'Mill'; -- Change Here for Operation Type
