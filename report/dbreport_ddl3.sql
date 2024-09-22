create table instructor
 (I_ID varchar(50),
  name varchar(50) not null, 
  email varchar(255),  
  office varchar(50),
  score decimal(3,2),
  primary key (I_ID)
 )ENGINE=INNODB;

create table course
(
C_ID varchar(50),
title varchar(50) not null,
credits int,
attributes varchar(50),
I_ID varchar(50),
foreign key (I_ID) references instructor(I_ID),
primary key (C_ID)
)ENGINE=INNODB;




create table review
(
R_ID int AUTO_INCREMENT,
rate int not null,
comment_ varchar(1000) not null,
time_ datetime,
C_ID varchar(50),
username varchar(150),
foreign key (C_ID) references course(C_ID),
primary key (R_ID)
)ENGINE=INNODB;



delimiter |
CREATE TRIGGER insert_rate_cal_score 
AFTER INSERT ON review 
FOR EACH ROW 
BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=NEW.C_ID);


END; 
|




delimiter |
CREATE TRIGGER delete_rate_cal_score  
AFTER DELETE ON review 
FOR EACH ROW 
BEGIN


UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=OLD.C_ID);

END;
|


delimiter |
CREATE TRIGGER update_rate_cal_score   
AFTER UPDATE ON review 
FOR EACH ROW 
BEGIN

UPDATE instructor T
SET T.score = 
(select round(AVG(rate),2)
from review natural join course
where I_ID=T.I_ID 

)


where T.I_ID in (select I_ID 
				from course
				where C_ID=OLD.C_ID);


END; 
|




