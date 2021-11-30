--회원 테이블 생성 sql문

--create user proa identified by 1234 account unlock
--default tablespace users;
--
--grant resource, connect to proa;
--
--commit;
drop table member;

create table member(
    mno number not null,
    email varchar2(40) not null,
    pwd varchar2(20) not null,
    mname varchar2(50) not null,
    cre_date date not null,
    mod_date date not null
);

alter table member
add constraint member_mno_pk PRIMARY KEY(MNO);

alter table member
add constraint member_EMAIL_UK UNIQUE(EMAIL);

--drop SEQUENCE MEMBER_MNO_SEQ;

CREATE SEQUENCE MEMBER_MNO_SEQ
INCREMENT BY 1
START WITH 1;

INSERT INTO MEMBER
(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBER_MNO_SEQ.NEXTVAL, 's1@test.com', '1111', '홍길동', sysdate, sysdate);

INSERT INTO MEMBER
(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBER_MNO_SEQ.NEXTVAL, 's2@test.com', '1111', '임꺽정', sysdate, sysdate);

INSERT INTO MEMBER
(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBER_MNO_SEQ.NEXTVAL, 's3@test.com', '1111', '일지매', sysdate, sysdate);

INSERT INTO MEMBER
(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBER_MNO_SEQ.NEXTVAL, 's4@test.com', '1111', '이몽룡', sysdate, sysdate);

INSERT INTO MEMBER
(MNO, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBER_MNO_SEQ.NEXTVAL, 's5@test.com', '1111', '성춘향', sysdate, sysdate);

select *
from member;

delete from member;

commit;

