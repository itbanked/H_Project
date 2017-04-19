drop table sal;

drop sequence sal_salno_seq;
create sequence sal_salno_seq start with 10;

create table sal(
	salno      		number(3)   	constraint pk_sal primary key,
   	basic_sal   	number(10,2)   	not null,
   	overtime_sal   	number(10,2),
   	comm      		number(10,2),
   	aid_sal      	number(10,2),
   	saldate   		date			not null,
   	membersrl      	number(10)    	constraint fk_membersrl0 references member(membersrl) on delete set null
);

insert into sal values (sal_salno_seq.nextval, 800, null, 10, null, to_date('2016/07/20','YYYY/MM/DD'), 1);
insert into sal values (sal_salno_seq.nextval, 300, null, null, null, to_date('2016/02/20','YYYY/MM/DD'), 2);

commit;