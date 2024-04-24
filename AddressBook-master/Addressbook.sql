create database addressbook;
use addressbook;
CREATE TABLE contact
(
	conid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50) NOT NULL,
	lname VARCHAR(50) NOT NULL,
	cityn  VARCHAR(35) NOT NULL,
    bdate DATE NOT NULL,
    contc VARCHAR(10) NOT NULL,
    faddr  VARCHAR(255) NOT NULL,
    zpcod INT(6) NOT NULL,
    rview BOOLEAN 
);
insert into contact (fname,lname,cityn, username, bdate,contc,faddr,zpcod) values ("Kanchan","Shirke","Mumbai","dixit",'1995-08-07',8976367855,"Grant Road, Mumbai",400026);