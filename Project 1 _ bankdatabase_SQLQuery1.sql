create database DB_1;

use DB_1;

create table customer_personal_info
 ( 
 customer_id varchar(5),
 customer_name varchar(30),
 date_of_birth date,
 guardian_name varchar(30),
 cus_address varchar(50),
 contact_number int,
 mail_id varchar(30),
 gender char(1),
 marital_status varchar(10),
 identification_doc_type varchar(20),
 id_doc_number varchar(20),
 citizenship varchar(10),
 constraint cust_pers_info_pk primary key(customer_id) 
 );

--select* from customer_personal_info;

create table customer_refernece_info
 ( 
 customer_id varchar(5),
 reference_acc_name varchar(20),
 reference_acc_number int,
 reference_acc_address varchar(20),
 relation varchar(25),
 constraint cust_ref_info_pk primary key(customer_id),
 constraint cust_ref_info_fk foreign key(customer_id) references customer_personal_info,

 );

--select* from customer_refernece_info;
 
 create table bank_info
 ( 
 ifsc_code varchar(15),
 bank_name varchar(25),
 branch_name varchar(25),
 constraint bank_info_pk primary key(ifsc_code)
 );

--select* from bank_info;

create table account_info
 ( 
 account_number int,
 customer_id varchar(5),
 account_type varchar(10),
 registration_date date,
 activation_date date,
 ifsc_code varchar(15),
 interest decimal(7,2),
 initial_deposit int,
 constraint acc_info_pk primary key(account_number),
 constraint acc_info_pers_pk foreign key(customer_id) references customer_personal_info,
 constraint acc_info_bank_fk foreign key(ifsc_code) references bank_info,
 );

--select* from account_info;

insert into bank_info(ifsc_code,bank_name,branch_name) values('SBIN0001537','SBI','new delhi');
insert into bank_info(ifsc_code,bank_name,branch_name) values('HDFC0001015','HDFC','west bengal');
insert into bank_info(ifsc_code,bank_name,branch_name) values('UTIB0000373','AXIS BANK','maharastra');
insert into bank_info(ifsc_code,bank_name,branch_name) values('ICIC0006561','ICICI','karnataka');
insert into bank_info(ifsc_code,bank_name,branch_name) values('PUNB0112000','PNB','new delhi');
insert into bank_info(ifsc_code,bank_name,branch_name) values('IBKL0NEFT01','IDBI','Greater Mumbai');

--select * from bank_info;

insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C001','Nishchay Jain', '1997-09-17', 'Hemlata Jain', 'sadar bazar', 2710341, 'jainishchay@gmail.com' ,'M',' single', 'aadhar number', '7777888899996666','indian'); 
insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C002','Raman Suman', '1995-01-17', 'Shekhar Suman', 'ravi nagar', 1120341, 'ramansuman@gmail.com' ,'M',' single', 'aadhar number', '4444555566669999','indian'); 
insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C003','Rakesh Singh', '1992-04-17', 'Ranbir Singh', 'chandra nagar', 1918311, 'rakeshsingh@gmail.com' ,'M',' married', 'aadhar number', '1111222233336666','indian'); 
insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C004','Piyush Kumar', '1991-07-17', 'Akshay Kumar', 'sultanpur', 1254128, 'piyushkumar@gmail.com' ,'M',' married', 'aadhar number', '7777444411110000','indian'); 
insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C005','Minal Ambani', '1994-11-17', 'Mukesh Ambani', 'kamla nagar',8426857, 'minalambani@gmail.com' ,'F',' single', 'aadhar number', '7888855552222111','indian'); 
insert into customer_personal_info(customer_id,customer_name,date_of_birth ,guardian_name ,cus_address, contact_number, mail_id, gender, marital_status ,identification_doc_type, id_doc_number, citizenship)
values ('C006','Abhay Kumar Singh', '1988-05-17', 'Jay Kumar Singh', 'ring road', 4426922, 'abhaysingh@gmail.com' ,'M',' single', 'aadhar number', '6666777744441111','indian'); 

--select * from customer_personal_info;

insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C001', 'salman khan', 123456, 'vaibhav nagar', 'friend');
insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C002', 'shahrukh suman', 897456, 'rajeev nagar', 'relative');
insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C003', 'amir khan', 197456, 'ram shyam colony', 'friend');
insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C004', 'vinay kumar', 178856, 'sultanpur', 'brother');
insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C005', 'anil ambani', 123978, 'kamla nagar', 'father');
insert into customer_refernece_info(customer_id , reference_acc_name ,reference_acc_number ,reference_acc_address , relation )
values ('C006', 'narendra modi', 654951, 'pratap nagar', 'friend');

--select * from customer_refernece_info;

insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (789654,'C001','savings', '2022-01-22', '2022-01-28','SBIN0001537',5.43, 1000 );
insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (784559,'C002','current', '2021-04-20', '2021-04-26','HDFC0001015',3.78, 2000 );
insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (786551,'C003','savings', '2021-08-02', '2021-08-10','UTIB0000373',4.67, 5000 );
insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (781234,'C004','savings', '2021-07-12', '2021-07-20','ICIC0006561',7.34, 7000 );
insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (787852,'C005','current', '2021-11-17', '2021-11-23','PUNB0112000',4.45, 10000 );
insert into account_info( account_number ,customer_id ,account_type ,registration_date ,activation_date ,ifsc_code ,interest ,initial_deposit )
values (712362,'C006','savings', '2021-03-09', '2021-03-16','IBKL0NEFT01',5.98, 1100 );


--select * from account_info;


--select * from customer_personal_info as cp
--join customer_refernece_info as cr
--on cp.customer_id=cr.customer_id;

--select cp.customer_name, cr.reference_acc_name
--from customer_personal_info cp
--join customer_refernece_info cr
--on cp.customer_id=cr.customer_id;


--select UPPER(reference_acc_name) as upper_reference_acc_name
--from customer_refernece_info;

select * from customer_refernece_info;