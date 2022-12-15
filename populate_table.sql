/* 
SQL text file for inserting the tuples to each table for Group Assignment part 3
Group member: Yilin Li, Fuhao Ruan
11/2/2022
*/

use company;

insert into physician
	values(1020304050,'Jason Smith', 'Pulmonary',null, 5390002121);

insert into physician
	values(0987654321, 'JOHN Williams', 'Brain', '011 Paeker, Tulsa, OK', 3192210298);

insert into physician
	values(8822446691, 'MICHAEL Johnson', 'Neurologic', '918 Beach, Chicago, IL', null);
    
insert into physician
	values(9955113377, 'ROBERT Garcia', 'Cardiac', null, null);
    
insert into physician
	values(4455883399, 'JAMES Narayan', 'Infectious', '332 Jascs, Boston, MA', 1008912345);

insert into employer
	values(122314561, 'Randy Allen', '886 Campus, Boston, MA', 3191021981);
    
insert into employer
	values(919293949, 'Jesse Lewis', '102 Lack, Tulsa, OK', 5391102198);
    
insert into employer
	values(021002212, 'Billy Martin', '198 Ricks, Chicago, IL', 6191234567);
    
insert into insurer
	values(92123212, 'Mountain Ins', '2100 Valley, Medford, MA', 5359112212);

insert into insurer
	values(55574185, 'Kyle Ins', '930 Fairview, Hollister, CA', null);

insert into insurer
	values(45685219, 'Handsh Ins', '700 Belle, Sunnyside, WA',3131230987);
    
insert into hospital
	values(02165, 'Ast Hospital', '102 Tacoma, Tulsa, OK', 5031881218);

insert into hospital
	values(16616, 'Mem Hospital', '135 Ave, Chicago, IL', 3179293321);
    
insert into hospital
	values(33158, 'Sal Hospital', '503 Oak, Boston, MA', null);
    

insert into person
	values(999887777,'Olivia Smith',1213184718,'121 Rivers, Boston, MA',122314561,92123212,1020304050);

insert into person
	values(987654321,'Jenni Nara',9876543210,'291 Berry, Bellair, TX',122314561,92123212,1020304050);

insert into person
	values(111122333,'Alicia Smith',3141234567,'563 Rice, Houston, TX',919293949,92123212,0987654321);
    
insert into person
	values(222111321,'Ahmad Nara',5121234567,'123 Beach, Tulsa, OK',122314561,55574185,1020304050);
    
insert into person
	values(112211221,'Jenn Shen',1230981230,'512 Street, Boston, MA',919293949,55574185,0987654321);

insert into person
	values(332133213,'Chris Smith',null,null,919293949,45685219,8822446691);
    
insert into person
	values(112122122,'Donald Will',5153212123,'444 Park, San Francisco, LA',021002212,55574185,8822446691);

insert into person
	values(111112112,'Kenn Garcia',3121192103,null,021002212,55574185,8822446691);

insert into person
	values(222222111,'Jona Johnson',5392012121,'432 York, Chicago, IL',021002212,45685219,9955113377);

insert into person
	values(222211111,'Jack Narayan',null,'002 Jack, Salt Lake City, UT',021002212,45685219,4455883399);

insert into EMP_INSURER
	values(021002212,45685219);
    
insert into EMP_INSURER
	values(122314561,55574185);
    
insert into EMP_INSURER
	values(919293949,92123212);
    
insert into affiliation
	values(1020304050,02165);

insert into affiliation
	values(0987654321,16616);

insert into affiliation
	values(8822446691,02165);
    
insert into affiliation
	values(9955113377,16616);

insert into affiliation
	values(4455883399,33158);

insert into PHY_INSURER
	values(1020304050,92123212);
    
insert into PHY_INSURER
	values(0987654321,55574185);
    
insert into PHY_INSURER
	values(8822446691,45685219);	
    
insert into PHY_INSURER
	values(9955113377,45685219);	
    
insert into PHY_INSURER
	values(4455883399,92123212);
    
insert into visit
	values(999887777,8822446691,'2022-01-07','Not Dangerous','No');
    
insert into visit
	values(999887777,1020304050,'2021-12-30','Not Dangerous','Yes');
    
insert into visit
	values(111122333,0987654321,'2022-06-17','Not Dangerous', 'Yes');
    
insert into visit
	values(222111321,0987654321,'2022-05-20','Dangerous','No');
    
insert into visit
	values(222111321,0987654321,'2022-05-21','Dangerous','No');
    
insert into visit
	values(222111321,1020304050,'2022-05-21','Dangerous','Yes');
    
insert into visit
	values(222111321,1020304050,'2022-05-22','Not Dangerous','Yes');
    
insert into visit
	values(332133213,8822446691,'2022-04-12','Not Dangerous','Yes');
    
insert into visit
	values(332133213,8822446691,'2022-04-13','Not Dangerous','Yes');
    
insert into visit
	values(222222111,8822446691,'2021-12-24','Dangerous', 'Yes');
    
insert into visit
	values(222222111,1020304050,'2021-12-30','Dangerous', 'Yes');

insert into visit
	values(222222111,9955113377,'2022-01-02','Not Dangerous','Yes');
    
insert into visit
	values(222222111,9955113377,'2022-01-13','Not Dangerous','Yes');
    
insert into visit
	values(222222111,9955113377,'2022-01-14','Not Dangerous','Yes');
    
insert into visit
	values(987654321,1020304050,'2019-12-13','Not Dangerous','Yes');
    
insert into claim
	values(0200,380.12,'2022-01-08','2022-01-25',999887777,8822446691,'2022-01-07',92123212);

insert into claim
	values(0201,4210.59,'2022-01-09','2022-01-25',999887777,8822446691,'2022-01-07',92123212);
    
insert into claim
	values(0232,2152.67,'2021-12-31','2022-1-30',999887777,1020304050,'2021-12-30',92123212);
    
insert into claim
	values(1211,536.34,'2022-06-18', null,111122333,0987654321,'2022-06-17',92123212);
    
insert into claim
	values(1213,3051.85,'2022-06-19', null,111122333,0987654321,'2022-06-17',92123212);
    
insert into claim
	values(2211,731.15,'2022-05-22','2022-05-30',222111321,0987654321,'2022-05-20',55574185);
    
insert into claim
	values(2212,5121.39,'2022-06-01','2022-06-21',222111321,0987654321,'2022-05-21',55574185);
    
insert into claim
	values(2159,498.69,'2022-05-24','2022-05-30',222111321,0987654321,'2022-05-21',55574185);
    
insert into claim
	values(3264,3125.54,'2022-04-15','2022-04-30',332133213,8822446691,'2022-04-12',45685219);
    
insert into claim
	values(4411,945.65,'2022-04-15','2022-04-30',332133213,8822446691,'2022-04-13',45685219);
    
insert into claim
	values(4567,6153.48,'2022-01-20','2022-02-14',222222111,9955113377,'2022-01-02',45685219);
    
insert into claim
	values(4629,4847.66,'2022-01-20','2022-02-14',222222111,9955113377,'2022-01-13',45685219);
    
insert into claim
	values(5925,682.36,'2022-01-20',null,222222111,9955113377,'2022-01-14',45685219);
    
insert into claim
	values(6020,715.48,'2019-1-10','2019-02-13',987654321,1020304050,'2019-12-13',92123212);
    
insert into claim
	values(6047,694.84,'2019-1-17',null,987654321,1020304050,'2019-12-13',92123212);
