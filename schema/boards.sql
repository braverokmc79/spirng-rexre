--------------------------------------------------------

--  파일이 생성됨 - 토요일-12월-31-2022   

--------------------------------------------------------

--------------------------------------------------------

--  DDL for Table BOARDS

--------------------------------------------------------


  CREATE TABLE "BOOK_EX"."BOARDS" 
   (	"BOARDID" NUMBER(10,0), 
	"BOARDTITLE" VARCHAR2(50 BYTE), 
	"BOARDCONTENT" VARCHAR2(3000 BYTE), 
	"BOARDCATEGORY" VARCHAR2(20 BYTE), 
	"MEMBERSMEMBERID" NUMBER(10,0), 
	"BOARDSUBCATEGORY" VARCHAR2(20 BYTE), 
	"BOARDREGDATE" DATE DEFAULT sysdate, 
	"BOARDENDDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

REM INSERTING into BOOK_EX.BOARDS

SET DEFINE OFF;

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (3,'testTitle','testContent','교환/환불',1,'1:1',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (15,'testTitle15','testContent15','주문/결제',2,'FAQ',to_date('22/12/31','RR/MM/DD'),to_date('23/01/01','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (2,'testTitle02','testContent02','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (4,'testTitle04','testContent04','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (1,'제목 수정','내용 수정','교환/환불',1,'1:1',to_date('70/01/01','RR/MM/DD'),to_date('70/01/01','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (5,'testTitle04','testContent05','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (6,'testTitle06','testContent06','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (7,'testTitle07','testContent07','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (8,'testTitle08','testContent08','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (9,'testTitle09','testContent09','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (10,'testTitle10','testContent10','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (11,'testTitle11','testContent11','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (12,'testTitle12','testContent12','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (13,'testTitle13','testContent13','교환/환불',1,'1:1',to_date('22/12/30','RR/MM/DD'),to_date('22/12/31','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (16,'testTitle16','testContent16','취소',2,'FAQ',to_date('22/12/31','RR/MM/DD'),to_date('23/01/01','RR/MM/DD'));

Insert into BOOK_EX.BOARDS (BOARDID,BOARDTITLE,BOARDCONTENT,BOARDCATEGORY,MEMBERSMEMBERID,BOARDSUBCATEGORY,BOARDREGDATE,BOARDENDDATE) values (17,'testTitle17','testContent17','회원',2,'FAQ',to_date('22/12/31','RR/MM/DD'),to_date('23/01/01','RR/MM/DD'));

--------------------------------------------------------

--  DDL for Index BOARDS_PK

--------------------------------------------------------


  CREATE UNIQUE INDEX "BOOK_EX"."BOARDS_PK" ON "BOOK_EX"."BOARDS" ("BOARDID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------

--  Constraints for Table BOARDS

--------------------------------------------------------


  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDID" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDTITLE" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDCONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("MEMBERSMEMBERID" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDSUBCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" MODIFY ("BOARDREGDATE" NOT NULL ENABLE);
  ALTER TABLE "BOOK_EX"."BOARDS" ADD CHECK ("BOARDSUBCATEGORY"='당첨자 ' OR "BOARDSUBCATEGORY"='1:1' OR "BOARDSUBCATEGORY"='FAQ' OR "BOARDSUBCATEGORY"='공지사항' OR "BOARDSUBCATEGORY"='미디어' OR "BOARDSUBCATEGORY"='이벤트') ENABLE;
  ALTER TABLE "BOOK_EX"."BOARDS" ADD CONSTRAINT "BOARDS_PK" PRIMARY KEY ("BOARDID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOOK_EX"."BOARDS" ADD CHECK ("BOARDCATEGORY"='교환/환불' OR "BOARDCATEGORY"='배송' OR "BOARDCATEGORY"='주문/결제' OR "BOARDCATEGORY"='취소' OR "BOARDCATEGORY"='회원') ENABLE;

--------------------------------------------------------

--  Ref Constraints for Table BOARDS

--------------------------------------------------------


  ALTER TABLE "BOOK_EX"."BOARDS" ADD CONSTRAINT "BOARDS_MEMBERS_FK" FOREIGN KEY ("MEMBERSMEMBERID")
	  REFERENCES "BOOK_EX"."MEMBERS" ("MEMBER_ID") ENABLE;

