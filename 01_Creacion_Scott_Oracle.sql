*Desde Conexion Administrador
*copie el script de abajo y ejecute script

create user scott identified by tiger;
grant connect,resource to scott;


*Desde conexion Scott
*copie el script de abajo y ejecute script

CREATE TABLE DEPT
(
  DEPTNO  NUMBER(2),
  DNAME   VARCHAR2(14 BYTE),
  LOC     VARCHAR2(13 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EMP
(
  EMPNO     NUMBER(4),
  ENAME     VARCHAR2(10 BYTE),
  JOB       VARCHAR2(9 BYTE),
  MGR       NUMBER(4),
  HIREDATE  DATE,
  SAL       NUMBER(7,2),
  COMM      NUMBER(7,2),
  DEPTNO    NUMBER(2)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE BONUS
(
  ENAME  VARCHAR2(10 BYTE),
  JOB    VARCHAR2(9 BYTE),
  SAL    NUMBER,
  COMM   NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE SALGRADE
(
  GRADE  NUMBER,
  LOSAL  NUMBER,
  HISAL  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX PK_DEPT ON DEPT
(DEPTNO)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX PK_EMP ON EMP
(EMPNO)
LOGGING
NOPARALLEL;


ALTER TABLE DEPT ADD (
  CONSTRAINT PK_DEPT
 PRIMARY KEY
 (DEPTNO));

ALTER TABLE EMP ADD (
  CONSTRAINT PK_EMP
 PRIMARY KEY
 (EMPNO));

ALTER TABLE EMP ADD (
  CONSTRAINT FK_DEPTNO 
 FOREIGN KEY (DEPTNO) 
 REFERENCES DEPT (DEPTNO));

**Luego presione commit
