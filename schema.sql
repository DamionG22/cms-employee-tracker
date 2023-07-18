DROP DATABASE IF EXISTS employee_roster_db;
-- creates database
CREATE DATABASE employee_roster_db;

USE employee_roster_db;

-- creates table for database
CREATE TABLE departments (

   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

   name VARCHAR(30) NOT NULL
);



CREATE TABLE  roles (

    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(30) NOT NULL,

    salary DECIMAL(10,2) NOT NULL,

    department_id INT NOT NULL,

    FOREIGN KEY (department_id) REFERENCES  departments (id)




);


CREATE TABLE employees (

    id INT AUTO_INCREMENT PRIMARY KEY ,

    first_name VARCHAR(30) NOT NULL,

    last_name VARCHAR(30) NOT NULL,

    role_id INT NOT NULL,

    manager_id INT NOT NULL,

    FOREIGN KEY (role_id) REFERENCES roles(id)

);