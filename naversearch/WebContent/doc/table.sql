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

insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڹ�' , 11);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڹٸ��ڹ�' , 22);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڹٿ� xml' , 41);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'JAVA N XML' , 15);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'JSP N JAVA' , 53);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'java N jsp' , 56);
insert into search (seq, keyword, hit) values (search_seq.nextval, '���ֵ�'  , 74);
insert into search (seq, keyword, hit) values (search_seq.nextval, '��������' , 19);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڸ����' , 23);
insert into search (seq, keyword, hit) values (search_seq.nextval, '��Ʈ����' , 25);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'tbj' , 21);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'jk�赿��'  , 37);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'xml�� �̿��� java' , 27);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڱ��ڶ�' , 46);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڱ��!!����'  , 17);
insert into search (seq, keyword, hit) values (search_seq.nextval, '���ڹٹٶ�' , 41);
insert into search (seq, keyword, hit) values (search_seq.nextval, '�ڹٽ�ũ��Ʈ' , 32);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'Javascript' , 30);
insert into search (seq, keyword, hit) values (search_seq.nextval, 'ajax' , 20);
insert into search (seq, keyword, hit) values (search_seq.nextval, '���۽�', 25);

commit;
















sql.append("select * \n");
		sql.append("from search\n");
		sql.append("where case when keyword < '��' then upper(substr(keyword, 1, 1)) \n");
		sql.append("            when ascii('��') <= ascii(keyword) and \n");
		sql.append("                 ascii(keyword)<= ascii('��') then keyword \n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < 'ī' then '��'\n");
		sql.append("            when keyword < 'Ÿ' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            when keyword < '��' then '��'\n");
		sql.append("            else '��'\n");
		sql.append("       end = upper(?)\n");
		
		
		
