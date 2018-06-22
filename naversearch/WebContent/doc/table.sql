drop table search;

drop sequence search_seq;

create table search
(
 seq number primary key,
 keyword varchar2(20),
 hit number
);

create sequence search_seq
start with 1 increment by 1;

insert into search (seq, keyword, hit) values (search_seq.nextval, '자바' , 11);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자바를자바' , 22);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자바와 xml' , 41);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'JAVA N XML' , 15);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'JSP N JAVA' , 53);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'java N jsp' , 56);
insert into search (seq, keyword, hit) values (search_seq.nextval, '제주도'  , 74);
insert into search (seq, keyword, hit) values (search_seq.nextval, '공부하자' , 19);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자린고비' , 23);
insert into search (seq, keyword, hit) values (search_seq.nextval, '스트러츠' , 25);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'tbj' , 21);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'jk김동욱'  , 37);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'xml을 이용한 java' , 27);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자기자랑' , 46);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자기야!!놀자'  , 17);
insert into search (seq, keyword, hit) values (search_seq.nextval, '나자바바라' , 41);
insert into search (seq, keyword, hit) values (search_seq.nextval, '자바스크립트' , 32);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'Javascript' , 30);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'ajax' , 20);
insert into search (seq, keyword, hit) values (search_seq.nextval, '아작스', 25);

commit;
















sql.append("select * \n");
		sql.append("from search\n");
		sql.append("where case when keyword < 'ㄱ' then upper(substr(keyword, 1, 1)) \n");
		sql.append("            when ascii('ㄱ') <= ascii(keyword) and \n");
		sql.append("                 ascii(keyword)<= ascii('ㅎ') then keyword \n");
		sql.append("            when keyword < '나' then 'ㄱ'\n");
		sql.append("            when keyword < '다' then 'ㄴ'\n");
		sql.append("            when keyword < '라' then 'ㄷ'\n");
		sql.append("            when keyword < '마' then 'ㄹ'\n");
		sql.append("            when keyword < '바' then 'ㅁ'\n");
		sql.append("            when keyword < '사' then 'ㅂ'\n");
		sql.append("            when keyword < '아' then 'ㅅ'\n");
		sql.append("            when keyword < '자' then 'ㅇ'\n");
		sql.append("            when keyword < '차' then 'ㅈ'\n");
		sql.append("            when keyword < '카' then 'ㅊ'\n");
		sql.append("            when keyword < '타' then 'ㅋ'\n");
		sql.append("            when keyword < '파' then 'ㅌ'\n");
		sql.append("            when keyword < '하' then 'ㅍ'\n");
		sql.append("            else 'ㅎ'\n");
		sql.append("       end = upper(?)\n");
		
		
		
