CREATE TABLESPACE rexre DATAFILE  'E:\oracle\tablespace\rexre.dbf' SIZE 100M   AUTOEXTEND ON NEXT 10M ; 
CREATE USER rexre IDENTIFIED BY 1111 DEFAULT TABLESPACE rexre ;
 
GRANT connect, resource, dba TO rexre;



  CREATE TABLE "BOARDS" (	"BOARDID" NUMBER(10,0), 
	"BOARDTITLE" VARCHAR2(150 BYTE), 
	"BOARDCONTENT" VARCHAR2(3000 BYTE), 
	"BOARDCATEGORY" VARCHAR2(20 BYTE), 
	"MEMBERSMEMBERID" NUMBER(10,0), 
	"BOARDSUBCATEGORY" VARCHAR2(20 BYTE), 
	"BOARDREGDATE" DATE DEFAULT sysdate, 
	"BOARDENDDATE" DATE
   ) SEGMENT CREATION IMMEDIATE;
   
   
ALTER TABLE "BOARDS" MODIFY ("BOARDID" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("BOARDTITLE" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("BOARDCONTENT" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("BOARDCATEGORY" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("MEMBERSMEMBERID" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("BOARDSUBCATEGORY" NOT NULL ENABLE);
ALTER TABLE "BOARDS" MODIFY ("BOARDREGDATE" NOT NULL ENABLE);
ALTER TABLE "BOARDS" ADD CHECK ("BOARDSUBCATEGORY"='당첨자 ' OR "BOARDSUBCATEGORY"='1:1' OR "BOARDSUBCATEGORY"='FAQ' OR "BOARDSUBCATEGORY"='공지사항' OR "BOARDSUBCATEGORY"='미디어' OR "BOARDSUBCATEGORY"='이벤트') ENABLE;
ALTER TABLE "BOARDS" ADD CONSTRAINT "BOARDS_PK" PRIMARY KEY ("BOARDID")  ; 
ALTER TABLE "BOARDS"   ADD CHECK ("BOARDCATEGORY"='교환/환불' 
OR "BOARDCATEGORY"='배송' OR "BOARDCATEGORY"='주문/결제' 
OR "BOARDCATEGORY"='취소' OR "BOARDCATEGORY"='회원' OR "BOARDCATEGORY"='기타') ENABLE;

ALTER TABLE "BOARDS" ADD CONSTRAINT "BOARDS_MEMBERS_FK" FOREIGN KEY ("MEMBERSMEMBERID") REFERENCES "MEMBERS" ("MEMBER_ID") ENABLE;


CREATE SEQUENCE boards_seq INCREMENT BY 1
       START WITH 1  
       NOMAXVALUE
       NOCYCLE
       NOCACHE
       NOORDER;


commit;

