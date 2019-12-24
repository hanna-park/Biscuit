--------------------------------------------------------
--  파일이 생성됨 - 화요일-12월-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table THEATER
--------------------------------------------------------

  CREATE TABLE "BISCUIT"."THEATER" 
   (	"THEATER_NUM" NUMBER(5,0), 
	"CINEMA_NUM" NUMBER(5,0), 
	"THEATER_NAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into BISCUIT.THEATER
SET DEFINE OFF;
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (1,1,'A');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (2,1,'B');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (3,1,'C');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (4,2,'A');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (5,2,'B');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (6,2,'C');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (7,3,'A');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (8,3,'B');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (9,3,'C');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (10,4,'A');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (11,4,'B');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (12,4,'C');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (13,5,'A');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (14,5,'B');
Insert into BISCUIT.THEATER (THEATER_NUM,CINEMA_NUM,THEATER_NAME) values (15,5,'C');
--------------------------------------------------------
--  DDL for Index THEATER_THEATERNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BISCUIT"."THEATER_THEATERNUM_PK" ON "BISCUIT"."THEATER" ("THEATER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table THEATER
--------------------------------------------------------

  ALTER TABLE "BISCUIT"."THEATER" MODIFY ("THEATER_NAME" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."THEATER" MODIFY ("CINEMA_NUM" NOT NULL ENABLE);
  ALTER TABLE "BISCUIT"."THEATER" ADD CONSTRAINT "THEATER_THEATERNUM_PK" PRIMARY KEY ("THEATER_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table THEATER
--------------------------------------------------------

  ALTER TABLE "BISCUIT"."THEATER" ADD CONSTRAINT "THEATER_CINEMANUM_FK" FOREIGN KEY ("CINEMA_NUM")
	  REFERENCES "BISCUIT"."CINEMA" ("CINEMA_NUM") ENABLE;
