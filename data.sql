--Populate Animals Table
INSERT INTO animals (
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 
VALUES (
	1,
	'Agumon',
	(to_date('03/02/2020','dd/mm/yyyy')),
	0,
	true,
	10.23
);

INSERT INTO animals (
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 

VALUES (
	2,
	'Gabumon',
	(to_date('15/11/2018','dd/mm/yyyy')),
	2,
	true,
	8
);

INSERT INTO animals (
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 
VALUES (
	3,
	'Pikachu',
	(to_date('07/01/2021','dd/mm/yyyy')),
	1,
	false,
	15.04
);

INSERT INTO animals (
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 
VALUES (
	4,
	'Devimon',
	(to_date('12/05/2017','dd/mm/yyyy')),
	5,
	true,
	11
);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
	) 
	VALUES (
	5,
	'Charmander',
	(to_date('08/02/2020','dd/mm/yyyy')),
	0,
	false,
	11
	);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
	)
	VALUES (
	6,
	'Plantmon',
	(to_date('15/11/2022','dd/mm/yyyy')),
	2,
	true,
	5.7
	);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
)
VALUES (
	7,
	'Squirtle',
	(to_date('02/04/1993','dd/mm/yyyy')),
	3,
	false,
	12.13
);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
)
	VALUES (
	8,
	'Angemon',
	(to_date('12/06/2005','dd/mm/yyyy')),
	1,
	true,
	45
);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 
	VALUES (
	9,
	'Boarmon',
	(to_date('07/06/2005','dd/mm/yyyy')),
	7,
	true,
	20.4
);

INSERT INTO animals(
	id,
	name,
	date_of_birth,
	escape_attempt,
	neutered,
	weight_kg
) 
	VALUES (
	10,
	'Blossom',
	(to_date('13/10/1998','dd/mm/yyyy')),
	3,
	true,
	17
);

--Populate Owners table
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
       ('Jannifer Orwell', 19),
       ('Bob', 45),
       ('Melody Pond', 77),
       ('Deam Winchester', 14),
       ('Jodie Whittaker', 38);


--Populate Species table
INSERT INTO species (name)
VALUES ('Pokemon'),
       ('Digimon');


--Populate Vets Table
INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-4-23'),
       ('Maisy Smith', 26, '2019-1-17'),
       ('Stephanie Mendez', 64, '1981-5-4'),
       ('Jack Harkness', 38, '2008-6-8');

-- Populate Specializations table
INSERT INTO specializations (vets_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Digimon')),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM species WHERE name = 'Digimon'));

-- Populate Visits Table
INSERT INTO visits (vets_id, animal_id, visit_date)
VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Agumon'), '2020-5-24'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Agumon'), '2020-7-22'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Gabumon'), '2021-2-2'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-1-5'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-3-8'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-5-14'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Devimon'), '2021-5-4'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Charmander'), '2021-2-24'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2019-12-21'),
       ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2020-8-10'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2021-4-7'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Squirtle'), '2019-9-29'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-10-3'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-11-4'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-1-24'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-5-15'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-2-27'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-8-3'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Blossom'), '2020-5-24'),
       ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Blossom'), '2021-1-11');


--Update species_id in Animals Table
UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon%';

UPDATE animals
SET species_id = 1
WHERE species_id IS NULL;

--Update Owners_id in Animals Table
UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon' OR name = 'Pikachu';

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' OR name = 'Boarmon';
