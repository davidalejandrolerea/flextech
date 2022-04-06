--------------------------------------------------------
-- Archivo creado  - miércoles-abril-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EJE5
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EJE5"    --- CREACION DE TABLA PARA EL EJERCICIO 5
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"EDAD" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.EJE5
SET DEFINE OFF;
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('1','BOB','21');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('2','SAM','19');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('3','JILL','18');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('4','JIM','21');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('5','SALLY','19');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('6','JESS','20');
Insert into SYSTEM.EJE5 (ID,NOMBRE,EDAD) values ('7','WILL','21');
--------------------------------------------------------
--  DDL for Trigger DIS_EJE5_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SYSTEM"."DIS_EJE5_ID" 
   before insert on "SYSTEM"."EJE5" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select ID_SEC_EJE5.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SYSTEM"."DIS_EJE5_ID" ENABLE;
--------------------------------------------------------
--  Constraints for Table EJE5
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EJE5" MODIFY ("ID" NOT NULL ENABLE);


CONSULTA SOLICITADA

SELECT COUNT (EDAD) FROM EJE5  GROUP BY EDAD
