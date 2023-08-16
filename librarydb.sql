show databases;
create database libraryDB;
use libraryDB;

create table user(
	uid int primary key ,
    uname varchar(40) not null
);

-- inserting into user
insert into user values (100,"Palash"),(101,"Vikas"),(103,"Ashwini"),(104,"Lekhana"),(105,"Soniya"),(106,"Kuber"); 

select * from user;
select * from book;

create table book(
	bid int primary key,
    bname varchar(50) not null,
    author varchar(50) not null,
    quantity int not null check(quantity>0)
);

describe book; 

insert into book values
(200,"Diary of a Young Girl","Anne Frank",10),
(201,"To Kill a Mockingbird","Harper Lee",8),
(202,"The Monk Who Sold His Ferrari","Robin Sharma",6),
(203,"2 States","Chetan Bhagat",5),
(204,"Three Men in a Boat","Jerome K Jerome",7);

select * from book;

create table issue(
	issueid int primary key auto_increment,
    uid int not null,
    bid int not null,
    issuedate varchar(15) not null,
    foreign key (uid) references user(uid),
    foreign key (bid) references book(bid)
);

drop table issue;

insert into issue(uid,bid,issuedate) values 
(100,204,"2023-08-11"),
(101,203,"2023-08-09"),
(103,204,"2023-08-12"),
(104,200,"2023-08-11");

select * from issue;





































