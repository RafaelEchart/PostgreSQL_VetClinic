CREATE TABLE animals (
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	escape_attempt INT,
	neutered BOOLEAN NOT NULL,
	weight_kg NUMERIC NOT NULL
);

--Add a column species of type string to your animals table.
ALTER TABLE animals ADD COLUMN species VARCHAR;