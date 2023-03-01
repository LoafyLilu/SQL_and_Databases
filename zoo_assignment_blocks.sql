SELECT	tbl_species.species_name AS 'Species Name:' , tbl_nutrition.nutrition_id AS 'Nutrition Type: '
FROM	tbl_species 
		INNER JOIN	tbl_nutrition ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id;

WHERE nutrition_id  BETWEEN 2202 AND 2206 ;



SELECT 
	tbl_specialist.specialist_fname,
	tbl_specialist.specialist_lname,
	tbl_specialist.specialist_contact

FROM	tbl_specialist
		INNER JOIN tbl_specialist 
	


SELECT * FROM tbl_specialist
SELECT * FROM tbl_species
SELECT * FROM tbl_care


SELECT species_name 
FROM tbl_species
WHERE species_order = 3; 

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;