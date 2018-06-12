drop table member_detail;

drop table member;

create table member
(
	id varchar2(16),
	name varchar2(20) not null,
	pass varchar2(16),
	email1 varchar2(16),
	email2 varchar2(50),
	joindate date default sysdate,
	constraint member_id_pk primary key (id)	
);

create table member_detail
(
	id varchar2(16),
	zipcode varchar2(5),
	addr1 varchar2(100),
	addr2 varchar2(100),
	tel1 varchar2(3), 
	tel2 varchar2(4), 
	tel3 varchar2(4),
	constraint member_detail_id_fk foreign key (id)
	references member (id)
);