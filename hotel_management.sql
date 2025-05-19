create database hotel_management_system;
use hotel_management_system;

create table room (room_id int auto_increment primary key, room_number int, room_type varchar(50), floor_number int,
 status boolean default true, price int);

create table customer (customer_id int auto_increment primary key, customer_name varchar(50), email varchar(50), 
contact_number float,id_proof varchar(50),id_proof_number float);

create table booking ( booking_id int auto_increment primary key, customer_id int , room_id int, check_in_date date, 
check_out_date date, total_price int, booking_date date, status varchar(50), 
foreign key(customer_id) references customer(customer_id), foreign key(room_id) references room(room_id));

create table payment ( payment_id int auto_increment primary key, booking_id int, payment_date date, amount_paid int,
 payment_method varchar(50), payment_status varchar(50), 
 foreign key(booking_id) references booking(booking_id));
 
 create table employee (employee_id int auto_increment primary key, employee_name varchar(50), email varchar(50), contact_number float,
  id_proof varchar(50),id_proof_number float,hire_date date, position varchar(50), salary int);
 
 create table service ( service_id int auto_increment primary key, service_name varchar(50), price int);
 
 create table service_usage ( serviceusage_id int auto_increment primary key, booking_id int, service_id int, total_price int, 
 foreign key(booking_id) references booking(booking_id), foreign key(service_id) references service(service_id));
 
 create table feedback ( feedback_id int auto_increment primary key, customer_id int,comments varchar(100), rating int,
 foreign key(customer_id) references customer(customer_id));
  
 drop table room;
 drop table customer;
 drop table booking;
 drop table payment;
 drop table employee;
 drop table service;
 drop table service_usage;
 drop table feedback;
 
 --------------------------------------------------------------------------------------------------------------------------------------
 
insert into room (room_id, room_number, room_type,floor_number,status, price) values 
(1,101,"single",1,true,500),(2,102,"standard",1,true,750),(3,103,"double",1,false,600),
(4,104,"single",1,true,500),(5,105,"double",1,false,600),(6,106,"suite",1,true,2000),
(7,107,"deluxe",1,true,1500),(8,108,"family",1,false,1000),
(9,109,"family",1,true,1000),(10,110,"luxury",1,false,3000),

(11,201,"single",2,true,500),(12,202,"standard",2,true,750),(13,203,"double",2,true,600),
(14,204,"single",2,true,500),(15,205,"double",2,false,1500),(16,206,"suite",2,false,2000),
(17,207,"deluxe",2,false,2000),(18,208,"family",2,false,1000),
(19,209,"family",2,true,1000),(20,210,"luxury",2,true,3000),

(21,301,"single",3,false,500),(22,302,"standard",3,true,750),(23,303,"double",3,true,600),
(24,304,"single",3,true,500),(25,305,"double",3,true,600),(26,306,"suite",3,false,2000),
(27,307,"deluxe",3,true,1500),(28,308,"family",3,false,1000),
(29,309,"family",3,false,1000),(30,310,"luxury",3,true,3000),

(31,401,"single",4,true,500),(32,402,"standard",4,false,750),(33,403,"double",4,true,600),
(34,404,"single",4,true,500),(35,405,"double",4,false,1500),(36,406,"suite",4,true,2000),
(37,407,"deluxe",4,false,2000),(38,408,"family",4,true,1000),
(39,409,"family",4,true,1000),(40,410,"luxury",4,false,3000),

(41,501,"single",5,true,500),(42,502,"standard",5,false,750),(43,503,"double",5,true,600),
(44,504,"single",5,false,500),(45,505,"double",5,true,600),(46,506,"suite",5,false,2000),
(47,507,"deluxe",5,true,1500),(48,508,"family",5,false,1000),
(49,509,"family",5,false,1000),(50,510,"luxury",5,true,3000);

insert into customer (customer_id, customer_name, email, contact_number, id_proof, id_proof_number) values 
( 1,"srilakshmi","asrilakshmi8897@gmail.com",9080820052, "aadhar card", 234587629815),
( 2,"anand murugan","manadmurugan05@gmail.com",9566215375, "aadhaar card" ,345656789021),
( 3,"suresh","suresh1807@gmail.com",9080818300, "aadhaar card", 234598720012),
( 4,"vinodhini","svino20@gmail.com",9840482208, "aadhar card",534298762351),
( 5,"malathi","smalathi2911@gmail.com",9872100112, "aadhar card",456398216143),
( 6,"selvam","mselvam1000@gmail.com",9872145362, "aadhar card",983201548253),
( 7,"dinesh","sdinesh22@gmail.com",8765213425, "pan card",9827361109),
( 8,"vani", "vanidinesh@gmail.com",8975600221, "pan card",8921356342),
( 9,"kavya","kavyasri221@gmail.com",9872190021, "aadhar card", 234567849833),
( 10,"mohamed zayn","zaynsumiya06@gmail.com",9872177720, "aadhar card", 921344450002),
( 11,"anirudh","aniii8897@gmail.com",9080343052, "aadhar card", 234587622735),
( 12,"murugan","amurugan105@gmail.com",9332115375, "aadhaar card" ,125356789021),
( 13,"ramesh","ramesh07@gmail.com",9080810032, "pan card", 1234587200),
( 14,"prem kumar","prem20@gmail.com",9823452208, "aadhar card",534298761122),
( 15,"shivanya","shivanya29@gmail.com",9810100112, "aadhar card",098798216143),
( 16,"ishita","ishita1000@gmail.com",9988145362, "aadhar card",989824548253),
( 17,"vaishnavi","vaish97@gmail.com",8765211254, "pan card",9102981109),
( 18,"ashmitha", "ashmi2019@gmail.com",8972098221, "pan card",8922987642),
( 19,"priya","priyasri221@gmail.com",8899190021, "aadhar card", 111167849833),
( 20,"akshaya","aksha15@gmail.com",9872199980, "aadhar card", 224444450002),
( 21,"aaradhya","aaradhya109@gmail.com",7766820052, "aadhar card", 123487629815),
( 22,"ananya","ananya90@gmail.com",8976215375, "aadhaar card" ,987656789021),
( 23,"aditi","aditi8876@gmail.com",8009818300, "aadhaar card", 234598909812),
( 24,"ishika","ishika20@gmail.com",9840483222, "aadhar card",534298098751),
( 25,"aahan","aahanrs05@gmail.com",9872100112, "pan card",2341216143),
( 26,"rohit","rohit45@gmail.com",9872142341, "aadhar card",987701548253),
( 27,"akshay","akshay231@gmail.com",8878213425, "pan card",9977661109),
( 28,"vimal","vimal908@gmail.com",8975602341, "pan card",8877556342),
( 29,"arun","arun75221@gmail.com",9900190021, "aadhar card", 334267849833),
( 30,"pranav","pranav10@gmail.com",9872288820, "aadhar card", 887744450002),
( 31,"ajay","ajay56@gmail.com",7643343052, "aadhar card", 2345890200735),
( 32,"balamurugan","bala95@gmail.com",9332332275, "aadhaar card" ,125352137021),
( 33,"tanya","tanyaramesh07@gmail.com",9080008132, "pan card", 1290876200),
( 34,"kritika","kritika74@gmail.com",9871452208, "aadhar card",534298999922),
( 35,"sana","sana29@gmail.com",9822000112, "aadhar card",092221216143),
( 36,"neha","neha90@gmail.com",9985467362, "aadhar card",989824522313),
( 37,"riya","riya97@gmail.com",8763243254, "pan card",0012381109),
( 38,"mohamed", "mohamed05@gmail.com",8787098221, "pan card",9822987642),
( 39,"jesi","jesima22@gmail.com",9872190021, "aadhar card", 111133439833),
( 40,"rihana","rihana10@gmail.com",9872132410, "aadhar card", 225468450002),
( 41,"tanvir","tanvir102@gmail.com",9009870052, "aadhar card", 254357629815),
( 42,"krish","krish05@gmail.com",9598765375, "aadhaar card" ,348787789021),
( 43,"rohan","rohan5643@gmail.com",9089080300, "aadhaar card", 288768720012),
( 44,"ishaan","ishaan009@gmail.com",9822312208, "pan card",5887662351),
( 45,"advika","advika21@gmail.com",9332100112, "aadhar card",876398216143),
( 46,"anahita","anahita20@gmail.com",9334245362, "aadhar card",009901548253),
( 47,"alia","alia102@gmail.com",8763322425, "pan card",9898961109),
( 48,"anvi", "anvi1006@gmail.com",8972232221, "pan card",5534256342),
( 49,"aadrik","aadrik223@gmail.com",9872009821, "aadhar card", 234522319833),
( 50,"agastya","agastya90@gmail.com",8765177720, "pan card", 9234450002);


insert into booking ( booking_id, customer_id, room_id, check_in_date, check_out_date, total_price, booking_date,status) values
(101, 1, 1,"2024-09-09", "2024-09-12", 2000, "2024-09-09", "checked out"),
(102, 2, 4,"2024-12-29", "2025-01-02", 2500, "2024-12-01", "checked in"),
(103, 3, 5, "2024-03-09", "2024-03-15", 3600, "2024-03-02", "checked out"),
(104, 4, 8, "2024-10-10", "2024-10-17", 8000, "2024-09-10", "checked out"),
(105, 5, 11, "2024-12-02", "2024-12-12", 5000,"2024-11-30", "confirmed"),
(106, 6, 14,"2024-10-02", "2024-10-07", 2500,"2024-10-02", "confirmed"),
(107, 7, 15,"2024-01-01","2024-01-20", 12000, "2023-12-28", "check out"),
(108, 8, 17,"2024-07-07", "2024-07-14", 10000, "2024-07-01", "pending"),
(109, 9, 20,"2024-09-02","2024-09-05", 9000, "2024-08-24", "confirmed"),
(110, 10, 23,"2024-09-05","2024-09-10", 3000, "2024-09-05", "check out"),
(111, 11, 24, "2024-12-31","2025-01-04", 2500,"2024-12-29", "pending"),
(112, 12, 26, "2024-12-28","2024-12-31", 6000, "2024-12-09","pending"),
(113, 13, 27, "2024-05-05","2024-05-12", 10500, "2024-06-09","check out"),
(114, 14, 28, "2024-09-03","2024-09-12", 9000, "2024-09-02", "comfirmed"),
(115, 15,29,"2024-09-09", "2024-09-12", 3000, "2024-09-09", "checked out"),
(116, 16,30,"2024-12-29", "2025-01-02", 15000, "2024-12-01", "checked in"),
(117, 17,31, "2024-03-09", "2024-03-15", 3000, "2024-03-02", "checked out"),
(118, 18, 32, "2024-10-10", "2024-10-17", 5250, "2024-09-10", "checked out"),
(119, 19, 33, "2024-12-02", "2024-12-12", 6000,"2024-11-30", "confirmed"),
(120, 20, 35,"2024-10-02", "2024-10-07", 3000,"2024-10-02", "confirmed"),
(121, 21, 37,"2024-01-01","2024-01-20", 30000, "2023-12-28", "check out"),
(122, 22, 38,"2024-07-07", "2024-07-14", 7000, "2024-07-01", "pending"),
(123, 23, 39,"2024-09-02","2024-09-05", 3000, "2024-08-24", "confirmed"),
(124, 24, 40,"2024-09-05","2024-09-10", 15000, "2024-09-05", "check out"),
(125, 25, 41, "2024-12-31","2025-01-04", 2500,"2024-12-29", "pending"),
(126, 26, 42, "2024-12-28","2024-12-31", 3000, "2024-12-09","pending"),
(127, 27, 43, "2024-05-05","2024-05-12", 4200, "2024-06-09","check out"),
(128, 28, 44, "2024-09-03","2024-09-12", 4000, "2024-09-02", "comfirmed"),
(129, 29, 46, "2024-02-09","2024-02-18", 18000, "2024-01-23","checked out"),
(130, 30,47,"2024-09-02","2024-09-05", 9000, "2024-08-24", "confirmed"),
(131, 31,49,"2024-09-05","2024-09-10", 3000, "2024-09-05", "check out"),
(132, 32,50, "2024-12-31","2025-01-04", 2500,"2024-12-29", "pending"),
(133, 33,2, "2022-12-28","2022-12-31",2250, "2022-12-09","pending"),
(134, 34,3, "2021-05-05","2021-05-12",4200, "2021-06-09","check out"),
(135, 35,6, "2023-09-03","2023-09-12",12000, "2023-09-02", "comfirmed"),
(136, 36,7,"2023-09-09", "2023-09-12",4500, "2023-09-09", "checked out"),
(137, 37,9,"2020-12-29", "2020-01-02",9000, "2020-12-01", "checked in"),
(138, 38,10, "2022-03-09", "2022-03-15",18000, "2022-03-02", "checked out"),
(139, 39,12, "2022-10-10", "2022-10-17",5250, "2022-09-10", "checked out"),
(140, 40,13, "2021-12-02", "2021-12-12",6000,"2021-11-30", "confirmed"),
(141, 41,16,"2021-09-09", "2021-09-12",6000, "2021-09-09", "checked out"),
(142, 42,18,"2020-12-29", "2020-01-02",5000, "2020-12-01", "checked in"),
(143, 43,19, "2023-03-09", "2023-03-15",7000, "2023-03-02", "checked out"),
(144, 44,21, "2023-10-10", "2023-10-17",3500, "2023-09-10", "checked out"),
(145, 45,25, "2021-12-02", "2021-12-12",6000,"2021-11-30", "confirmed"),
(146, 46,34,"2022-10-02", "2022-10-07",2500,"2022-10-02", "confirmed"),
(147, 47,36,"2022-01-01","2022-01-20",40000, "2022-12-28", "check out"),
(148, 48,45,"2021-07-07","2021-07-14",4200, "2021-07-01", "pending"),
(149, 49,48,"2023-09-09","2023-09-12",3000, "2023-09-01","confirmed"),
(150, 50,22,"2023-10-06","2023-10-10",3000, "2023-10-01","confirmed");

insert into payment( payment_id, booking_id, payment_date, amount_paid, payment_method, payment_status) values 
(1,101,"2024-09-09",2000, "online", "paid"),
(2,102,"2024-12-29",2500, "online", "paid"),
(3,103,"2024-03-09",3600, "cash", "paid"),
(4,104,"2024-10-10",8000, "online", "pending"),
(5,105,"2024-12-02",5000,"cash", "paid"),
(6,106,"2024-10-02",2500,"online", "pending"),
(7,107,"2024-01-01",12000, "cash", "paid"),
(8,108,"2024-07-07",10000, "cash", "paid"),
(9,109,"2024-09-02",9000, "online", "pending"),
(10,110,"2024-09-05",3000, "cash", "paid"),
(11,111, "2024-12-31",2500,"cash", "paid"),
(12,112,"2024-12-28",6000, "online","paid"),
(13,113,"2024-05-05",10500, "cash","paid"),
(14,114,"2024-09-03",9000, "cash", "pending"),
(15,115,"2024-09-09",3000, "cash", "paid"),
(16,116,"2024-12-29",15000, "online", "pending"),
(17,117,"2024-03-09",3000, "online", "pending"),
(18,118,"2024-10-10",5250, "cash", "pending"),
(19,119,"2024-12-02",6000,"cash", "pending"),
(20,120,"2024-10-02",3000,"online", "paid"),
(21,121,"2024-01-01",30000, "online", "paid"),
(22,122,"2024-07-07",7000, "online", "pending"),
(23,123,"2024-09-02",3000, "online", "pending"),
(24,124,"2024-09-05",15000, "online", "pending"),
(25,125,"2024-12-31",2500,"cash", "paid"),
(26,126,"2024-12-28",3000, "cash","paid"),
(27,127,"2024-05-05",4200, "cash","paid"),
(28,128,"2024-09-03",4000, "cash", "paid"),
(29,129,"2024-02-09",18000, "online","paid"),
(30,130,"2024-09-02",9000, "online", "paid"),
(31,131,"2024-09-05",3000, "online", "paid"),
(32,132,"2024-12-31",2500,"online", "pending"),
(33,133,"2022-12-28",2250, "online","pending"),
(34,134,"2021-05-05",4200, "online","paid"),
(35,135,"2023-09-03",12000, "cash", "paid"),
(36,136,"2023-09-09",4500, "online", "paid"),
(37,137,"2020-12-29",9000, "cash", "pending"),
(38,138,"2022-03-09",18000, "cash", "paid"),
(39,139,"2022-10-10",5250, "cash", "paid"),
(40,140,"2021-12-02",6000,"online", "paid"),
(41,141,"2021-09-09",6000, "cash", "paid"),
(42,142,"2020-12-29",5000, "cash", "pending"),
(43,143,"2023-03-09",7000, "online", "paid"),
(44,144,"2023-10-10",3500, "online", "paid"),
(45,145,"2021-12-02",6000,"cash", "pending"),
(46,146,"2022-10-02",2500,"online", "paid"),
(47,147,"2022-01-01",40000, "cash", "pending"),
(48,148,"2021-07-07",4200, "online", "paid"),
(49,149,"2023-09-09",3000, "cash","paid"),
(50,150,"2023-10-06",3000,"cash","paid");

insert into employee( employee_id, employee_name, email, contact_number,id_proof,id_proof_number,hire_date,position, salary) values
( 1,"anirudh","aniii8897@gmail.com",9080343052, "aadhar card", 234587622735,"2019-02-01","front office",35000),
( 2,"murugan","amurugan105@gmail.com",9332115375, "aadhaar card" ,125356789021,"2018-03-09","front office",40000),
( 3,"ramesh","ramesh07@gmail.com",9080810032, "pan card", 1234587200,"2015-02-04","night auditor",45000),
( 4,"prem kumar","prem20@gmail.com",9823452208, "aadhar card",534298761122,"2016-04-04","room attendant",32000),
( 5,"shivanya","shivanya29@gmail.com",9810100112, "aadhar card",098798216143,"2020-10-10","room attendant",29000),
( 6,"ishita","ishita1000@gmail.com",9988145362, "aadhar card",989824548253,"2019-11-10","executive housekeeping",50000),
( 7,"vaishnavi","vaish97@gmail.com",8765211254, "pan card",9102981109,"2019-12-10","executive housekeeping",50000),
( 8,"ashmitha", "ashmi2019@gmail.com",8972098221, "pan card",8922987642,"2018-02-02","executive housekeeping",65000),
( 9,"priya","priyasri221@gmail.com",8899190021, "aadhar card", 111167849833,"2017-01-10","room attendant",37000),
( 10,"akshaya","aksha15@gmail.com",9872199980, "aadhar card", 224444450002,"2017-09-01","room attendant",35000),
( 11,"tanvir","tanvir102@gmail.com",9009870052, "aadhar card", 254357629815,"2012-01-01","general manager",310000),
( 12,"krish","krish05@gmail.com",9598765375, "aadhaar card" ,348787789021,"2014-03-09","asst general manager",245000),
( 13,"rohan","rohan5643@gmail.com",9089080300, "aadhaar card", 288768720012,"2018-04-10","asst general manager",190000),
( 14,"ishaan","ishaan009@gmail.com",9822312208, "pan card",5887662351,"2019-10-10","duty manager",87000),
( 15,"advika","advika21@gmail.com",9332100112, "aadhar card",876398216143,"2021-10-10","duty manager",55000),
( 16,"anahita","anahita20@gmail.com",9334245362, "aadhar card",009901548253,"2020-09-12","duty manager",63000),
( 17,"alia","alia102@gmail.com",8763322425, "pan card",9898961109,"2023-01-23","duty manager",34000),
( 18,"anvi", "anvi1006@gmail.com",8972232221, "pan card",5534256342,"2021-09-04","it manager",51000),
( 19,"aadrik","aadrik223@gmail.com",9872009821, "aadhar card", 234522319833,"2016-03-15","it manager",72000),
( 20,"agastya","agastya90@gmail.com",8765177720, "pan card", 9234450002,"2018-02-09","it manager",63400),
( 21,"aaradhya","aaradhya109@gmail.com",7766820052, "aadhar card", 123487629815,"2017-01-06","event planner",76000),
( 22,"ananya","ananya90@gmail.com",8976215375, "aadhaar card" ,987656789021,"2019-12-23","event planner",54890),
( 23,"aditi","aditi8876@gmail.com",8009818300, "aadhaar card", 234598909812,"2023-08-10","event planner",48000),
( 24,"ishika","ishika20@gmail.com",9840483222, "aadhar card",534298098751,"2021-09-02","event planner",34000),
( 25,"aahan","aahanrs05@gmail.com",9872100112, "pan card",2341216143,"2021-09-01","event planner",34000),
( 26,"rohit","rohit45@gmail.com",9872142341, "aadhar card",987701548253,"2022-02-02","hr manager",56000),
( 27,"akshay","akshay231@gmail.com",8878213425, "pan card",9977661109,"2022-02-21","hr manager",51000),
( 28,"vimal","vimal908@gmail.com",8975602341, "pan card",8877556342,"2015-09-24","hr manager",82000),
( 29,"arun","arun75221@gmail.com",9900190021, "aadhar card", 334267849833,"2017-09-15","hr manager",64000),
( 30,"pranav","pranav10@gmail.com",9872288820, "aadhar card", 887744450002,"2018-02-09","chief engineer",73000),
( 31,"srilakshmi","asrilakshmi8897@gmail.com",9080820052, "aadhar card", 234587629815,"2019-05-10","chief engineer",68000),
( 32,"anand murugan","manadmurugan05@gmail.com",9566215375, "aadhaar card" ,345656789021,"2014-02-03","chief engineer",94000),
( 33,"suresh","suresh1807@gmail.com",9080818300, "aadhaar card", 234598720012,"2018-06-09","chief engineer",87000),
( 34,"vinodhini","svino20@gmail.com",9840482208, "aadhar card",534298762351,"2020-09-10","spa manager",50000),
( 35,"malathi","smalathi2911@gmail.com",9872100112, "aadhar card",456398216143,"2018-09-10","spa manager",65000),
( 36,"selvam","mselvam1000@gmail.com",9872145362, "aadhar card",983201548253,"2023-09-21","payroll officer", 42000),
( 37,"dinesh","sdinesh22@gmail.com",8765213425, "pan card",9827361109,"2023-08-05","payroll officer", 41000),
( 38,"vani", "vanidinesh@gmail.com",8975600221, "pan card",8921356342,"2021-01-09","payroll officer",55000),
( 40,"mohamed zayn","zaynsumiya06@gmail.com",9872177720, "aadhar card", 921344450002,"2018-11-24"," training coordinator",46900),
( 41,"ajay","ajay56@gmail.com",7643343052, "aadhar card", 2345890200735,"2019-02-09","technician",37000),
( 42,"balamurugan","bala95@gmail.com",9332332275, "aadhaar card" ,125352137021,"2024-07-02","technician",24000),
( 43,"tanya","tanyaramesh07@gmail.com",9080008132, "pan card", 1290876200,"2023-06-06","technician",28000),
( 44,"kritika","kritika74@gmail.com",9871452208, "aadhar card",534298999922,"2021-06-23","groundskeeper",24000),
( 45,"sana","sana29@gmail.com",9822000112, "aadhar card",092221216143,"2017-09-08","groundskeeper",37000),
( 46,"neha","neha90@gmail.com",9985467362, "aadhar card",989824522313,"2019-06-10","executive chef",98000),
( 47,"riya","riya97@gmail.com",8763243254, "pan card",0012381109,"2015-02-09","executive chef",134000),
( 48,"mohamed", "mohamed05@gmail.com",8787098221, "pan card",9822987642,"2015-05-08","restaurant manager",110000),
( 49,"jesi","jesima22@gmail.com",9872190021, "aadhar card", 111133439833,"2019-05-09","restaurant manager",78000),
( 50,"rihana","rihana10@gmail.com",9872132410, "aadhar card", 225468450002,"2020-10-10","restaurant manager",71000);

insert into service ( service_id, service_name, price ) values
(1,"local tour booking",3000),
(2,"travel assistance",1750),
(3,"event recommendations",1500),
(4,"spa appointment",2000),
(5,"fittness centre",1000),
(6,"wellness package",750),
(7,"food and beverages",2000),
(8,"transportation service",2500),
(9,"babysitting and childcare",3500),
(10,"personlized experiences",2500),
(11,"laundry and dry cleaning",2000),
(12,"emergency assistance",500),
(13,"pet friendly amenties",1500),
(14,"special request",1000);

insert into service_usage ( serviceusage_id, booking_id, service_id, total_price) values
(1,102,1,3000),(2,105,6,750),(3,106,8,2500),(4,107,9,3500),(5,110,13,1500),
(6,113,11,2000),(7,114,10,2500),(8,115,5,1000),(9,119,4,2000),(10,120,2,1750),
(11,121,1,3000),(12,126,10,2500),(13,127,9,3500),(14,129,8,2500),(15,130,5,1000),
(16,134,14,1000),(17,137,10,2500),(18,138,3,1500),(19,139,12,500),(20,140,8,2500),
(21,142,9,3500),(22,143,13,1500),(23,145,4,2000),(24,149,13,1500),(25,150,2,1750),
(26,118,3,1500),(27,123,5,1000),(28,133,9,3500),(29,146,11,2000),(30,148,8,3500);

insert into feedback ( feedback_id, customer_id, comments, rating) values
( 1,1,"good stay and service",4),
( 2,2,"nice food and room",5),
( 3,3,"great stay and must visit with family",5),
( 4,4,"good can be better",3),
( 5,5,"spa service is good and rooma are maintained well",4),
( 6,6,"travel guide was so humble and nice food",5),
( 7,7,"good must visit",4),
( 8,8,"food can be better",3),
( 9,9,"wifi connection not available properly can be improved",4),
( 10,10,"nice stay and safety",5),
( 11,11,"nice",3),
( 12,12,"can be better",2),
( 13,13,"good food and servicce for babysitting",4),
( 14,14,"travel guide was good and food can be improved",4),
( 15,15,"service was not up to mark",3),
( 16,16,"can inlude more service and food menu in veg ",3),
( 17,17,"nice food",4),
( 18,18,"service cost can be reduced",3),
( 19,19,"transportation service was satifying and rooms were great",5),
( 20,20,"room can be cleaned regularly",3),
( 21,21,"hot water as not available properly and transportation can be on time",3),
( 22,22,"great room service and indian food was great",5),
( 23,23,"great place to visit with family and friends",5),
( 24,24,"will visit again with family and thanks for the service",4),
( 25,25,"food menu can be improved with more option for non veg and transportation was good",3),
( 26,26,"surrounding was a bit noisy due to season time and can be maintained better",4),
( 27,27,"thanks for good room and transportaton service",5),
( 28,28,"can be improved for the cost the paid", 3),
( 29,29,"good",4),
( 30,30,"better than last visit",4),
( 31,31,"great palce to visit with friends",5),
( 32,32,"nice rooms",4),
( 33,33,"thanks for the service",4),
( 34,34,"good food",4),
( 35,35,"babysitting service was very helpful and care taker was very nice with the baby and room are decent",5),
( 36,36,"personalized suprise was great and well spent",4),
( 37,37,"great",4),
( 38,38,"can be better",3),
( 39,39,"thanks good sevice",4),
( 40,40,"nice place to stay",5),
( 41,41,"spa session and fitness centre was great and room were well cleaned",5),
( 42,42,"special music event fro my family was asked was totally awesome",5),
( 43,43,"came for our anniversary celebrationa and it was great styaing here",5),
( 44,44,"service was not able attend our needs and can be improved",3),
( 45,45,"spa can be maintained better",3),
( 46,46,"can be improved ",3),
( 47,47,"timely pickup from airport and travel guide was super friendly thanks for the services",4),
( 48,48,"fitness centre can be properly maintained",3),
( 49,49,"better service",4),
( 50,50,"best room service and over all great place to stay",5);

 select * from feedback;
 select * from service_usage;
 select * from service;
 select * from employee;
 select * from booking;
 select * from payment;
 select * from customer;
 select * from room;
 
---------------------------------------------------------------------------------------------------------------------------------------

-- scenario 1 : ADD A NEW CUSTOMER --

insert into customer( customer_name, email,contact_number,id_proof,id_proof_number) values
("divyanka","divya112019@gmail.com", 8790543765,"aadhar card", 675432137765);

---------------------------------------------------------------------------------------------------------------------------------------
-- scenario 2 : ADD A NEW BOOKING --

insert into booking ( customer_id, room_id, check_in_date, check_out_date, total_price, booking_date, status) values
( 51,10, "2024-12-12","2024-12-15",3000,"2024-12-10", "confirmed");

--- or ---

update booking
set room_id =9
where booking_id=152;
----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 3 : RECORD A PAYMENT --

insert into payment ( booking_id, payment_date, amount_paid, payment_method, payment_status) values
( 153, "2024-12-10", 3000, "online","paid");

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 4 : UPDATE ROOM STATUS --

update room
set status = false
where room_id = 9;

----------------------------------------------------------------------------------------------------------------------------------------

-- scenario 5 : RETRIEVE AVAILABLE ROOMS --

select room_id, room_number, room_type , floor_number, price
from room
where status = true;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 6 : GENERATE REVENUE REPORT --

select sum(amount_paid) as 
Total_revenue
from payment;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 7 : SEARCH STAFF BY POSITION --

select * from employee
where position = "duty manager";

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 8 : ADD SERVICE USAGE --

insert into service_usage( booking_id, service_id, total_price) values
(152, 11, 2000);

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 9 : CUSTOMER AND BOOKING DETAILS --

select a.customer_name,a.email,a.contact_number,b.room_id,b.check_in_date,b.check_out_date,b.total_price
from customer as a
inner join booking as b
on a.customer_id = b.customer_id;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 10 : AVAILABLE ROOMS --

select a.room_id, a.room_type,a.price
from room as a 
left join booking as b 
on a.room_id = b.room_id;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 11 : CUSTOMER AND FEEDBACK --

select a.customer_id,b.comments,b.rating
from customer as a 
inner join feedback as b 
on a.customer_id = b.customer_id;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 12 : REVENUE ANALYSIS --

select a.room_type,sum(a.price)
as total_revenue
from room as a
inner join booking as b
on a.room_id = b.room_id
group by room_type;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 13 : BOOKING AND PAYMENT --

select a.booking_id,a.check_in_date,b.amount_paid,b.payment_status
from booking as a
inner join payment as b 
on a.booking_id = b.booking_id;

-----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 14 : CUSTOMER STAY HISTORY --

select a.customer_name,c.room_id,b.check_in_date,b.check_out_date
from customer as a 
inner join booking as b 
on a.customer_id = b.customer_id
inner join room as c 
on b.room_id = c.room_id;

-----------------------------------------------------------------------------------------------------------------------------------------

-- scenario 15 : PENDING PAYMENTS --

select a.booking_id,b.customer_name,c.amount_paid
from booking as a
inner join payment as c 
on a.booking_id = c.booking_id
inner join customer as b
on a.customer_id = b.customer_id
where c.payment_status = "pending";

-----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 16 : SERVICE USAGE BY CUSTOMER --

select a.service_id,a.total_price,b.booking_id
from service_usage as a 
inner join booking as b
on a.booking_id = b.booking_id;

-----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 17 : CUSTOMER INFO WITH THEIR BOOKING HISTORY --

select a.customer_id,a.customer_name,b.booking_id,b.check_in_date,b.check_out_date,c.room_id,c.room_number,c.room_type
from customer as a
inner join booking as b on
a.customer_id = b.customer_id
inner join room as c on
b.room_id = c.room_id
where room_type = "suite"
order by room_id ;

-----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 18 : FIND ALL THE UNOCCUPIED ROOMS --

select a.room_id,a.room_number,a.room_type
from room as a 
left join booking as b
on a.room_id = b.room_id
and b.check_out_date > current_date
where b.room_id is null;

-----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 19 : LIST ALL THE CUSTOMERS AND SERVICE USAGE WITH PRICE --

select a.booking_id, d.customer_name, c.service_id, c.service_name, b.total_price 
from booking as a
inner join service_usage as b on
a.booking_id = b.booking_id
inner join service as c on
b.service_id = c.service_id
inner join customer as d on
a.customer_id = d.customer_id
order by booking_id;

----------------------------------------------------------------------------------------------------------------------------------------
-- scenario 20 : CUSTOMERS WHO STAYED IN SAME TYPE MORE THAN ONCE --

select a.customer_name, b.room_type, count(c.booking_id) as stays
from customer as a
inner join booking as c on
a.customer_id = c.customer_id
inner join room as b on
b.room_id = c.room_id
group by customer_name , room_type
having count(c.booking_id) >= 1;

----------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 21 : CUSTOMER DETAILS AND TOTAL AMOUNT PAID --
 
 select a.customer_name, sum(c.amount_paid) as total_amount
 from customer as a
 inner join booking as b on
 a.customer_id = b.customer_id
 inner join payment as c on
 b.booking_id = c.booking_id
 group by customer_name
 order by total_amount desc;
 
 ----------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 22 : TOTAL REVENUE OF ALL THE ROOMS -- 
 
 select a.room_number,sum(b.total_price) as total_revenue
 from room as a 
 inner join booking as b on 
 a.room_id = b.room_id
 group by room_number
 order by total_revenue desc;
 
 -----------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 23 : FREQUENTLY BOOKED ROOM --
 
 select a.room_number, a.room_type , count(b.booking_id) as total_booking
 from room as a 
 inner join booking as b on
 a.room_id = b.room_id
 group by a.room_id
 order by total_booking desc
 limit 5;
 
 -----------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 24 : AVERAGE DURATION FOR EACH ROOM TYPE --
 
 select a.room_type, avg(datediff(b.check_out_date,b.check_in_date)) as avg_duration
 from room as a
 inner join booking as b on
 a.room_id = b.room_id
 group by a.room_type;
 
 -----------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 25 : ROOMS THAT HAVE NOT BEEN OCCUPIED IN THE LAST ONE MONTH --
 
 select a.room_number
 from room as a 
 left join booking as b on
 a.room_id = b.room_id
 and b.check_in_date >= date_sub(curdate(), interval 1 month)
 where b.room_id is null;
 
 ------------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 26 : BOOKING WITHIN A SPECIFIC DATE RANGE --
 
 select b.booking_id , a.customer_name , c.room_number, b.check_in_date
 from booking as b
 inner join customer as a on
 b.customer_id = a.customer_id
 inner join room as c on
 b.room_id = c.room_id
 where b.check_in_date
 between "2024-10-01" and "2024-12-01";
 
 ------------------------------------------------------------------------------------------------------------------------------------------
 -- scenario 27 : LIST ALL BOOKING WITH PENDING STATUS --
 
 select a.booking_id , b.customer_name , a.status
 from booking as a 
 inner join customer as b on 
 a.customer_id = b.customer_id
 where a.status = "pending";
 
 -------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 28 : LIST EMPLOYEE WITH THEIR POSITION --

select employee_id, employee_name, position
from employee 
where position = "spa manager"
order by position , employee_name;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 29 : DETAILED BILL FOR SPECIFIC GUEST --

select a.customer_name,b.total_price as room_charge, sum(c.total_price) as service_charge,
(b.total_price + sum(c.total_price)) as total_bill
from service_usage as c 
inner join booking as b on
c.booking_id = b.booking_id
inner join customer as a on 
b.customer_id = a.customer_id
where a.customer_id = 19
group by a.customer_name,b.total_price;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenrio 30 : SERVICES THAT CONTRIBUTE MOST TO THE HOTEL REVENUE --

select a.service_name, sum(b.total_price) as service_usage_revenue
from service_usage as b
inner join service as a on
b.service_id = a.service_id
group by service_name
order by service_usage_revenue desc;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 31 : NEGATIVE FEEDBACK AND THEIR REASONS --

select a.customer_name, b.comments 
from feedback as b
inner join customer as a on
b.customer_id = a.customer_id
where b.rating <= 3;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 32 : REPORT OF ALL GUESTS AND THEIR BOOKING AND SERVICES USED --

select a.customer_name,b.check_in_date,b.check_out_date,c.service_id,d.service_name
from booking as b 
inner join customer as a on
b.customer_id = a.customer_id
inner join service_usage as c on
b.booking_id = c.booking_id
inner join service as d on 
c.service_id = d.service_id;

-------------------------------------------------------------------------------------------------------------------------------------------

-- scenario 33 : UPDATE ROOM AVAILABILITY --

delimiter $$
create trigger
updated_room_availability
before insert on booking for each row
begin
update room
set status = false
where room_id = new.room_id and status = true;
end 
$$
delimiter 

insert into booking(room_id,check_in_date,check_out_date,booking_date,status)
values ( 3,"2024-12-19","2024-12-22","2024-12-10","confirmed");
(28,"2024-12-16","2024-12-18","2024-12-09","pending"),
(41,"2024-12-18","2024-12-20","2024-12-13","confirmed");

-------------------------------------------------------------------------------------------------------------------------------------------
																								
-- scenario 34 : TO CALCULATE PRICE USING TRIGGER FUNCTION --     
                                               
delimiter $$
create trigger calculated_price_before_insert
before insert on booking
for each row
begin
declare days_stayed int;
declare room_price int;
set days_stayed = datediff(new.check_out_date, new.check_in_date);
if days_stayed < 1 then
set days_stayed =1;
end if;
select price into room_price
from room
where room_id = new.room_id;
set new.total_price = days_stayed * room_price;
end 
$$
delimiter 

insert into booking(customer_id,room_id,check_in_date,check_out_date,booking_date,status)
values ( 55,29,"2024-12-04","2024-12-07","2024-12-02","confirmed");

insert into customer(customer_name,email,contact_number,id_proof,id_proof_number) values
("sai gayatri","sai98766@gmail.com",8984746352,"aadhar card",874636362516);

delete from booking where booking_id = 161;

select * from customer;
select * from room;
select * from booking;


show triggers;
drop trigger update_room_status_checkout;


-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 35 : TO UPDATE ROOM STATUS AFTER CHECK OUT --

delimiter $$
create trigger
update_room_status_checkout
after update on booking for each row
begin
if new.check_out_date <= curdate()
then
update room
set status = true
where room_id = new.room_id;
end if;
end
$$
delimiter ;

insert into booking(customer_id,room_id,check_in_date,check_out_date,booking_date,status)
values ( 55,29,"2024-12-04","2024-12-07","2024-12-02","confirmed");

update booking set check_out_date = "2024-12-08"
where customer_id = 55;


select * from booking;
select * from room;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 36 : PROCEDURE TO GENERATE MONTHLY REPORT --

delimiter //
create procedure monthly_report ( in reportmonth int, in reportyear int)
begin
select
a.booking_id,
b.customer_name,
c.room_number,
a.check_in_date,
a.check_out_date,
datediff(a.check_out_date,a.check_in_date) as stayduration, datediff(a.check_out_date,a.check_in_date) * c.price as revenue
from booking a
join customer b on a.customer_id = b.customer_id
join room c on a.room_id = c.room_id
where month(a.check_in_date) = reportmonth and year(a.check_in_date) = reportyear;
end  
//
delimiter ;

call monthly_report(12,2024);

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 37 : CATEGORIZING ROOM PRICES --

select room_id, price,
case when price < 1000 then
" budget"
when price between 1000 and 2000 then
"standard"
else "premium"
end as price_category
from room
order by price ;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 38 : PAYMENT STATUS CATEGORIZATION --

select booking_id, payment_status,
case 
when payment_status = "paid"
then "completed"
when payment_status = "pending"
then "awaiting payment"
else "unknown status"
end as payment_status_description
from payment;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 39 : CUSTOMER BOOKING DETAILS --

create view customer_booking_details
as 
select
a.customer_id,a.customer_name,b.booking_id,b.room_id,b.total_price
from customer a 
join booking as b on b.customer_id = a.customer_id;

select * from customer_booking_details;
select* from customer_booking_details where customer_id = 10 ;
update customer_booking_details set total_price = 3000 where customer_id = 2;

-------------------------------------------------------------------------------------------------------------------------------------------
-- scenario 40 : SUB QUERY --
 
-- HIGHEST PAID EMPLOYEE IN THE HOTEL --

select employee_name,salary,position 
from employee
where salary = (select max(salary)
from employee);

-- FIND EMPLOYEES WORKING IN A SPECFIC DEPARTMENT --

select employee_name,salary
from employee
where employee_id in (select employee_id from employee where position = "payroll officer");

-- LIST GUEST WHO HAVE CHECKED IN AND OUT WITHIN LAST WEEK --

select customer_name from customer
where customer_id in ( select customer_id 
from booking
where check_in_date between date_sub(curdate(), interval 7 day)
and curdate()
and check_out_date between date_sub(curdate(), interval 7 day)
and curdate()
);

-------------------------------------------------------------------------------------------------------------------------------------------

