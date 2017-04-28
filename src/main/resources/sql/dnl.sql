drop table dnltime;
drop table dnl;

--worktime

create table dnl(
	dnl_code	number(3) constraint pk_dnl primary key,
	dnl_type	varchar2(4 char) not null
);

insert into dnl values (00, '���');
insert into dnl values (01, '����');
insert into dnl values (02, '����');
insert into dnl values (03, '����');
insert into dnl values (04, '���');
insert into dnl values (05, '����');
insert into dnl values (06, '����');
insert into dnl values (07, '�ް�');

commit;

drop sequence dnl_dnlno_seq;
create sequence dnl_dnlno_seq start with 1; 

create table dnltime(
	dnlno	number(4)	constraint pk_dnltime primary key ,
	attend		date	not null,
	leave		date			,
	reason		varchar2(15 char),
	dnl_code	number(3)  constraint fk_dnlcode references dnl(dnl_code) on delete set null,
	membersrl   number(10) constraint fk_membersrl1 references member(membersrl) on delete set null
);

insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '����', 02 , 1);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '���', 00 , 1);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 00 , 2);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '���', 00 , 6);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 04 , 6);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 05 , 2);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '����', 06 , 1);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '�ް�', 07 , 10);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 05 , 1);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , '���', 04 , 11);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 03 , 6);
insert into dnltime values (dnl_dnlno_seq.nextval , sysdate, sysdate , null, 01 , 2);

commit;

select * from dnl;
select * from dnltime;

-- select * from dnltime d join emp e on(d.empno = e.empno);

-- select * from dnltime d left outer join (select * from emp e left outer join dept d on(d.deptno= e.deptno)) e on (d.empno = e.empno);

-- select * from dnltime dt right outer join member m on dt.MEMBERSRL = m.MEMBERSRL;
-- 
-- select * from member;