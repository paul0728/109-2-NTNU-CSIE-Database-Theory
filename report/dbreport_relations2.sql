delete from instructor;
delete from course;
delete from review;
delete from user_;
SET FOREIGN_KEY_CHECKS=0;
insert into instructor values ('方瓊瑤', 'violet@csie.ntnu.edu.tw', '電腦視覺與影像解析實驗室',0);
insert into instructor values ('陳柏琳', 'berlin@csie.ntnu.edu.tw', '語音暨機器智能實驗室',0);
insert into instructor values ('王超', 'cw@ntnu.edu.tw', '網宇實體系統實驗室',0);
insert into instructor values ('黃文吉', 'whwang@ntnu.edu.tw', '多媒體通訊、系統晶片實驗室',0);
insert into instructor values ('柯佳伶', 'jlkoh@csie.ntnu.edu.tw', '資料探勘實驗室',0);
insert into instructor values ('紀博文', 'neokent@gapps.ntnu.edu.tw', '資訊安全研究室',0);
insert into instructor values ('蔡榮宗', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);
insert into instructor values ('王弘倫', 'jutsai@csie.ntnu.edu.tw', '通訊網路實驗室',0);

insert into course values ('0000', '區域性網路','3','選修','蔡榮宗');
insert into course values ('0001', '資料探勘','3','選修','柯佳伶');
insert into course values ('0002', '電腦輔助VLSI設計', '3','選修','黃文吉');
insert into course values ('0003', '資訊安全', '3','選修','紀博文');
insert into course values ('0004', '程式設計(一)','3','必修','紀博文');
insert into course values ('0005', '程式設計(二)','3','必修','王弘倫');
insert into course values ('0006', '基礎電子學實驗','1','選修','王超');
insert into course values ('0007', '資料結構','3','必修','柯佳伶');
insert into course values ('0008', '機率論','3','必修','陳柏琳');
insert into course values ('0009', '線性代數','3','必修','蔡榮宗');
insert into course values ('0010', '軟體工程','3','選修','紀博文');




insert into user_ values ('Wang','paulpuawng','12345678');
insert into user_ values ('Kai','kaichen','hihi1017');
insert into user_ values ('Leo','leeeeoooo','iamleo666');
insert into user_ values ('Kevin','kevin12345','ddd123');
insert into user_ values ('Maxx','Maxchen','flyyy123');
insert into user_ values ('Andy','andychao','cc123');
insert into user_ values ('Lucy','lucyfeng','good1314');
insert into user_ values ('Peggy','peggyhan','happy123');
insert into user_ values ('Amy','iamamy','amy123');


insert into review values('0000',3,'soso',current_time(),'王弘倫','程式設計(二)','Leo');
insert into review values('0001',4,'good',current_time(),'王弘倫','程式設計(二)','Kevin');
insert into review values('0002',5,'Very good',current_time(),'柯佳伶','資料探勘','Lucy');
insert into review values('0003',1,'very bad',current_time(),'蔡榮宗','區域性網路','Andy');
insert into review values('0004',3,'soso',current_time(),'紀博文','資訊安全','Peggy');
insert into review values('0005',5,'Very good',current_time(),'柯佳伶','資料探勘','Maxx');
insert into review values('0006',4,'good',current_time(),'紀博文','程式設計(一)','Amy');
insert into review values('0007',4,'good',current_time(),'紀博文','程式設計(一)','Leo');
insert into review values('0008',3,'soso',current_time(),'陳柏琳','機率論','Peggy');
insert into review values('0009',2,'ok',current_time(),'蔡榮宗','線性代數','Amy');
insert into review values('0010',2,'ok',current_time(),'紀博文','軟體工程','Kevin');
insert into review values('0011',2,'ok',current_time(),'紀博文','軟體工程','Maxx');
insert into review values('0012',2,'ok',current_time(),'紀博文','軟體工程','Andy');
insert into review values('0013',2,'ok',current_time(),'紀博文','軟體工程','Lucy');
insert into review values('0014',3,'soso',current_time(),'黃文吉','電腦輔助VLSI設計','Leo');
insert into review values('0015',3,'soso',current_time(),'黃文吉','電腦輔助VLSI設計','Kevin');
insert into review values('0016',5,'Very good',current_time(),'柯佳伶','資料結構','Lucy');
insert into review values('0017',5,'Very good',current_time(),'柯佳伶','資料結構','Andy');
insert into review values('0018',2,'ok',current_time(),'陳柏琳','機率論','Peggy');
insert into review values('0020',3,'soso',current_time(),'陳柏琳','機率論','Amy');
insert into review values('0021',5,'Very good',current_time(),'黃文吉','電腦輔助VLSI設計','Leo');
insert into review values('0022',1,'very bad',current_time(),'紀博文','資訊安全','Kevin');
insert into review values('0023',2,'ok',current_time(),'蔡榮宗','區域性網路','Lucy');
insert into review values('0024',4,'good',current_time(),'蔡榮宗','區域性網路','Andy');
insert into review values('0025',3,'soso',current_time(),'黃文吉','電腦輔助VLSI設計','Peggy');





