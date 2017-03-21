drop table sal;

drop sequence sal_salno_seq;
create sequence sal_salno_seq start with 1;

create table sal(
	salno      		number(3)   	constraint pk_sal primary key,
   	basic_sal   	number(7,2)   	not null,
   	overtime_sal   	number(7,2),
   	comm      		number(7,2),
   	aid_sal      	number(7,2),
   	sal_date   		date,
   	membersrl      	number(10)    	constraint fk_membersrl references member(membersrl) on delete set null
);

commit;