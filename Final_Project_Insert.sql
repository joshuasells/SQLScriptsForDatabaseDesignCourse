INSERT INTO marshall.zip (zipCode, city, state)
	VALUES	('7660', 'New Orleans', 'LA'),
			('8014', 'Brighton', 'MI'),
            ('8812', 'Bridgeport', 'NJ'),
            ('8846', 'Anchorage', 'AK'),
            ('10011', 'Hamilton', 'OH'),
            ('10025', 'Chicago', 'IL'),
            ('11953', 'San Jose', 'CA'),
            ('12204', 'Sioux Falls', 'SD'),
            ('19014', 'Prineville', 'OR'),
            ('19443', 'Baltimore', 'MD'),
            ('21224', 'Kulpsville', 'PA'),
            ('21601', 'Middle Island', 'NY'),
            ('37110', 'Los Angelos', 'CA'),
            ('43215', 'Chagrin Falls', 'OH'),
            ('44023', 'Laredo', 'TX'),
            ('44805', 'Phoenix', 'AZ'),
            ('45011', 'Mc Minnville', 'TN'),
            ('48116', 'Milwaukee', 'WI'),
            ('48180', 'Taylor', 'MI'),
            ('53207', 'Aston', 'PA'),
            ('57105', 'Irving', 'TX'),
            ('60632', 'Albany', 'NY'),
            ('66218', 'Middlesex', 'NJ'),
            ('67410', 'Stevens Point', 'WI'),
            ('70002', 'Shawnee', 'KS'),
            ('70116', 'Easton', 'MD'),
            ('75062', 'New York', 'NY'),
            ('77301', 'Conroe', 'TX'),
            ('78045', 'Columbus', 'OH'),
            ('78204', 'Las Cruces', 'NM'),
            ('85013', 'Ridgefield Park', 'NJ'),
            ('88011', 'Dunellen', 'NJ'),
            ('90034', 'Plymouth', 'MN'),
            ('93012', 'Metairie', 'LA'),
            ('54481', 'Ashertown', 'OH'),
            ('95111', 'Camarillo', 'CA'),
            ('97754', 'San Antonio', 'TX'),
            ('99501', 'Abilene', 'KS');
            
INSERT INTO marshall.employee (emp_id, fName, lName, address, zipCode, ssn, empType)
	VALUES	(1, 'James', 'Butt', '6649 N Blue Gum St', '7660', '679614601', 'Driver'),
			(2, 'Josephine', 'Darakjy', '4 B Blue Ridge Blvd', '8014', '804646339', 'Driver'),
            (3, 'Art', 'Venere', '8 W Cerritos Ave #54', '8812', '818355560', 'Driver'),
            (4, 'Lenna', 'Paprocki', '639 Main St', '8846', '935450453', 'Driver'),
            (5, 'Donette', 'Foller', '34 Center St', '10011', '633790641', 'Driver'),
            (6, 'Simona', 'Morasca', '3 Mcauley Dr', '10011', '659683025', 'Driver'),
            (7, 'Mitsue', 'Tollner', '7 Eads St', '10025', '944233634', 'Driver'),
            (8, 'Leota', 'Dilliard', '7 W Jackson Blvd', '11953', '557316225', 'Driver'),
            (9, 'Sage', 'Wieser', '5 Boston Ave #88', '12204', '970378893', 'Driver'),
            (10, 'Youlanda', 'Schemmer', '2881 Lewis Rd', '19014', '165845976', 'Driver'),
            (11, 'Kris', 'Marrier', '228 Runamuck Pl #2808', '19443', '649122686', 'Mechanic'),
            (12, 'Minna', 'Amigon', '2371 Jerrold Ave', '21224', '681820033', 'Mechanic'),
            (13, 'Abel', 'Maclead', '37275 St Rt 17m M', '21601', '549741177', 'Mechanic'),
            (14, 'Kiley', 'Caldarera', '25 E 75th St #69', '37110', '516489484', 'Mechanic'),
            (15, 'Graciela', 'Ruta', '98 Connecticut Ave NW', '43215', '718498531', 'Mechanic'),
            (16, 'Cammy', 'Albares', '56 E Morehead St', '44023', '719715686', 'Office Worker'),
            (17, 'Mattie', 'Poquette', '73 State Road 434 E', '44805', '470072481', 'Office Worker'),
            (18, 'Meaghan', 'Garufi', '69734 E Carrillo St', '45011', '251088200', 'Office Worker'),
            (19, 'Gladys', 'Rim', '322 New Horizon Blvd', '48116', '466540748', 'Office Worker'),
            (20, 'Yuki', 'Whobrey', '1 State Route 27', '48180', '176163082', 'Office Worker');
            
INSERT INTO marshall.mechanic (emp_id)
	VALUES	(11),
			(12),
            (13),
            (14),
            (15);
            
INSERT INTO marshall.officeWorker (emp_id)
	VALUES	(16),
			(17),
            (18),
            (19),
            (20);
            
INSERT INTO marshall.truck (truck_id, maxCap, tckLength)
	VALUES	(520, 9, 40),
			(521, 9, 40),
            (522, 9, 40),
            (523, 9, 40),
            (527, 9, 40),
            (528, 9, 40),
            (529, 8, 35),
            (530, 8, 35),
            (531, 8, 35),
            (532, 11, 25);
            
INSERT INTO marshall.driver (emp_id, truck_id)
	VALUES	(1, 520),
			(2, 521),
            (3, 522),
            (4, 523),
            (5, 527),
            (6, 528),
            (7, 529),
            (8, 530),
            (9, 531),
            (10, 532);
            
INSERT INTO marshall.job (job_id, emp_id, truck_id, dateWorkedOn, problem, solved)
	VALUES	(1, 11, 520, DATE '2020-04-20', 'New tires', TRUE),
			(2, 12, 521, DATE '2020-05-16', 'Air leak', TRUE),
            (3, 13, 522, DATE '2020-07-27', 'AC repair', FALSE),
            (4, 14, 531, DATE '2020-08-15', 'Air leak', TRUE),
            (5, 15, 532, DATE '2020-08-16', 'New mirrors', TRUE);
            
INSERT INTO marshall.customer (cust_id, fName, lName, comName)
	VALUES	(1, 'Bette', 'Nicka', 'Sport En Art'),
			(2, 'Veronika', 'Inouye', 'C 4 Network Inc'),
            (3, 'Willard', 'Kolmetz', 'Ingalls, Donald R Esq'),
            (4, 'Maryann', 'Royster', 'Franklin, Peter L Esq'),
            (5, 'Alisha', 'Slusarski', 'Wtlz Power 107 Fm'),
            (6, 'Allene', 'Iturbide', 'Ledecky, David Esq'),
            (7, 'Chanel', 'Caudy', 'Professional Image Inc'),
            (8, 'Ezekiel', 'Chui', 'Sider, Donald C Esq'),
            (9, 'Willow', 'Kusko', 'U Pull It'),
            (10, 'Bernardo', 'Figeroa', 'Clark, Richard Cpa');
            
INSERT INTO marshall.invoice (inv_id, cust_id, officeEmp_id, driverEmp_id, invDate, address, zipCode)
	VALUES	(1, 1, 16, 1, DATE '2020-08-15', '6 S 33rd St', '53207'),
			(2, 2, 17, 2, DATE '2020-08-15', '6 Greenleaf Ave', '11953'),
            (3, 3, 18, 3, DATE '2020-08-15', '618 W Yakima Ave', '57105'),
            (4, 4, 19, 4, DATE '2020-08-15', '74 S Westgate St', '60632'),
            (5, 5, 20, 5, DATE '2020-08-15', '3274 State St', '66218'),
            (6, 6, 16, 6, DATE '2020-08-15', '1 Central Ave', '67410'),
            (7, 7, 17, 7, DATE '2020-08-15', '86 Nw 66th St #8673', '70002'),
            (8, 8, 18, 8, DATE '2020-08-15', '2 Cedar Ave #84', '70116'),
            (9, 9, 19, 9, DATE '2020-08-15', '90991 Thorburn Ave', '75062'),
            (10, 10, 20, 10, DATE '2020-08-15', '386 9th Ave N', '77301');
            

INSERT INTO marshall.product (prod_id, prodName, prodDescription, price)
	VALUES	(1, 'Driveway', 'For use with driveways', 140),
			(2, 'Footing', 'For use with footings', 120),
            (3, 'Sidewalk', 'For use with sidewalks', 160),
            (4, 'Road Patch', 'For use with road patches', 110),
            (5, 'Curb', 'For use with curbs', 110);
            
INSERT INTO marshall.line (inv_id, prod_id, quantity)
	VALUES	(1, 1, 9),
			(2, 2, 9),
            (3, 3, 3),
            (4, 4, 25),
            (5, 5, 2),
            (6, 1, 9),
            (7, 2, 9),
            (8, 3, 3),
            (9, 4, 25),
            (10, 5, 2);