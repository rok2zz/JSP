Create Table freeboard (
    id  number constraint PK_freeboard_id Primary key ,    --�ڵ� ���� �÷�
    name varchar2(100) not null, 
    password varchar2(100) null, 
    email varchar2 (100) null, 
    subject varchar2(100) not null, --������
    content varchar2(2000) not null, -- �۳���
    inputdate varchar2(100) not null, -- �۾� ��¥ 
    masterid number default 0 , -- ���� �亯�� ����ǿ��� �亯�� ���� �׷��� 
    readcount number default 0, -- �� ��ȸ�� 
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
values ("ȫ�浿", 

commit;
Ŀ�� ���ϸ� �μ�Ʈ �ȵ� , jsp�� �μ�Ʈ�ϸ鼭 Ŀ�ԵǸ鼭 ���� ���� ��