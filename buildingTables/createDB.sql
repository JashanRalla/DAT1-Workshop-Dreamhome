.open dblPractice.sqlite

PRAGMA foreign_keys = ON; 

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS salesStaff;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS employees;

CREATE TABLE contacts (
    contactID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(25),
    email VARCHAR(40) CHECK (email LIKE '%@%'),
    phone CHAR(11) DEFAULT '00000000000' CHECK (length(phone) = 11)
);

INSERT INTO contacts(fname, lname, email)
VALUES ('John', 'Doe', 'johnDoe@email.com'),
       ('Neil', 'Shah', 'Neilshah@email.com'),
       ('Jack', 'Smith', 'JackSmith@email.com');

CREATE TABLE salesStaff (
    employeeID INTEGER PRIMARY KEY NOT NULL,
    salesPerson VARCHAR(25),
    salesOffice VARCHAR(25),
    officeNumber CHAR(11),
    customer1 VARCHAR(25),
    customer2 VARCHAR(25),
    customer3 VARCHAR(25)
);

CREATE TABLE student (
    studentID INTEGER PRIMARY KEY NOT NULL,
    studentName VARCHAR(25),
    majorName VARCHAR(25),
    noOfCreditHours INTEGER
);

CREATE TABLE employees (
    employeeID INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(25),
    jobCode CHAR(3),
    job VARCHAR(25),
    statusCode CHAR(2),
    homeState VARCHAR(25)
);