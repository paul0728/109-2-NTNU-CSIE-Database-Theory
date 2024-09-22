delete from instructor;
delete from course;
delete from teach;
delete from review;
delete from user_;
SET FOREIGN_KEY_CHECKS=0;
insert into instructor values ('01', '方瓊瑤', 'violet@csie.ntnu.edu.tw', '電腦視覺與影像解析實驗室',0);
insert into instructor values ('02', '陳柏琳', 'berlin@csie.ntnu.edu.tw', '語音暨機器智能實驗室',0);
insert into instructor values ('03', '王超', 'cw@ntnu.edu.tw', '網宇實體系統實驗室',0);
insert into instructor values ('04', '黃文吉', 'whwang@ntnu.edu.tw', '多媒體通訊、系統晶片實驗室',0);
insert into instructor values ('05', '柯佳伶', 'jlkoh@csie.ntnu.edu.tw', '資料探勘實驗室',0);
insert into instructor values ('06', '紀博文', 'neokent@gapps.ntnu.edu.tw', '資訊安全研究室',0);
insert into instructor values ('07', '蔡榮宗', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);
insert into instructor values ('08', '王弘倫', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);

insert into course values ('CSC-0001', '資料探勘','3','選修');
insert into course values ('CSC-0011', '電腦輔助VLSI設計', '3','選修');
insert into course values ('CSC-0072', '資訊安全', '3','選修');
insert into course values ('CSU-0001', '程式設計(一)','3','必修');
insert into course values ('CSU-0002', '程式設計(二)','3','必修');
insert into course values ('CSU-0008', '基礎電子學實驗','1','選修');
insert into course values ('CSU-0013', '資料結構','3','必修');
insert into course values ('CSU-0015', '機率論','3','必修');
insert into course values ('CSU-0016', '線性代數','3','必修');
insert into course values ('CSU-0028', '軟體工程','3','選修');
insert into course values ('CSU-0038', '區域性網路','3','選修');

insert into teach values ('05', 'CSC-0001');
insert into teach values ('04', 'CSC-0011');
insert into teach values ('06', 'CSC-0072');
insert into teach values ('06', 'CSU-0001');
insert into teach values ('08', 'CSU-0001');
insert into teach values ('06', 'CSU-0002');
insert into teach values ('08', 'CSU-0002');
insert into teach values ('03', 'CSU-0008');
insert into teach values ('05', 'CSU-0013');
insert into teach values ('02', 'CSU-0015');
insert into teach values ('07', 'CSU-0016');
insert into teach values ('06', 'CSU-0028');
insert into teach values ('07', 'CSU-0038');

insert into user_ values ('Wang','paulpuawng','12345678');
insert into user_ values ('Kai','kaichen','hihi1017');
insert into user_ values ('Leo','leeeeoooo','iamleo666');
insert into user_ values ('Kevin','kevin12345','ddd123');
insert into user_ values ('Maxx','Maxchen','flyyy123');
insert into user_ values ('Andy','andychao','cc123');
insert into user_ values ('Lucy','lucyfeng','good1314');
insert into user_ values ('Peggy','peggyhan','happy123');
insert into user_ values ('Amy','iamamy','amy123');


insert into review values('0000',3,'soso',current_time(),'05','CSC-0001','Leo');
insert into review values('0001',4,'good',current_time(),'05','CSC-0001','Kevin');
insert into review values('0002',5,'Very good',current_time(),'04','CSC-0011','Lucy');
insert into review values('0003',1,'very bad',current_time(),'04','CSC-0011','Andy');
insert into review values('0004',3,'soso',current_time(),'04','CSC-0011','Peggy');
insert into review values('0005',5,'Very good',current_time(),'04','CSC-0011','Maxx');
insert into review values('0006',4,'good',current_time(),'06','CSC-0072','Amy');
insert into review values('0007',4,'good',current_time(),'06','CSC-0072','Leo');
insert into review values('0008',3,'soso',current_time(),'06','CSU-0001','Peggy');
insert into review values('0009',2,'ok',current_time(),'08','CSU-0001','Amy');
insert into review values('0010',2,'ok',current_time(),'06','CSU-0002','Kevin');
insert into review values('0011',2,'ok',current_time(),'06','CSU-0002','Maxx');
insert into review values('0012',2,'ok',current_time(),'08','CSU-0002','Andy');
insert into review values('0013',2,'ok',current_time(),'08','CSU-0002','Lucy');
insert into review values('0014',3,'soso',current_time(),'03','CSU-0008','Leo');
insert into review values('0015',3,'soso',current_time(),'03','CSU-0008','Kevin');
insert into review values('0016',5,'Very good',current_time(),'05','CSU-0013','Lucy');
insert into review values('0017',5,'Very good',current_time(),'05','CSU-0013','Andy');
insert into review values('0018',2,'ok',current_time(),'02','CSU-0015','Peggy');
insert into review values('0020',3,'soso',current_time(),'07','CSU-0016','Amy');
insert into review values('0021',5,'Very good',current_time(),'07','CSU-0016','Leo');
insert into review values('0022',1,'very bad',current_time(),'06','CSU-0028','Kevin');
insert into review values('0023',2,'ok',current_time(),'06','CSU-0028','Lucy');
insert into review values('0024',4,'good',current_time(),'07','CSU-0038','Andy');
insert into review values('0025',3,'soso',current_time(),'07','CSU-0038','Peggy');





