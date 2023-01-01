CREATE TABLESPACE rexre DATAFILE  'E:\oracle\tablespace\rexre.dbf' SIZE 100M   AUTOEXTEND ON NEXT 10M ; 
CREATE USER rexre IDENTIFIED BY 1111 DEFAULT TABLESPACE rexre ;
 
GRANT connect, resource, dba TO rexre;


