--Create Animals Table
CREATE TABLE animals (
	id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(250), 
    date_of_birth DATE, 
    escape_attempts INT, 
    neutered BOOLEAN, 
    weight_kg DECIMAL,
    PRIMARY KEY(id)
);

--Create Owners Table
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(250),
    age INT,
    PRIMARY KEY (id)
);

--Create Species Table
CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250),
    PRIMARY KEY(id)
);

-- Create Vets Table
CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

--Add a column species of type string to your animals table.
ALTER TABLE animals ADD COLUMN species VARCHAR;

--Remove species column from animals table.
ALTER TABLE animals DROP COLUMN species;

--Add column species_id which is a foreign key referencing species table
--Add column owner_id which is a foreign key referencing owner table
BEGIN;
ALTER TABLE animals
ADD COLUMN species_id INT;
ALTER TABLE animals
ADD COLUMN owner_id INT;
COMMIT;

--Connection foreing key species_id with species table (id)
BEGIN;
ALTER TABLE animals
ADD CONSTRAINT species_fk
FOREIGN KEY (species_id)
REFERENCES species(id)
ON DELETE CASCADE;
COMMIT;

--Connection foreing key owner_id with owner table (id)
BEGIN;
ALTER TABLE animals
ADD CONSTRAINT owner_fk
FOREIGN KEY (owner_id)
REFERENCES owners(id)
ON DELETE CASCADE;
COMMIT;