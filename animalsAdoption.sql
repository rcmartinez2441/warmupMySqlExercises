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

DROP TABLE IF EXISTS animals;
CREATE TABLE IF NOT EXISTS animals (
  animal_id int AUTO_INCREMENT NOT NULL,
  name VARCHAR(69) NOT NULL,
  type VARCHAR(69) NOT NULL,
  age int NOT NULL,
  size VARCHAR(69) NOT NULL,
  is_Adoptable boolean NOT NULL,
  is_Cute boolean NOT NULL,
  PRIMARY KEY (animal_id)
);

DESCRIBE animals;
TRUNCATE animals;

INSERT INTO animals
(name, type, age, size, is_Adoptable, is_Cute)
VALUES
    ('derpMan', 'dog', 1, 'sm', true, true),
    ('derpMan2', 'dog', 2, 'md', true, true),
    ('derpMan3', 'dog', 5, 'lg', false, true),
    ('derpMan4', 'dog', 3, 'sm', true, true),
    ('derpMan5', 'dog', 4, 'md', true, true),
    ('derpMan6', 'dog', 7, 'lg', false, true),
    ('derpMan7', 'dog', 4, 'sm', true, true),
    ('derpMan8', 'dog', 3, 'md', false, true),
    ('derpMan9', 'dog', 2, 'lg', true, true),
    ('derpMan10', 'dog', 1, 'sm', true, true);


SELECT * FROM animals;