create table instructor
 (name varchar(50) not null, 
  email varchar(255),  
  office varchar(50),
  score decimal(3,2),
  primary key (name)
 )ENGINE=INNODB;

create table course
(
C_ID varchar(50),
title varchar(50) not null,
credits int,
attributes varchar(50),
name varchar(50),
foreign key (name) references instructor(name),
primary key (C_ID)
)ENGINE=INNODB;


create table user_
(
username varchar(50),
account varchar(50),
password varchar(50),
primary key (username)
)ENGINE=INNODB;

create table review
(
R_ID varchar(50),
rate int not null,
comment_ varchar(1000) not null,
time_ datetime,
name varchar(50),
title varchar(50),
username varchar(50),
foreign key (username) references user_(username),
primary key (R_ID),
check (1<=rate and rate<=5)
)ENGINE=INNODB;





delimiter |
CREATE TRIGGER insert_score 
AFTER INSERT ON review 
FOR EACH ROW 
BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course 
where name=T.name
)

where T.name=NEW.name;

END; 
|



delimiter |
CREATE TRIGGER delete_score 
AFTER DELETE ON review 
FOR EACH ROW 
BEGIN


UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course 
where name=T.name
)

where T.name=OLD.name;

END;
|


delimiter |
CREATE TRIGGER update_score 
AFTER UPDATE ON review 
FOR EACH ROW 
BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course 
where name=T.name
)

where T.name=OLD.name;

END; 
|





