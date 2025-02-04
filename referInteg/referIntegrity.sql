.open referentialIntegrity.sqlite

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS products;

CREATE TABLE contacts (
    contactID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25) CHECK (length(fname) >= 1),
    lname VARCHAR(25) CHECK (length(lname) >= 1),
    email VARCHAR(40) CHECK (email LIKE '%@%'),
    phone CHAR(11) DEFAULT '0000000000' CHECK (length(phone) = 10)
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY NOT NULL,
    product_name VARCHAR(25),
    list_price FLOAT,
    discount FLOAT,

    CHECK (list_price >= discount AND 
        discount >= 0 AND 
        list_price >= 0) 
);

CREATE TABLE voter(
  voter_id INTEGER PRIMARY KEY,
  name VARCHAR(25),
  age INTEGER,
  dob DATE,
  check(age >= 18)
 );