DROP DATABASE IF EXISTS hogwarts;
CREATE DATABASE hogwarts;

\c houses;



-- Schools of magic consist of several `houses`. Houses have these properties:

-- * name
-- * animal (lion, badger, etc.)
-- * points (awarded or subtracted by teachers)
CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT,
  animal TEXT,
  points INTEGER
);



-- Each house consists of many `students`. Students have these properties:

-- * name
-- * gender
-- * year (first year, second year, etc.)
-- * birth date
-- * admission date
-- * alumni status (have they graduated?)
CREATE TABLE students (
  name TEXT,
  gender TEXT,
  year INTEGER,
  birth_date DATE,
  admission_date DATE,
  alumni_status TEXT
);



-- Schools also teach many `spells`. Spells have these properties:

-- * name
-- * incantation
-- * category (charms, dark arts, etc.)
-- * level (year at which a student may first learn the spell)
CREATE TABLE spells (
  name TEXT,
  incantation TEXT,
  category TEXT,
  level INTEGER,
  known_spells TEXT,
  proficiency NUMERIC(3,2) CHECK ((proficiency >= 0) AND (proficiency <= 100))
);

-- Students can learn spells through the school &ndash; we might call these `known_spells`. Known spells have a "proficiency", which is a percentage between 0 and 100. Students will gain proficiency in spells over time, though they may lose proficiency if they haven't practiced in a while.

-- Create a database and tables to store these objects, with appropriate columns and indexes. Store your commands in a `.sql` file so you can re-run them easily.
