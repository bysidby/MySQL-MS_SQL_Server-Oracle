--------------------------------------------------------
--  File created - Thursday-August-04-2016   
--------------------------------------------------------
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."authors" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."books" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."genres" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."subscribers" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" cascade constraints;
DROP SEQUENCE "LIBRARY_EX_2015_MOD_USER"."SEQ_authors_a_id";
DROP SEQUENCE "LIBRARY_EX_2015_MOD_USER"."SEQ_books_b_id";
DROP SEQUENCE "LIBRARY_EX_2015_MOD_USER"."SEQ_genres_g_id";
DROP SEQUENCE "LIBRARY_EX_2015_MOD_USER"."SEQ_subscribers_s_id";
DROP SEQUENCE "LIBRARY_EX_2015_MOD_USER"."SEQ_subscriptions_sb_id";
--------------------------------------------------------
--  DDL for Sequence SEQ_authors_a_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_MOD_USER"."SEQ_authors_a_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_books_b_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_MOD_USER"."SEQ_books_b_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_genres_g_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_MOD_USER"."SEQ_genres_g_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscribers_s_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_MOD_USER"."SEQ_subscribers_s_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscriptions_sb_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_MOD_USER"."SEQ_subscriptions_sb_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table authors
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."authors" 
   (	"a_id" NUMBER(10,0), 
	"a_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table books
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."books" 
   (	"b_id" NUMBER(10,0), 
	"b_name" NVARCHAR2(150), 
	"b_year" NUMBER(5,0), 
	"b_quantity" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table genres
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."genres" 
   (	"g_id" NUMBER(10,0), 
	"g_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table m2m_books_authors
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" 
   (	"b_id" NUMBER(10,0), 
	"a_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table m2m_books_genres
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" 
   (	"b_id" NUMBER(10,0), 
	"g_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table subscribers
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."subscribers" 
   (	"s_id" NUMBER(10,0), 
	"s_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Table subscriptions
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" 
   (	"sb_id" NUMBER(10,0), 
	"sb_subscriber" NUMBER(10,0), 
	"sb_book" NUMBER(10,0), 
	"sb_start" DATE, 
	"sb_finish" DATE, 
	"sb_is_active" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
REM INSERTING into LIBRARY_EX_2015_MOD_USER."authors"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (1,'Д. Кнут');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (2,'А. Азимов');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (3,'Д. Карнеги');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (4,'Л.Д. Ландау');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (5,'Е.М. Лифшиц');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (6,'Б. Страуструп');
Insert into LIBRARY_EX_2015_MOD_USER."authors" ("a_id","a_name") values (7,'А.С. Пушкин');
REM INSERTING into LIBRARY_EX_2015_MOD_USER."books"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (1,'Евгений Онегин',1985,2);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (2,'Сказка о рыбаке и рыбке',1990,3);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (3,'Основание и империя',2000,5);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (4,'Психология программирования',1998,1);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (5,'Язык программирования С++',1996,3);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (6,'Курс теоретической физики',1981,12);
Insert into LIBRARY_EX_2015_MOD_USER."books" ("b_id","b_name","b_year","b_quantity") values (7,'Искусство программирования',1993,7);
REM INSERTING into LIBRARY_EX_2015_MOD_USER."genres"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (5,'Классика');
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (4,'Наука');
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (1,'Поэзия');
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (2,'Программирование');
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (3,'Психология');
Insert into LIBRARY_EX_2015_MOD_USER."genres" ("g_id","g_name") values (6,'Фантастика');
REM INSERTING into LIBRARY_EX_2015_MOD_USER."m2m_books_authors"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (1,7);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (2,7);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (3,2);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (4,3);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (4,6);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (5,6);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (6,4);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (6,5);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_authors" ("b_id","a_id") values (7,1);
REM INSERTING into LIBRARY_EX_2015_MOD_USER."m2m_books_genres"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (1,1);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (1,5);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (2,1);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (2,5);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (3,6);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (4,2);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (4,3);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (5,2);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (6,5);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (7,2);
Insert into LIBRARY_EX_2015_MOD_USER."m2m_books_genres" ("b_id","g_id") values (7,5);
REM INSERTING into LIBRARY_EX_2015_MOD_USER."subscribers"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."subscribers" ("s_id","s_name") values (1,'Иванов И.И.');
Insert into LIBRARY_EX_2015_MOD_USER."subscribers" ("s_id","s_name") values (2,'Петров П.П.');
Insert into LIBRARY_EX_2015_MOD_USER."subscribers" ("s_id","s_name") values (3,'Сидоров С.С.');
Insert into LIBRARY_EX_2015_MOD_USER."subscribers" ("s_id","s_name") values (4,'Сидоров С.С.');
REM INSERTING into LIBRARY_EX_2015_MOD_USER."subscriptions"
SET DEFINE OFF;
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (100,1,3,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (2,1,1,to_date('12-JAN-11','DD-MON-RR'),to_date('12-FEB-11','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (3,3,3,to_date('17-MAY-12','DD-MON-RR'),to_date('17-JUL-12','DD-MON-RR'),'Y');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (42,1,2,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (57,4,5,to_date('11-JUN-12','DD-MON-RR'),to_date('11-AUG-12','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (61,1,7,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (62,3,5,to_date('03-AUG-14','DD-MON-RR'),to_date('03-OCT-14','DD-MON-RR'),'Y');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (86,3,1,to_date('03-AUG-14','DD-MON-RR'),to_date('03-SEP-14','DD-MON-RR'),'Y');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (91,4,1,to_date('07-OCT-15','DD-MON-RR'),to_date('07-MAR-15','DD-MON-RR'),'Y');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (95,1,4,to_date('07-OCT-15','DD-MON-RR'),to_date('07-NOV-15','DD-MON-RR'),'N');
Insert into LIBRARY_EX_2015_MOD_USER."subscriptions" ("sb_id","sb_subscriber","sb_book","sb_start","sb_finish","sb_is_active") values (99,4,4,to_date('08-OCT-15','DD-MON-RR'),to_date('08-NOV-25','DD-MON-RR'),'Y');
--------------------------------------------------------
--  DDL for Index PK_subscribers
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_subscribers" ON "LIBRARY_EX_2015_MOD_USER"."subscribers" ("s_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_genres" ON "LIBRARY_EX_2015_MOD_USER"."genres" ("g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_books
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_books" ON "LIBRARY_EX_2015_MOD_USER"."books" ("b_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_subscriptions
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_subscriptions" ON "LIBRARY_EX_2015_MOD_USER"."subscriptions" ("sb_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_authors" ON "LIBRARY_EX_2015_MOD_USER"."authors" ("a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_m2m_books_genres" ON "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" ("b_id", "g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index UQ_genres_g_name
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."UQ_genres_g_name" ON "LIBRARY_EX_2015_MOD_USER"."genres" ("g_name") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_MOD_USER"."PK_m2m_books_authors" ON "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" ("b_id", "a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS" ;
--------------------------------------------------------
--  Constraints for Table authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."authors" MODIFY ("a_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."authors" MODIFY ("a_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."authors" ADD CONSTRAINT "PK_authors" PRIMARY KEY ("a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" MODIFY ("a_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" ADD CONSTRAINT "PK_m2m_books_authors" PRIMARY KEY ("b_id", "a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_subscriber" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_book" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_start" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_finish" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" MODIFY ("sb_is_active" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" ADD CONSTRAINT "PK_subscriptions" PRIMARY KEY ("sb_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" ADD CONSTRAINT "check_enum" CHECK ("sb_is_active" IN ('Y', 'N')) ENABLE;
--------------------------------------------------------
--  Constraints for Table subscribers
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscribers" MODIFY ("s_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscribers" MODIFY ("s_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscribers" ADD CONSTRAINT "PK_subscribers" PRIMARY KEY ("s_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."genres" MODIFY ("g_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."genres" MODIFY ("g_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."genres" ADD CONSTRAINT "PK_genres" PRIMARY KEY ("g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."genres" ADD CONSTRAINT "UQ_genres_g_name" UNIQUE ("g_name")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" MODIFY ("g_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" ADD CONSTRAINT "PK_m2m_books_genres" PRIMARY KEY ("b_id", "g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table books
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."books" MODIFY ("b_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."books" MODIFY ("b_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."books" MODIFY ("b_year" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."books" MODIFY ("b_quantity" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."books" ADD CONSTRAINT "PK_books" PRIMARY KEY ("b_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015_MOD_TS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_authors" FOREIGN KEY ("a_id")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."authors" ("a_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_books" FOREIGN KEY ("b_id")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_books" FOREIGN KEY ("b_id")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_genres" FOREIGN KEY ("g_id")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."genres" ("g_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" ADD CONSTRAINT "FK_subscriptions_books" FOREIGN KEY ("sb_book")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_MOD_USER"."subscriptions" ADD CONSTRAINT "FK_subscriptions_subscribers" FOREIGN KEY ("sb_subscriber")
	  REFERENCES "LIBRARY_EX_2015_MOD_USER"."subscribers" ("s_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_authors_a_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_authors_a_id" 
	BEFORE INSERT 
	ON "authors" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_authors_a_id".NEXTVAL 
		INTO :NEW."a_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_authors_a_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_books_b_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_books_b_id" 
	BEFORE INSERT 
	ON "books" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_books_b_id".NEXTVAL 
		INTO :NEW."b_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_books_b_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_genres_g_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_genres_g_id" 
	BEFORE INSERT 
	ON "genres" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_genres_g_id".NEXTVAL 
		INTO :NEW."g_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_genres_g_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscribers_s_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_subscribers_s_id" 
	BEFORE INSERT 
	ON "subscribers" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscribers_s_id".NEXTVAL 
		INTO :NEW."s_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_subscribers_s_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscriptions_sb_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_subscriptions_sb_id" 
	BEFORE INSERT 
	ON "subscriptions" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscriptions_sb_id".NEXTVAL 
		INTO :NEW."sb_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_MOD_USER"."TRG_subscriptions_sb_id" ENABLE;
