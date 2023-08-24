-- Create Table 
CREATE TABLE Students(
  id serial PRIMARY KEY,
  name varchar(30),
  age int,
  score numeric
);

-- Insert Register
INSERT INTO Students (name, age, score) VALUES ('João', 18, 8.5);
INSERT INTO Students (name, age, score) VALUES ('Maria', 17, 9.2);
INSERT INTO Students (name, age, score) VALUES ('Pedro', 19, 7.8);
INSERT INTO Students (name, age, score) VALUES ('Ana', 18, 6.5);
INSERT INTO Students (name, age, score) VALUES ('Carlos', 17, 7.2);

-- UPDATE 
UPDATE Students SET score = 7.2 WHERE id = 4;

-- Query
SELECT * FROM Students WHERE age = 18;
