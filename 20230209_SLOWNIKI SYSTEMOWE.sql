select * from user_tables --all_tables --dba_tables  --wszystkie tabele

SELECT * FROM USER_TAB_COLUMNS -- ALL_TAB_COLUMNS -- dba_TAB_COLUMNS --wszystkie kolumny dla tabel


select * from user_constraints --all_constraints --dba_constraints CONSRTAINY (CZYLI WARUNKI) DLA TABEL


select * from user_views --all_views --dba_views      INFORMACJE O TABELACH


select * from dictionary -- SELECT DO WYŒWIETLENIA S£OWNIKÓW
select * from dictionary where

SELECT * FROM DBA_USERS --ALL_USERS --USER_USERS  INFORMACJE O U¯YTKOWNIKACH


SELECT * FROM ALL_DEPENDENCIES --DBA_DEPENDENCIES --ALL_DEPENDENCIES  SELECT DO SPRAWDZANIA ZALE¯NOŒCI MIÊDZY TABELAMI, WIDOKAMI PROCEDURAMI itp.
WHERE REFERENCED_NAME = upper('request') or  NAME = upper('request')
--AND TYPE = 'PROCEDURE' 
--REFERENCED_TYPE = 'TABLE'; 
--OWNER = 'HURT'


SELECT * FROM DBA_TAB_PRIVS  --SELECT DO SPRAWDZANIA UPRAWNIEN UZYTKOWNIKA DO TABEL
WHERE --owner = 'HURT' AND 
grantee =  'JKOSZEWSKA' --'APOMYKALA'
ORDER BY table_name;


select * from proxy_users where proxy = upper('IVOLCHANSKA'); --SELECT POKAZUJ¥CY PROXY USER-ÓW



SELECT * FROM all_tables@e25_prod where owner = upper('bps_exion') -- SELECT DO SPRAWDZANIA WSZYSTKICH TABEL ZEWNETRZNYCH
--and table_name = upper('ord_orders')
select * from bps_exion.ORD_ORDERS_KNF@e25_prod --SELECT DO TABELI ZEWNETRZNEJ


SELECT * FROM user_source -- all_source-- where owner = upper('bborowik')   -- SELECT do widoku i informacji do pod programów (procedurach, funkcjach, wszystkich pod programów)
SELECT * FROM all_source where lower(name) like lower('%UTL_FILE%') and owner not like 'HURT'



SELECT * FROM user_objects  -- all_object  --- Select do informacji o wszystkich obiektach tabele podprogramy itp. podstawowe informacje o nich

select * from dba_users -- select informacji o userach



-------informacje o wolnym miejscu--------------------------------------------------
select * from dba_ts_quotas where username = upper('rdf_etl') -- sprawdzanie wolnej quoty dla u¿ytkownika
SELECT tablespace_name, SUM(bytes)/1024/1024 AS "Total Size (MB)", SUM(bytes)/1024/1024 - SUM(blocks*8192)/1024/1024 AS "Free Space (MB)" 
FROM dba_data_files 
GROUP BY tablespace_name;   -- informacja o tabelspace i ich wolnych miejscach

SELECT *
FROM dba_data_files -- informacja o plikach przyznaj¹cych miejsce tabelspace
------------------------------------------------------------------------------------








