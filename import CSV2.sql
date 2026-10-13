CREATE OR REPLACE DIRECTORY ext_tab_dir AS 'C:\dataset';

GRANT READ ON DIRECTORY ext_tab_dir TO sys;

CREATE TABLE foodfacts (
    code                      VARCHAR2(4000),
    states_en                 VARCHAR2(4000),
    url                       VARCHAR2(4000),
    created_datetime          VARCHAR2(4000),
    last_modified_datetime    VARCHAR2(4000),
    creator                   VARCHAR2(4000),
    pnns_groups_2             VARCHAR2(4000),
    countries_en              VARCHAR2(4000),
    pnns_groups_1             VARCHAR2(4000),
    product_name              VARCHAR2(4000),
    energy_100g               VARCHAR2(4000),
    proteins_100g             VARCHAR2(4000),
    fat_100g                  VARCHAR2(4000),
    carbohydrates_100g        VARCHAR2(4000),
    sugars_100g               VARCHAR2(4000),
    salt_100g                 VARCHAR2(4000),
    sodium_100g               VARCHAR2(4000),
    saturatedfat_100g         VARCHAR2(4000),
    categories_en             VARCHAR2(4000),
    main_category_en          VARCHAR2(4000),
    nutriscore_score          VARCHAR2(4000),
    nutriscore_grade          VARCHAR2(4000),
    fiber_100g                VARCHAR2(4000),
    fruitsvegetablesrate_100g VARCHAR2(4000)
--code varchar2(32767),states_en varchar2(32767),url varchar2(32767),created_datetime varchar2(32767),last_modified_datetime varchar2(32767),creator varchar2(32767),pnns_groups_2 varchar2(32767),countries_en varchar2(32767),pnns_groups_1 varchar2(32767),product_name varchar2(32767),energy_100g varchar2(32767),proteins_100g varchar2(32767),fat_100g varchar2(32767),carbohydrates_100g varchar2(32767),sugars_100g varchar2(32767),salt_100g varchar2(32767),sodium_100g varchar2(32767),saturated-fat_100g varchar2(32767),categories_en varchar2(32767),main_category_en varchar2(32767),nutriscore_score varchar2(32767),nutriscore_grade varchar2(32767),fiber_100g varchar2(32767),fruits-vegetables-rate_100g
--code varchar2(8192),states_en varchar2(8192),url varchar2(8192),created_datetime varchar2(8192),last_modified_datetime varchar2(8192),creator varchar2(8192),pnns_groups_2 varchar2(8192),countries_en varchar2(8192),pnns_groups_1 varchar2(8192),product_name varchar2(8192),energy_100g varchar2(8192),proteins_100g varchar2(8192),fat_100g varchar2(8192),carbohydrates_100g varchar2(8192),sugars_100g varchar2(8192),salt_100g varchar2(8192),sodium_100g varchar2(8192),saturated-fat_100g varchar2(8192),categories_en varchar2(8192),main_category_en varchar2(8192),nutriscore_score varchar2(8192),nutriscore_grade varchar2(8192),fiber_100g varchar2(8192),fruits-vegetables-rate_100g

)
ORGANIZATION EXTERNAL ( 
    TYPE oracle_loader
    DEFAULT DIRECTORY ext_tab_dir 
    ACCESS PARAMETERS 
    (
        
        RECORDS DELIMITED BY '\n'
        skip 1
        FIELDS TERMINATED BY '\t'
        MISSING FIELD VALUES ARE NULL
    ) 
    LOCATION ( 'cleaned_openfoodfacts.csv' )
);

create table TBL_foodfacts as
select *  from foodfacts where 1=0


DROP TABLE foodfacts
select 
cast( code  as number(14))

from foodfacts
where code <> 'code'


DELETE FROM foodfacts
WHERE CODE ='code'


INSERT INTO "kg".tbl_country (
    field_01,
    code_01,
    code_02,
    name_local,
    name_en)
SELECT cast( replace(field_02,'"','')  as int),replace(field_03,'"',''),replace(field_04,'"',''),replace(field_05,'"',''),replace(field_06,'"','') FROM
emp_countries;

DROP TABLE emp_countries;
--DROP DIRECTORY ext_tab_dir;


--"1","4","AF","AFG","Afghanistan","Afghanistan"

CREATE TABLE tbl_country (
    field_01   NUMBER(3) PRIMARY KEY,
    code_01    CHAR(2),
    code_02    CHAR(3),
    name_local VARCHAR2(254),
    name_en    VARCHAR2(254)
)