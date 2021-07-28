# Create a new animals  table inside of the  database
# make sure your animals  table has these rows:
# animal_id
# name
# type
# age
# size
# is_adoptable
# is_cute
# 3. make sure your root user has grants to this db
# 4. insert ~ 10 animals into the  table
# 5. Describe animals table
# 6. Write a sql select command that outputs all the animal names where the animal type is dog

CREATE DATABASE IF NOT EXISTS warmup_exercises_db;

USE warmup_exercises_db;

CREATE TABLE IF NOT EXISTS animals (
  animal_id int AUTO_INCREMENT NOT NULL,
  name VARCHAR(69) NOT NULL,
  type VARCHAR(69) NOT NULL,
  age int NOT NULL,
  size double NOT NULL,
  is_Adoptable boolean NOT NULL,
  is_Cute boolean NOT NULL,
  PRIMARY KEY (animal_id)
);

DESCRIBE animals;
TRUNCATE animals;

INSERT INTO animals
(name, type, age, size, is_Adoptable, is_Cute)
VALUES
    ('derpMan', 'dog', 1, 3, true, true),
    ('derpMan2', 'dog', 2, 3, true, true),
    ('derpMan3', 'dog', 5, 3, true, true);

SELECT * FROM animals;