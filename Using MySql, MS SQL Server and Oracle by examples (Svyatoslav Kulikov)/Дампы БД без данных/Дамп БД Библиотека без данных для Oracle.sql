--------------------------------------------------------
--  File created - Thursday-August-04-2016   
--------------------------------------------------------
DROP TABLE "LIBRARY_EX_2015_USER"."authors" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."books" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."genres" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."subscribers" cascade constraints;
DROP TABLE "LIBRARY_EX_2015_USER"."subscriptions" cascade constraints;
DROP SEQUENCE "LIBRARY_EX_2015_USER"."SEQ_authors_a_id";
DROP SEQUENCE "LIBRARY_EX_2015_USER"."SEQ_books_b_id";
DROP SEQUENCE "LIBRARY_EX_2015_USER"."SEQ_genres_g_id";
DROP SEQUENCE "LIBRARY_EX_2015_USER"."SEQ_subscribers_s_id";
DROP SEQUENCE "LIBRARY_EX_2015_USER"."SEQ_subscriptions_sb_id";
--------------------------------------------------------
--  DDL for Sequence SEQ_authors_a_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_USER"."SEQ_authors_a_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_books_b_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_USER"."SEQ_books_b_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_genres_g_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_USER"."SEQ_genres_g_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscribers_s_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_USER"."SEQ_subscribers_s_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_subscriptions_sb_id
--------------------------------------------------------

   CREATE SEQUENCE  "LIBRARY_EX_2015_USER"."SEQ_subscriptions_sb_id"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table authors
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."authors" 
   (	"a_id" NUMBER(10,0), 
	"a_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table books
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."books" 
   (	"b_id" NUMBER(10,0), 
	"b_name" NVARCHAR2(150), 
	"b_year" NUMBER(5,0), 
	"b_quantity" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table genres
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."genres" 
   (	"g_id" NUMBER(10,0), 
	"g_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table m2m_books_authors
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" 
   (	"b_id" NUMBER(10,0), 
	"a_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table m2m_books_genres
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" 
   (	"b_id" NUMBER(10,0), 
	"g_id" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table subscribers
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."subscribers" 
   (	"s_id" NUMBER(10,0), 
	"s_name" NVARCHAR2(150)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Table subscriptions
--------------------------------------------------------

  CREATE TABLE "LIBRARY_EX_2015_USER"."subscriptions" 
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
  TABLESPACE "LIBRARY_EX_2015" ;
REM INSERTING into LIBRARY_EX_2015_USER."authors"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."books"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."genres"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."m2m_books_authors"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."m2m_books_genres"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."subscribers"
SET DEFINE OFF;
REM INSERTING into LIBRARY_EX_2015_USER."subscriptions"
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_m2m_books_authors" ON "LIBRARY_EX_2015_USER"."m2m_books_authors" ("b_id", "a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index UQ_genres_g_name
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."UQ_genres_g_name" ON "LIBRARY_EX_2015_USER"."genres" ("g_name") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_books
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_books" ON "LIBRARY_EX_2015_USER"."books" ("b_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_subscriptions
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_subscriptions" ON "LIBRARY_EX_2015_USER"."subscriptions" ("sb_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_genres" ON "LIBRARY_EX_2015_USER"."genres" ("g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_authors
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_authors" ON "LIBRARY_EX_2015_USER"."authors" ("a_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_m2m_books_genres
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_m2m_books_genres" ON "LIBRARY_EX_2015_USER"."m2m_books_genres" ("b_id", "g_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  DDL for Index PK_subscribers
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIBRARY_EX_2015_USER"."PK_subscribers" ON "LIBRARY_EX_2015_USER"."subscribers" ("s_id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015" ;
--------------------------------------------------------
--  Constraints for Table authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."authors" ADD CONSTRAINT "PK_authors" PRIMARY KEY ("a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."authors" MODIFY ("a_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."authors" MODIFY ("a_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" ADD CONSTRAINT "PK_m2m_books_genres" PRIMARY KEY ("b_id", "g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" MODIFY ("g_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" MODIFY ("b_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" ADD CONSTRAINT "check_enum" CHECK ("sb_is_active" IN ('Y', 'N')) ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" ADD CONSTRAINT "PK_subscriptions" PRIMARY KEY ("sb_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_is_active" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_finish" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_start" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_book" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_subscriber" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" MODIFY ("sb_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table subscribers
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."subscribers" ADD CONSTRAINT "PK_subscribers" PRIMARY KEY ("s_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscribers" MODIFY ("s_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscribers" MODIFY ("s_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" ADD CONSTRAINT "PK_m2m_books_authors" PRIMARY KEY ("b_id", "a_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" MODIFY ("a_id" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" MODIFY ("b_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."genres" ADD CONSTRAINT "UQ_genres_g_name" UNIQUE ("g_name")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."genres" ADD CONSTRAINT "PK_genres" PRIMARY KEY ("g_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."genres" MODIFY ("g_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."genres" MODIFY ("g_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table books
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."books" ADD CONSTRAINT "PK_books" PRIMARY KEY ("b_id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIBRARY_EX_2015"  ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."books" MODIFY ("b_quantity" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."books" MODIFY ("b_year" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."books" MODIFY ("b_name" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_EX_2015_USER"."books" MODIFY ("b_id" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_authors
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_authors" FOREIGN KEY ("a_id")
	  REFERENCES "LIBRARY_EX_2015_USER"."authors" ("a_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_authors" ADD CONSTRAINT "FK_m2m_books_authors_books" FOREIGN KEY ("b_id")
	  REFERENCES "LIBRARY_EX_2015_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table m2m_books_genres
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_books" FOREIGN KEY ("b_id")
	  REFERENCES "LIBRARY_EX_2015_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."m2m_books_genres" ADD CONSTRAINT "FK_m2m_books_genres_genres" FOREIGN KEY ("g_id")
	  REFERENCES "LIBRARY_EX_2015_USER"."genres" ("g_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table subscriptions
--------------------------------------------------------

  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" ADD CONSTRAINT "FK_subscriptions_books" FOREIGN KEY ("sb_book")
	  REFERENCES "LIBRARY_EX_2015_USER"."books" ("b_id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "LIBRARY_EX_2015_USER"."subscriptions" ADD CONSTRAINT "FK_subscriptions_subscribers" FOREIGN KEY ("sb_subscriber")
	  REFERENCES "LIBRARY_EX_2015_USER"."subscribers" ("s_id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_authors_a_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_USER"."TRG_authors_a_id" 
	BEFORE INSERT 
	ON "authors" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_authors_a_id".NEXTVAL 
		INTO :NEW."a_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_USER"."TRG_authors_a_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_books_b_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_USER"."TRG_books_b_id" 
	BEFORE INSERT 
	ON "books" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_books_b_id".NEXTVAL 
		INTO :NEW."b_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_USER"."TRG_books_b_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_genres_g_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_USER"."TRG_genres_g_id" 
	BEFORE INSERT 
	ON "genres" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_genres_g_id".NEXTVAL 
		INTO :NEW."g_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_USER"."TRG_genres_g_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscribers_s_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_USER"."TRG_subscribers_s_id" 
	BEFORE INSERT 
	ON "subscribers" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscribers_s_id".NEXTVAL 
		INTO :NEW."s_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_USER"."TRG_subscribers_s_id" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_subscriptions_sb_id
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LIBRARY_EX_2015_USER"."TRG_subscriptions_sb_id" 
	BEFORE INSERT 
	ON "subscriptions" 
	FOR EACH ROW 
	BEGIN 
		SELECT "SEQ_subscriptions_sb_id".NEXTVAL 
		INTO :NEW."sb_id" 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "LIBRARY_EX_2015_USER"."TRG_subscriptions_sb_id" ENABLE;
