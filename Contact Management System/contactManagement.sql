create database addressbook;
use addressbook;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    UNIQUE(username)
);

CREATE TABLE contact
(
    conid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    cityn  VARCHAR(35) NOT NULL,
    username VARCHAR(50),
    bdate DATE NOT NULL,
    contc VARCHAR(10) NOT NULL,
    faddr  VARCHAR(255) NOT NULL,
    zpcod INT(6) NOT NULL,
    rview BOOLEAN
);