
-- Create table
CREATE TABLE Employees(
  id serial PRIMARY KEY,
  name varchar(30),
  role varchar(30),
  salary numeric
);

-- Insert employee register
INSERT INTO Employees(name, role, salary) VALUES ('João', 'Gerente', 5000.00);
INSERT INTO Employees(name, role, salary) VALUES ('Maria', 'Analista', 3500.00);
INSERT INTO Employees(name, role, salary) VALUES ('Pedro', 'Desenvolvedor', 4000.00);
INSERT INTO Employees(name, role, salary) VALUES ('Ana', 'Analista', 3200.00);
INSERT INTO Employees(name, role, salary) VALUES ('Carlos', 'Estagiário', 2000.00);


-- Create table Departaments
CREATE TABLE Departaments(
  id serial PRIMARY KEY,
	name varchar(30)  
);

-- Insert departaments
INSERT INTO Departaments(name) VALUES ('Vendas');
INSERT INTO Departaments(name) VALUES ('TI');
INSERT INTO Departaments(name) VALUES ('Recursos Humanos');

--Create table employees_departaments
CREATE TABLE employees_departaments(
	  employees_id int, 
  	departament_id int,
  
  	FOREIGN KEY (departament_id) REFERENCES Departaments(id),
  	FOREIGN KEY (employees_id) REFERENCES Employees(id)
 );

INSERT INTO employees_departaments (employees_id, departament_id) VALUES (1, 1);
INSERT INTO employees_departaments (employees_id, departament_id) VALUES (2, 2);
INSERT INTO employees_departaments (employees_id, departament_id) VALUES (3, 2);

SELECT * FROM employees_departaments;


-- QUERY
SELECT 
	D.name AS departament_name,
  ROUND(AVG(E.salary), 2) AS AVG_salary
  
  FROM Departaments D
  
  INNER JOIN Employees_departaments ED ON D.id = ED.departament_id
  INNER JOIN Employees E ON E.id = ED.employees_id
  
  GROUP BY D.name;

