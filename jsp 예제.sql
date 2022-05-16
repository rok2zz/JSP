Create Table freeboard (
    id  number constraint PK_freeboard_id Primary key ,    --자동 증가 컬럼
    name varchar2(100) not null, 
    password varchar2(100) null, 
    email varchar2 (100) null, 
    subject varchar2(100) not null, --글제목
    content varchar2(2000) not null, -- 글내용
    inputdate varchar2(100) not null, -- 글쓴 날짜 
    masterid number default 0 , -- 질문 답변형 계시판에서 답변의 글을 그룹핑 
    readcount number default 0, -- 글 조회수 
    replaynum number default 0,
    step number default 0 
    ); 
    
 select * from freeboard ; 
 
 create table guestboard2(
	name varchar2(100),
	email varchar2(100),
	inputdate varchar2(100) primary key,
	subject varchar2(100),
	content varchar2(2000)
);

select * from guestboard2;
insert into guestboard2( name, email, inputdate, subject, content)
values ("홍길동", 

commit;
커밋 안하면 인서트 안됨 , jsp로 인서트하면서 커밋되면서 위의 값도 됨