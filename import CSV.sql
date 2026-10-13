CREATE OR REPLACE DIRECTORY ext_tab_dir AS 'C:\dataset';
GRANT READ ON DIRECTORY ext_tab_dir TO sys;

CREATE TABLE emp_countries (
  field_01 varchar2(254),
  field_02  varchar2(254),
  field_03  varchar2(254),
  field_04  varchar2(254),
  field_05  varchar2(254),
  field_06  varchar2(254)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY ext_tab_dir
  ACCESS PARAMETERS (RECORDS DELIMITED BY '\n' FIELDS TERMINATED BY ",")
 
  LOCATION ('countries-en.csv')
);
INSERT INTO "kg".tbl_country (
    field_01,
    code_01,
    code_02,
    name_local,
    name_en)
SELECT cast( replace(field_02,'"','')  as int),replace(field_03,'"',''),replace(field_04,'"',''),replace(field_05,'"',''),replace(field_06,'"','') FROM emp_countries;

DROP TABLE emp_countries;
--DROP DIRECTORY ext_tab_dir;


--"1","4","AF","AFG","Afghanistan","Afghanistan"

CREATE TABLE TBL_country (
  field_01 number(3) primary Key,
  Code_01  char(2),
  Code_02  char(3),
  Name_local  varchar2(254),
  Name_en  varchar2(254)
)