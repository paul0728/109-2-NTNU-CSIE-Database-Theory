create table instructor
 (I_ID varchar(50), 
  name varchar(50) not null, 
  email varchar(255),  
  office varchar(50),
  score decimal(3,2) DEFAULT 0,
  primary key (I_ID)
 )ENGINE=INNODB;

create table course
(
C_ID varchar(50),
title varchar(50) not null,
credits int,
attributes varchar(50),
primary key (C_ID)
)ENGINE=INNODB;



create table teach
(
I_ID varchar(50),
C_ID varchar(50),
primary key (I_ID,C_ID),
foreign key (I_ID) references instructor(I_ID),
foreign key (C_ID) references course(C_ID)

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
rate int,
comment_ varchar(1000) not null,
time_ datetime,
I_ID varchar(50),
C_ID varchar(50),
username varchar(50),
foreign key (I_ID) references instructor(I_ID),
foreign key (C_ID) references course(C_ID),
foreign key (username) references user_(username),
primary key (R_ID,I_ID,C_ID,username)
)ENGINE=INNODB;





delimiter |
CREATE TRIGGER insert_score 
AFTER INSERT ON review 
FOR EACH ROW 
BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join teach 
where I_ID=T.I_ID
)

where T.I_ID IN (
	select I_ID
	from teach
	where C_ID= NEW.C_ID and I_ID= NEW.I_ID);

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
from review natural join teach
where I_ID=T.I_ID
)


where T.I_ID IN (
	select I_ID
	from teach
	where C_ID= OLD.C_ID and I_ID= OLD.I_ID);

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
from review natural join teach 
where I_ID=T.I_ID
)

where T.I_ID IN (
	select I_ID 
	from teach
	where C_ID= OLD.C_ID and I_ID= OLD.I_ID);

END; 
|





