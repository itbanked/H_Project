drop table sal;

drop sequence sal_salno_seq;
create sequence sal_salno_seq start with 10;

create table sal(
	salno      		number(3)   	constraint pk_sal primary key,
   	basic_sal   	number(7,2)   	not null,
   	overtime_sal   	number(7,2),
   	comm      		number(7,2),
   	aid_sal      	number(7,2),
   	saldate   		number(2)		not null,
   	membersrl      	number(10)    	constraint fk_membersrl0 references member(membersrl) on delete set null
);

insert into sal values (sal_salno_seq.nextval, 800, null, 10, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 300, null, null, null, 20, 2);
insert into sal values (sal_salno_seq.nextval, 500, 30, 20, null, 20, 6);
insert into sal values (sal_salno_seq.nextval, 400, null, null, null, 20, 24);
insert into sal values (sal_salno_seq.nextval, 400, null, null, null, 20, 25);
insert into sal values (sal_salno_seq.nextval, 220, 40, null, 30, 20, 46);
insert into sal values (sal_salno_seq.nextval, 300, null, 55, null, 20, 69);
insert into sal values (sal_salno_seq.nextval, 300, null, null, 30, 10, 84);
insert into sal values (sal_salno_seq.nextval, 200, null, 50, null, 10, 85);

commit;