--------------------------------------------------------
-- Archivo creado  - miércoles-abril-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EJE4PARIMPAR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EJE4PARIMPAR" 
   (	"ID" NUMBER(*,0), 
	"VALORES" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.EJE4PARIMPAR
SET DEFINE OFF;
Insert into SYSTEM.EJE4PARIMPAR (ID,VALORES) values ('1','4');
Insert into SYSTEM.EJE4PARIMPAR (ID,VALORES) values ('2','11');
Insert into SYSTEM.EJE4PARIMPAR (ID,VALORES) values ('3','57');
Insert into SYSTEM.EJE4PARIMPAR (ID,VALORES) values ('4','24');
Insert into SYSTEM.EJE4PARIMPAR (ID,VALORES) values ('5','47');
--------------------------------------------------------
--  DDL for Trigger DISPARIMPAR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SYSTEM"."DISPARIMPAR" 
   before insert on "SYSTEM"."EJE4PARIMPAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQIDPARIMPAR.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SYSTEM"."DISPARIMPAR" ENABLE;
--------------------------------------------------------
--  Constraints for Table EJE4PARIMPAR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EJE4PARIMPAR" MODIFY ("ID" NOT NULL ENABLE);
