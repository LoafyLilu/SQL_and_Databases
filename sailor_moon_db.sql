/*
CREATE DATABASE db_sailorSenshi
*/

USE db_sailorSenshi;

CREATE TABLE tbl_power (
power_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
power_type VARCHAR(50),
power_weapon VARCHAR(50),
);

		INSERT INTO tbl_power
		(power_type, power_weapon)
		VALUES
		('Moonlight', 'Moon Wand' ),
		('Water', 'NULL'),
		('Fire', 'NULL'),
		('Lightning', 'NULL'),
		('Love', 'Twinkle Sword'),
		('Earthquakes', 'Space Sword'),
		('The Sea', 'Mirror'),
		('Time', 'Crimson Orb'),
		('Death & Rebirth', 'Silence Glaive'),
		('Neo Moonlight' , 'Chibi Moon Wand')
		;

CREATE TABLE tbl_alias (
alias_id VARCHAR(50) PRIMARY KEY NOT NULL,
alias_jpn VARCHAR(50)  NOT NULL,
alias_en VARCHAR(50) NOT NULL,

);

	INSERT INTO tbl_alias 
	(alias_id, alias_jpn, alias_en)
	VALUES
	('Sailor_0', 'Usagi', 'Serena'),
	('Sailor_1', 'Ami', 'Amy'),
	('Sailor_2','Rei', 'Raye'),
	('Sailor_3', 'Makoto', 'Lita'),
	('Sailor_4', 'Mina', 'Mina'),
	('Sailor_5', 'Haruka' , 'Amara'),
	('Sailor_6', 'Michiru', 'Michelle'),
	('Sailor_7', 'Setsuna', 'Trista'),
	('Sailor_8', 'Hotaru', 'Hotaru'),
	('Sailor_9', 'Chibi Usa', 'Rini')
	;

CREATE TABLE tbl_realm (
realm_id INT PRIMARY KEY NOT NULL IDENTITY (200,1),
realm_type VARCHAR(50) NOT NULL,
);


		INSERT INTO tbl_realm
		(realm_type)
		VALUES
		('Inner Planets'),
		('Outer Planets')
		;



 /*
DROP TABLE tbl_realm;
DROP TABLE tbl_alias;
DROP TABLE tbl_power;

DROP TABLE tbl_senshi;

*/

CREATE TABLE tbl_senshi (
senshi_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
senshi_name VARCHAR(50)NOT NULL,
senshi_power INT  NOT NULL CONSTRAINT fk_power_id FOREIGN KEY REFERENCES tbl_power(power_id) ON UPDATE CASCADE ON DELETE CASCADE,
senshi_realm INT NOT NULL CONSTRAINT fk_realm_id FOREIGN KEY REFERENCES tbl_realm(realm_id) ON UPDATE CASCADE ON DELETE CASCADE,
senshi_alias VARCHAR(50) NOT NULL CONSTRAINT fk_alias_id FOREIGN KEY REFERENCES tbl_alias(alias_id) ON UPDATE CASCADE ON DELETE CASCADE,
);


	INSERT INTO tbl_senshi
	(senshi_name, senshi_power, senshi_realm, senshi_alias)
	VALUES
		('Sailor Moon', 100, 200,'Sailor_0'), 
		('Sailor Mercury', 101, 200,'Sailor_1'),
		('Sailor Mars', 102, 200, 'Sailor_2'),
		('Sailor Jupiter', 103, 200,'Sailor_3'), 
		('Sailor Venus', 104, 200, 'Sailor_4'),
		('Sailor Uranus', 105, 201, 'Sailor_5'),
		('Sailor Neptune', 106, 201, 'Sailor_6'),
		('Sailor Pluto', 107, 201, 'Sailor_7'),
		('Sailor Saturn', 108, 201, 'Sailor_8'),
		('Sailor Chibi Moon', 109, 200, 'Sailor_9')
		;

SELECT * FROM tbl_realm;
SELECT * FROM tbl_alias;
SELECT * FROM tbl_power;
SELECT * FROM tbl_senshi;


SELECT tbl_senshi.senshi_name as 'Scout Name:' , tbl_alias.alias_jpn AS 'Japanese Name:' , tbl_senshi.senshi_power AS 'Power of:'

FROM tbl_senshi
	INNER JOIN tbl_alias ON tbl_senshi.senshi_alias = tbl_alias.alias_id
	INNER JOIN tbl_power ON tbl_senshi.senshi_power = tbl_power.power_id

WHERE tbl_power.power_type ='Moonlight';
