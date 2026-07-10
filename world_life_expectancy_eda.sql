# World Life Expectancy Project (Exploratory Data Analysis)

SELECT*
FROM worldlifexpectancy
;


SELECT Country, 
MIN(`Lifeexpectancy`), 
MAX(`Lifeexpectancy`),
ROUND(MAX(`Lifeexpectancy`) - MIN(`Lifeexpectancy`),1) AS Life_Increas_15_Years
FROM worldlifexpectancy
GROUP BY Country
HAVING MIN(`Lifeexpectancy`) <> 0
AND MAX(`Lifeexpectancy`) <> 0
ORDER BY Life_Increas_15_Years ASC
;



SELECT Year,ROUND( AVG (`Lifeexpectancy`),2)
FROM worldlifexpectancy
WHERE `Lifeexpectancy` <> 0
AND `Lifeexpectancy` <> 0
GROUP BY Year
ORDER BY Year
;

SELECT*
FROM worldlifexpectancy
;

SELECT Country, ROUND(AVG(`Lifeexpectancy`),1) AS Life_Exp, ROUND(AVG(GDP),1) AS GDP
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC
;



SELECT 
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) High_GDP_Count,
    AVG(CASE WHEN GDP >= 1500 THEN `Lifeexpectancy` ELSE NULL END) High_Life_Expectancy,
    SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END) Low_GDP_Count,
    AVG(CASE WHEN GDP <= 1500 THEN `Lifeexpectancy` ELSE NULL END) Low_Life_Expectancy
FROM worldlifexpectancy
;

SELECT*
FROM worldlifexpectancy
;

SELECT Status, ROUND(AVG(`Lifeexpectancy`),1)
FROM worldlifexpectancy
GROUP BY Status
;


SELECT Status, COUNT(DISTINCT Country), ROUND(AVG(`Lifeexpectancy`),1)
FROM worldlifexpectancy
GROUP BY Status
;



SELECT Country, ROUND(AVG(`Lifeexpectancy`),1) AS Life_Exp, ROUND(AVG(BMI),1) AS BMI
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI ASC
;


SELECT Country,
Year,
`Lifeexpectancy`,
`AdultMortality`,
SUM(`AdultMortality`) OVER(PARTITION BY Country ORDER BY Year) AS Rolling_Total
FROM worldlifexpectancy
wHERE Country LIKE '%United%'
;





