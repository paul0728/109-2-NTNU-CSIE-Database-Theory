delete from instructor;
delete from course;
delete from auth_user;
delete from review;
SET FOREIGN_KEY_CHECKS=0;
insert into instructor values ('0000','方瓊瑤', 'violet@csie.ntnu.edu.tw', '電腦視覺與影像解析實驗室',0);
insert into instructor values ('0001','陳柏琳', 'berlin@csie.ntnu.edu.tw', '語音暨機器智能實驗室',0);
insert into instructor values ('0002','王超', 'cw@ntnu.edu.tw', '網宇實體系統實驗室',0);
insert into instructor values ('0003','黃文吉', 'whwang@ntnu.edu.tw', '多媒體通訊、系統晶片實驗室',0);
insert into instructor values ('0004','柯佳伶','jlkoh@csie.ntnu.edu.tw', '資料探勘實驗室',0);
insert into instructor values ('0005','紀博文', 'neokent@gapps.ntnu.edu.tw', '資訊安全研究室',0);
insert into instructor values ('0006','蔡榮宗', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);
insert into instructor values ('0007','王弘倫', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);

insert into course values ('0000', '區域性網路','3','選修','0006');
insert into course values ('0001', '資料探勘','3','選修','0004');
insert into course values ('0002', '電腦輔助VLSI設計', '3','選修','0003');
insert into course values ('0003', '資訊安全', '3','選修','0005');
insert into course values ('0004', '程式設計(一)','3','必修','0005');
insert into course values ('0005', '程式設計(二)','3','必修','0007');
insert into course values ('0006', '基礎電子學實驗','1','選修','0002');
insert into course values ('0007', '資料結構','3','必修','0004');
insert into course values ('0008', '機率論','3','必修','0001');
insert into course values ('0009', '線性代數','3','必修','0006');
insert into course values ('0010', '軟體工程','3','選修','0005');
insert into course values ('0011', '程式設計(一)','3','必修','0007');



INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$216000$TMFu0qT5i79X$B1JUW0PDVD/imNqb4s8vViSqk+OotROOGutCjbWKz3U=', '2021-06-22 13:03:25.697298', 0, 'Leo', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:03:25.448932'),
(4, 'pbkdf2_sha256$216000$cKq6Kp9vNvBB$AA6g3RUFKc7bTv2dJJwo7uPdZVP/8wv4oSKimreBPJg=', '2021-06-22 13:07:19.418852', 0, 'Kevin', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:19.178623'),
(5, 'pbkdf2_sha256$216000$wWCo53rFbWMR$D9Jvk4ZfH+CmD6uJJw+mNgG5/glC1pCe9u7T7UEe334=', '2021-06-22 13:07:43.498330', 0, 'Lucy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:07:43.255585'),
(6, 'pbkdf2_sha256$216000$mpcfpYWSL0l0$nrLlOr18lpuXJbHqoGycs/xL8ugpHRcGPOQcx+Oj52s=', '2021-06-22 13:08:28.665128', 0, 'Andy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:08:28.418792'),
(7, 'pbkdf2_sha256$216000$RBlRLFbHWQc1$Lkg/pMFpEiLZEg4CO4TlHAFXA18CoVLGWBKt7VKbt34=', '2021-06-22 13:09:01.862818', 0, 'Peggy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:01.614825'),
(8, 'pbkdf2_sha256$216000$1KDLHE7oB5DC$QsILyqFwjqEWgdwRn97FP5uZSyPUMgnF8DeWJRafwY8=', '2021-06-22 13:09:24.645268', 0, 'Maxx', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:24.399649'),
(9, 'pbkdf2_sha256$216000$loMX1XZgw9B5$SkmXMHaP1VxBfJlaLi4lfBzDCQ1WtqDl6G82yuAmrtE=', '2021-06-22 13:09:45.920502', 0, 'Amy', '', '', 'paulpuwang@gmail.com', 0, 1, '2021-06-22 13:09:45.681669');
COMMIT;



insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0005','Leo');
insert into review(rate,comment_,time_,C_ID,username) values(4,'good',current_time(),'0005','Kevin');
insert into review(rate,comment_,time_,C_ID,username) values(5,'Very good',current_time(),'0001','Lucy');
insert into review(rate,comment_,time_,C_ID,username) values(1,'very bad',current_time(),'0000','Andy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0003','Peggy');
insert into review(rate,comment_,time_,C_ID,username) values(5,'Very good',current_time(),'0001','Maxx');
insert into review(rate,comment_,time_,C_ID,username) values(4,'good',current_time(),'0004','Amy');
insert into review(rate,comment_,time_,C_ID,username) values(4,'good',current_time(),'0004','Leo');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0008','Peggy');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0009','Amy');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0010','Kevin');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0010','Maxx');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0006','Andy');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0006','Lucy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0002','Leo');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0002','Kevin');
insert into review(rate,comment_,time_,C_ID,username) values(5,'Very good',current_time(),'0007','Lucy');
insert into review(rate,comment_,time_,C_ID,username) values(5,'Very good',current_time(),'0007','Andy');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0008','Peggy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0008','Amy');
insert into review(rate,comment_,time_,C_ID,username) values(5,'Very good',current_time(),'0002','Leo');
insert into review(rate,comment_,time_,C_ID,username) values(1,'very bad',current_time(),'0003','Kevin');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0000','Lucy');
insert into review(rate,comment_,time_,C_ID,username) values(4,'good',current_time(),'0000','Andy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0002','Peggy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0011','Peggy');
insert into review(rate,comment_,time_,C_ID,username) values(3,'soso',current_time(),'0011','Leo');
insert into review(rate,comment_,time_,C_ID,username) values(2,'ok',current_time(),'0011','Amy');




