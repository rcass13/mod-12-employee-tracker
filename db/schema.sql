DROP DATABASE IF EXISTS avatar_employees;
CREATE DATABASE avatar_employees;

USE avatar_employees;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  PRIMARY KEY (id),
    -- FOREIGN KEY
     FOREIGN KEY(manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL


);

INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Taylor", "Swift", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Jack", "Rutter", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Tyler", "Joseph", 4, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Josua", "Dunn", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Freddie", "Mercury", 5, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("David", "Bowie", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Ella", "Love", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Luma", "Bird", 1, 1 );
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Rin", "Cass", 1, 1);




CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);
insert into department(name)
values ('Management'),
       ('Fire'),
       ('Water'),
       ('Air'),
       ('Earth');

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY(department_id) REFERENCES department(id)
);


insert into role(title, salary, department_id) values('Manager (The Avatar)', 5000000, 1);
insert into role(title, salary, department_id) values('Fire Bender', 1000000, 2);
insert into role(title, salary, department_id) values('Water Bender', 4000000, 3);
insert into role(title, salary, department_id) values('Air Bender', 3000000, 4);
insert into role(title, salary, department_id) values('Earth Bender', 2000000, 5);
