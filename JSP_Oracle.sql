-- jsp

create table mbTbl(
    idx number not null,
    id varchar2(100) not null,
    pass varchar2(100) not null,
    name varchar2(100) not null,
    email varchar2(100) not null,
    city varchar2(100) null,
    phone varchar2(100) null
    );

select * from mbTbl;

alter table mbTbl
add constraint mbTbl_id_PK primary key (id);

create sequence seq_mbTbl_idx
    increment by 1
    start with 1
    nocache;

-- 더미 데이터 입력
insert into mbTbl(idx, id, pass, name, email, city, phone)
values (seq_mbTbl_idx.nextval, 'admin', '1234', '관리자', 'kosmo@kosmo.com', '서울', '010-1111-1111');


create table asd2(
    a int not null);


insert into asd2(idx, a)
values (seq_mbTbl_idx, 3);

create table guestboard2(
	name varchar2(100),
	email varchar2(100),
	inputdate varchar2(100) primary key,
	subject varchar2(100),
	content varchar2(2000)
);

select * from guestboard2;
