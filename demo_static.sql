--create table DEPARTMENTS (current schema)
--PRIMARY KEY and NOT NULL constraints
CREATE TABLE DEPARTMENTS 
 (DEPARTMENT_ID NUMBER(4,0), 
  DEPARTMENT_NAME VARCHAR2(30 BYTE) CONSTRAINT DEPT_NAME_NN NOT NULL, 
  MANAGER_ID NUMBER(6,0), 
  LOCATION_ID NUMBER(4,0), 
    CONSTRAINT DEPT_ID_PK PRIMARY KEY (DEPARTMENT_ID) --,
  );
/
--create table EMPLOYEES (current schema)
--PRIMARY KEY, NOT NULL, UNIQUE, CHECK and FOREIGN KEY constraints
CREATE TABLE EMPLOYEES 
 (EMPLOYEE_ID NUMBER(6,0), 
  FIRST_NAME VARCHAR2(20 BYTE), 
  LAST_NAME VARCHAR2(25 BYTE) CONSTRAINT EMP_LAST_NAME_NN NOT NULL, 
  EMAIL VARCHAR2(25 BYTE) CONSTRAINT EMP_EMAIL_NN NOT NULL, 
  PHONE_NUMBER VARCHAR2(20 BYTE), 
  HIRE_DATE DATE CONSTRAINT EMP_HIRE_DATE_NN NOT NULL, 
  JOB_ID VARCHAR2(10 BYTE) CONSTRAINT EMP_JOB_NN NOT NULL, 
  SALARY NUMBER(8,2), 
  COMMISSION_PCT NUMBER(2,2), 
  MANAGER_ID NUMBER(6,0), 
  DEPARTMENT_ID NUMBER(4,0), 
    CONSTRAINT EMP_EMP_ID_PK PRIMARY KEY (EMPLOYEE_ID),
    CONSTRAINT EMP_SALARY_MIN CHECK (salary > 0), 
    CONSTRAINT EMP_EMAIL_UK UNIQUE (EMAIL),
    CONSTRAINT EMP_MANAGER_FK FOREIGN KEY (MANAGER_ID)
      REFERENCES EMPLOYEES (EMPLOYEE_ID), 
    CONSTRAINT EMP_DEPT_FK FOREIGN KEY (DEPARTMENT_ID)
      REFERENCES DEPARTMENTS (DEPARTMENT_ID)
   );
/
--insert data into table DEPARTMENTS
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (10,'Administration',200,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (20,'Marketing',201,1800);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (30,'Purchasing',114,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (40,'Human Resources',203,2400);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (50,'Shipping',121,1500);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (60,'IT',103,1400);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (70,'Public Relations',204,2700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (80,'Sales',145,2500);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (90,'Executive',100,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (100,'Finance',108,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (110,'Accounting',205,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (120,'Treasury',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (130,'Corporate Tax',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (140,'Control And Credit',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (150,'Shareholder Services',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (160,'Benefits',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (170,'Manufacturing',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (180,'Construction',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (190,'Contracting',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (200,'Operations',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (210,'IT Support',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (220,'NOC',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (230,'IT Helpdesk',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (240,'Government Sales',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (250,'Retail Sales',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (260,'Recruiting',null,1700);
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (270,'Payroll',null,1700);
/
--insert data into table EMPLOYEES
Insert into EMPLOYEES  values (100,'Steven','King','SKING','515.123.4567',to_date('17-JUN-87','DD-MON-RR'),'AD_PRES',24000,null,null,90);
Insert into EMPLOYEES  values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568',to_date('21-SEP-89','DD-MON-RR'),'AD_VP',17000,null,100,90);
Insert into EMPLOYEES  values (102,'Lex','De Haan','LDEHAAN','515.123.4569',to_date('13-JAN-93','DD-MON-RR'),'AD_VP',17000,null,100,90);
Insert into EMPLOYEES  values (103,'Alexander','Hunold','AHUNOLD','590.423.4567',to_date('03-JAN-90','DD-MON-RR'),'IT_PROG',9000,null,102,60);
Insert into EMPLOYEES  values (104,'Bruce','Ernst','BERNST','590.423.4568',to_date('21-MAY-91','DD-MON-RR'),'IT_PROG',6000,null,103,60);
Insert into EMPLOYEES  values (105,'David','Austin','DAUSTIN','590.423.4569',to_date('25-JUN-97','DD-MON-RR'),'IT_PROG',4800,null,103,60);
Insert into EMPLOYEES  values (106,'Valli','Pataballa','VPATABAL','590.423.4560',to_date('05-FEB-98','DD-MON-RR'),'IT_PROG',4800,null,103,60);
Insert into EMPLOYEES  values (107,'Diana','Lorentz','DLORENTZ','590.423.5567',to_date('07-FEB-99','DD-MON-RR'),'IT_PROG',4200,null,103,60);
Insert into EMPLOYEES  values (108,'Nancy','Greenberg','NGREENBE','515.124.4569',to_date('17-AUG-94','DD-MON-RR'),'FI_MGR',12000,null,101,100);
Insert into EMPLOYEES  values (109,'Daniel','Faviet','DFAVIET','515.124.4169',to_date('16-AUG-94','DD-MON-RR'),'FI_ACCOUNT',9000,null,108,100);
Insert into EMPLOYEES  values (110,'John','Chen','JCHEN','515.124.4269',to_date('28-SEP-97','DD-MON-RR'),'FI_ACCOUNT',8200,null,108,100);
Insert into EMPLOYEES  values (111,'Ismael','Sciarra','ISCIARRA','515.124.4369',to_date('30-SEP-97','DD-MON-RR'),'FI_ACCOUNT',7700,null,108,100);
Insert into EMPLOYEES  values (112,'Jose Manuel','Urman','JMURMAN','515.124.4469',to_date('07-MAR-98','DD-MON-RR'),'FI_ACCOUNT',7800,null,108,100);
Insert into EMPLOYEES  values (113,'Luis','Popp','LPOPP','515.124.4567',to_date('07-DEC-99','DD-MON-RR'),'FI_ACCOUNT',6900,null,108,100);
Insert into EMPLOYEES  values (114,'Den','Raphaely','DRAPHEAL','515.127.4561',to_date('07-DEC-94','DD-MON-RR'),'PU_MAN',11000,null,100,30);
Insert into EMPLOYEES  values (115,'Alexander','Khoo','AKHOO','515.127.4562',to_date('18-MAY-95','DD-MON-RR'),'PU_CLERK',3100,null,114,30);
Insert into EMPLOYEES  values (116,'Shelli','Baida','SBAIDA','515.127.4563',to_date('24-DEC-97','DD-MON-RR'),'PU_CLERK',2900,null,114,30);
Insert into EMPLOYEES  values (117,'Sigal','Tobias','STOBIAS','515.127.4564',to_date('24-JUL-97','DD-MON-RR'),'PU_CLERK',2800,null,114,30);
Insert into EMPLOYEES  values (118,'Guy','Himuro','GHIMURO','515.127.4565',to_date('15-NOV-98','DD-MON-RR'),'PU_CLERK',2600,null,114,30);
Insert into EMPLOYEES  values (119,'Karen','Colmenares','KCOLMENA','515.127.4566',to_date('10-AUG-99','DD-MON-RR'),'PU_CLERK',2500,null,114,30);
Insert into EMPLOYEES  values (120,'Matthew','Weiss','MWEISS','650.123.1234',to_date('18-JUL-96','DD-MON-RR'),'ST_MAN',8000,null,100,50);
Insert into EMPLOYEES  values (121,'Adam','Fripp','AFRIPP','650.123.2234',to_date('10-APR-97','DD-MON-RR'),'ST_MAN',8200,null,100,50);
Insert into EMPLOYEES  values (122,'Payam','Kaufling','PKAUFLIN','650.123.3234',to_date('01-MAY-95','DD-MON-RR'),'ST_MAN',7900,null,100,50);
Insert into EMPLOYEES  values (123,'Shanta','Vollman','SVOLLMAN','650.123.4234',to_date('10-OCT-97','DD-MON-RR'),'ST_MAN',6500,null,100,50);
Insert into EMPLOYEES  values (124,'Kevin','Mourgos','KMOURGOS','650.123.5234',to_date('16-NOV-99','DD-MON-RR'),'ST_MAN',5800,null,100,50);
Insert into EMPLOYEES  values (125,'Julia','Nayer','JNAYER','650.124.1214',to_date('16-JUL-97','DD-MON-RR'),'ST_CLERK',3200,null,120,50);
Insert into EMPLOYEES  values (126,'Irene','Mikkilineni','IMIKKILI','650.124.1224',to_date('28-SEP-98','DD-MON-RR'),'ST_CLERK',2700,null,120,50);
Insert into EMPLOYEES  values (127,'James','Landry','JLANDRY','650.124.1334',to_date('14-JAN-99','DD-MON-RR'),'ST_CLERK',2400,null,120,50);
Insert into EMPLOYEES  values (128,'Steven','Markle','SMARKLE','650.124.1434',to_date('08-MAR-00','DD-MON-RR'),'ST_CLERK',2200,null,120,50);
Insert into EMPLOYEES  values (129,'Laura','Bissot','LBISSOT','650.124.5234',to_date('20-AUG-97','DD-MON-RR'),'ST_CLERK',3300,null,121,50);
Insert into EMPLOYEES  values (130,'Mozhe','Atkinson','MATKINSO','650.124.6234',to_date('30-OCT-97','DD-MON-RR'),'ST_CLERK',2800,null,121,50);
Insert into EMPLOYEES  values (131,'James','Marlow','JAMRLOW','650.124.7234',to_date('16-FEB-97','DD-MON-RR'),'ST_CLERK',2500,null,121,50);
Insert into EMPLOYEES  values (132,'TJ','Olson','TJOLSON','650.124.8234',to_date('10-APR-99','DD-MON-RR'),'ST_CLERK',2100,null,121,50);
Insert into EMPLOYEES  values (133,'Jason','Mallin','JMALLIN','650.127.1934',to_date('14-JUN-96','DD-MON-RR'),'ST_CLERK',3300,null,122,50);
Insert into EMPLOYEES  values (134,'Michael','Rogers','MROGERS','650.127.1834',to_date('26-AUG-98','DD-MON-RR'),'ST_CLERK',2900,null,122,50);
Insert into EMPLOYEES  values (135,'Ki','Gee','KGEE','650.127.1734',to_date('12-DEC-99','DD-MON-RR'),'ST_CLERK',2400,null,122,50);
Insert into EMPLOYEES  values (136,'Hazel','Philtanker','HPHILTAN','650.127.1634',to_date('06-FEB-00','DD-MON-RR'),'ST_CLERK',2200,null,122,50);
Insert into EMPLOYEES  values (137,'Renske','Ladwig','RLADWIG','650.121.1234',to_date('14-JUL-95','DD-MON-RR'),'ST_CLERK',3600,null,123,50);
Insert into EMPLOYEES  values (138,'Stephen','Stiles','SSTILES','650.121.2034',to_date('26-OCT-97','DD-MON-RR'),'ST_CLERK',3200,null,123,50);
Insert into EMPLOYEES  values (139,'John','Seo','JSEO','650.121.2019',to_date('12-FEB-98','DD-MON-RR'),'ST_CLERK',2700,null,123,50);
Insert into EMPLOYEES  values (140,'Joshua','Patel','JPATEL','650.121.1834',to_date('06-APR-98','DD-MON-RR'),'ST_CLERK',2500,null,123,50);
Insert into EMPLOYEES  values (141,'Trenna','Rajs','TRAJS','650.121.8009',to_date('17-OCT-95','DD-MON-RR'),'ST_CLERK',3500,null,124,50);
Insert into EMPLOYEES  values (142,'Curtis','Davies','CDAVIES','650.121.2994',to_date('29-JAN-97','DD-MON-RR'),'ST_CLERK',3100,null,124,50);
Insert into EMPLOYEES  values (143,'Randall','Matos','RMATOS','650.121.2874',to_date('15-MAR-98','DD-MON-RR'),'ST_CLERK',2600,null,124,50);
Insert into EMPLOYEES  values (144,'Peter','Vargas','PVARGAS','650.121.2004',to_date('09-JUL-98','DD-MON-RR'),'ST_CLERK',2500,null,124,50);
Insert into EMPLOYEES  values (145,'John','Russell','JRUSSEL','011.44.1344.429268',to_date('01-OCT-96','DD-MON-RR'),'SA_MAN',14000,0.4,100,80);
Insert into EMPLOYEES  values (146,'Karen','Partners','KPARTNER','011.44.1344.467268',to_date('05-JAN-97','DD-MON-RR'),'SA_MAN',13500,0.3,100,80);
Insert into EMPLOYEES  values (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',to_date('10-MAR-97','DD-MON-RR'),'SA_MAN',12000,0.3,100,80);
Insert into EMPLOYEES  values (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',to_date('15-OCT-99','DD-MON-RR'),'SA_MAN',11000,0.3,100,80);
Insert into EMPLOYEES  values (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',to_date('29-JAN-00','DD-MON-RR'),'SA_MAN',10500,0.2,100,80);
Insert into EMPLOYEES  values (150,'Peter','Tucker','PTUCKER','011.44.1344.129268',to_date('30-JAN-97','DD-MON-RR'),'SA_REP',10000,0.3,145,80);
Insert into EMPLOYEES  values (151,'David','Bernstein','DBERNSTE','011.44.1344.345268',to_date('24-MAR-97','DD-MON-RR'),'SA_REP',9500,0.25,145,80);
Insert into EMPLOYEES  values (152,'Peter','Hall','PHALL','011.44.1344.478968',to_date('20-AUG-97','DD-MON-RR'),'SA_REP',9000,0.25,145,80);
Insert into EMPLOYEES  values (153,'Christopher','Olsen','COLSEN','011.44.1344.498718',to_date('30-MAR-98','DD-MON-RR'),'SA_REP',8000,0.2,145,80);
Insert into EMPLOYEES  values (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',to_date('09-DEC-98','DD-MON-RR'),'SA_REP',7500,0.2,145,80);
Insert into EMPLOYEES  values (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508',to_date('23-NOV-99','DD-MON-RR'),'SA_REP',7000,0.15,145,80);
Insert into EMPLOYEES  values (156,'Janette','King','JKING','011.44.1345.429268',to_date('30-JAN-96','DD-MON-RR'),'SA_REP',10000,0.35,146,80);
Insert into EMPLOYEES  values (157,'Patrick','Sully','PSULLY','011.44.1345.929268',to_date('04-MAR-96','DD-MON-RR'),'SA_REP',9500,0.35,146,80);
Insert into EMPLOYEES  values (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268',to_date('01-AUG-96','DD-MON-RR'),'SA_REP',9000,0.35,146,80);
Insert into EMPLOYEES  values (159,'Lindsey','Smith','LSMITH','011.44.1345.729268',to_date('10-MAR-97','DD-MON-RR'),'SA_REP',8000,0.3,146,80);
Insert into EMPLOYEES  values (160,'Louise','Doran','LDORAN','011.44.1345.629268',to_date('15-DEC-97','DD-MON-RR'),'SA_REP',7500,0.3,146,80);
Insert into EMPLOYEES  values (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268',to_date('03-NOV-98','DD-MON-RR'),'SA_REP',7000,0.25,146,80);
Insert into EMPLOYEES  values (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268',to_date('11-NOV-97','DD-MON-RR'),'SA_REP',10500,0.25,147,80);
Insert into EMPLOYEES  values (163,'Danielle','Greene','DGREENE','011.44.1346.229268',to_date('19-MAR-99','DD-MON-RR'),'SA_REP',9500,0.15,147,80);
Insert into EMPLOYEES  values (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268',to_date('24-JAN-00','DD-MON-RR'),'SA_REP',7200,0.1,147,80);
Insert into EMPLOYEES  values (165,'David','Lee','DLEE','011.44.1346.529268',to_date('23-FEB-00','DD-MON-RR'),'SA_REP',6800,0.1,147,80);
Insert into EMPLOYEES  values (166,'Sundar','Ande','SANDE','011.44.1346.629268',to_date('24-MAR-00','DD-MON-RR'),'SA_REP',6400,0.1,147,80);
Insert into EMPLOYEES  values (167,'Amit','Banda','ABANDA','011.44.1346.729268',to_date('21-APR-00','DD-MON-RR'),'SA_REP',6200,0.1,147,80);
Insert into EMPLOYEES  values (168,'Lisa','Ozer','LOZER','011.44.1343.929268',to_date('11-MAR-97','DD-MON-RR'),'SA_REP',11500,0.25,148,80);
Insert into EMPLOYEES  values (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268',to_date('23-MAR-98','DD-MON-RR'),'SA_REP',10000,0.2,148,80);
Insert into EMPLOYEES  values (170,'Tayler','Fox','TFOX','011.44.1343.729268',to_date('24-JAN-98','DD-MON-RR'),'SA_REP',9600,0.2,148,80);
Insert into EMPLOYEES  values (171,'William','Smith','WSMITH','011.44.1343.629268',to_date('23-FEB-99','DD-MON-RR'),'SA_REP',7400,0.15,148,80);
Insert into EMPLOYEES  values (172,'Elizabeth','Bates','EBATES','011.44.1343.529268',to_date('24-MAR-99','DD-MON-RR'),'SA_REP',7300,0.15,148,80);
Insert into EMPLOYEES  values (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268',to_date('21-APR-00','DD-MON-RR'),'SA_REP',6100,0.1,148,80);
Insert into EMPLOYEES  values (174,'Ellen','Abel','EABEL','011.44.1644.429267',to_date('11-MAY-96','DD-MON-RR'),'SA_REP',11000,0.3,149,80);
Insert into EMPLOYEES  values (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266',to_date('19-MAR-97','DD-MON-RR'),'SA_REP',8800,0.25,149,80);
Insert into EMPLOYEES  values (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265',to_date('24-MAR-98','DD-MON-RR'),'SA_REP',8600,0.2,149,80);
Insert into EMPLOYEES  values (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264',to_date('23-APR-98','DD-MON-RR'),'SA_REP',8400,0.2,149,80);
Insert into EMPLOYEES  values (178,'Kimberely','Grant','KGRANT','011.44.1644.429263',to_date('24-MAY-99','DD-MON-RR'),'SA_REP',7000,0.15,149,null);
Insert into EMPLOYEES  values (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262',to_date('04-JAN-00','DD-MON-RR'),'SA_REP',6200,0.1,149,80);
Insert into EMPLOYEES  values (180,'Winston','Taylor','WTAYLOR','650.507.9876',to_date('24-JAN-98','DD-MON-RR'),'SH_CLERK',3200,null,120,50);
Insert into EMPLOYEES  values (181,'Jean','Fleaur','JFLEAUR','650.507.9877',to_date('23-FEB-98','DD-MON-RR'),'SH_CLERK',3100,null,120,50);
Insert into EMPLOYEES  values (182,'Martha','Sullivan','MSULLIVA','650.507.9878',to_date('21-JUN-99','DD-MON-RR'),'SH_CLERK',2500,null,120,50);
Insert into EMPLOYEES  values (183,'Girard','Geoni','GGEONI','650.507.9879',to_date('03-FEB-00','DD-MON-RR'),'SH_CLERK',2800,null,120,50);
Insert into EMPLOYEES  values (184,'Nandita','Sarchand','NSARCHAN','650.509.1876',to_date('27-JAN-96','DD-MON-RR'),'SH_CLERK',4200,null,121,50);
Insert into EMPLOYEES  values (185,'Alexis','Bull','ABULL','650.509.2876',to_date('20-FEB-97','DD-MON-RR'),'SH_CLERK',4100,null,121,50);
Insert into EMPLOYEES  values (186,'Julia','Dellinger','JDELLING','650.509.3876',to_date('24-JUN-98','DD-MON-RR'),'SH_CLERK',3400,null,121,50);
Insert into EMPLOYEES  values (187,'Anthony','Cabrio','ACABRIO','650.509.4876',to_date('07-FEB-99','DD-MON-RR'),'SH_CLERK',3000,null,121,50);
Insert into EMPLOYEES  values (188,'Kelly','Chung','KCHUNG','650.505.1876',to_date('14-JUN-97','DD-MON-RR'),'SH_CLERK',3800,null,122,50);
Insert into EMPLOYEES  values (189,'Jennifer','Dilly','JDILLY','650.505.2876',to_date('13-AUG-97','DD-MON-RR'),'SH_CLERK',3600,null,122,50);
Insert into EMPLOYEES  values (190,'Timothy','Gates','TGATES','650.505.3876',to_date('11-JUL-98','DD-MON-RR'),'SH_CLERK',2900,null,122,50);
Insert into EMPLOYEES  values (191,'Randall','Perkins','RPERKINS','650.505.4876',to_date('19-DEC-99','DD-MON-RR'),'SH_CLERK',2500,null,122,50);
Insert into EMPLOYEES  values (192,'Sarah','Bell','SBELL','650.501.1876',to_date('04-FEB-96','DD-MON-RR'),'SH_CLERK',4000,null,123,50);
Insert into EMPLOYEES  values (193,'Britney','Everett','BEVERETT','650.501.2876',to_date('03-MAR-97','DD-MON-RR'),'SH_CLERK',3900,null,123,50);
Insert into EMPLOYEES  values (194,'Samuel','McCain','SMCCAIN','650.501.3876',to_date('01-JUL-98','DD-MON-RR'),'SH_CLERK',3200,null,123,50);
Insert into EMPLOYEES  values (195,'Vance','Jones','VJONES','650.501.4876',to_date('17-MAR-99','DD-MON-RR'),'SH_CLERK',2800,null,123,50);
Insert into EMPLOYEES  values (196,'Alana','Walsh','AWALSH','650.507.9811',to_date('24-APR-98','DD-MON-RR'),'SH_CLERK',3100,null,124,50);
Insert into EMPLOYEES  values (197,'Kevin','Feeney','KFEENEY','650.507.9822',to_date('23-MAY-98','DD-MON-RR'),'SH_CLERK',3000,null,124,50);
Insert into EMPLOYEES  values (198,'Donald','OConnell','DOCONNEL','650.507.9833',to_date('21-JUN-99','DD-MON-RR'),'SH_CLERK',2600,null,124,50);
Insert into EMPLOYEES  values (199,'Douglas','Grant','DGRANT','650.507.9844',to_date('13-JAN-00','DD-MON-RR'),'SH_CLERK',2600,null,124,50);
Insert into EMPLOYEES  values (200,'Jennifer','Whalen','JWHALEN','515.123.4444',to_date('17-SEP-87','DD-MON-RR'),'AD_ASST',4400,null,101,10);
Insert into EMPLOYEES  values (201,'Michael','Hartstein','MHARTSTE','515.123.5555',to_date('17-FEB-96','DD-MON-RR'),'MK_MAN',13000,null,100,20);
Insert into EMPLOYEES  values (202,'Pat','Fay','PFAY','603.123.6666',to_date('17-AUG-97','DD-MON-RR'),'MK_REP',6000,null,201,20);
Insert into EMPLOYEES  values (203,'Susan','Mavris','SMAVRIS','515.123.7777',to_date('07-JUN-94','DD-MON-RR'),'HR_REP',6500,null,101,40);
Insert into EMPLOYEES  values (204,'Hermann','Baer','HBAER','515.123.8888',to_date('07-JUN-94','DD-MON-RR'),'PR_REP',10000,null,101,70);
Insert into EMPLOYEES  values (205,'Shelley','Higgins','SHIGGINS','515.123.8080',to_date('07-JUN-94','DD-MON-RR'),'AC_MGR',12000,null,101,110);
Insert into EMPLOYEES  values (206,'William','Gietz','WGIETZ','515.123.8181',to_date('07-JUN-94','DD-MON-RR'),'AC_ACCOUNT',8300,null,205,110);
/
--create indexes on table EMPLOYEES
CREATE INDEX EMP_DEPARTMENT_IX ON EMPLOYEES (DEPARTMENT_ID);
CREATE INDEX EMP_JOB_IX ON EMPLOYEES (JOB_ID);
CREATE INDEX EMP_MANAGER_IX ON EMPLOYEES (MANAGER_ID);
CREATE INDEX EMP_NAME_IX ON EMPLOYEES (LAST_NAME, FIRST_NAME);
/
--create index on table DEPARTMENTS
CREATE INDEX DEPT_LOCATION_IX ON DEPARTMENTS (LOCATION_ID);

--query tables (subquery and NVL function)
SELECT last_name, employee_id, salary + NVL(commission_pct, 0) sal_com, 
       job_id, e.department_id
  /* Select all employees whose compensation is
  greater than that of Pataballa.*/
  FROM employees e, departments d
  /*The DEPARTMENTS table is used to get the department name.*/
  WHERE e.department_id = d.department_id
    AND salary + NVL(commission_pct,0) >   /* Subquery:       */
      (SELECT salary + NVL(commission_pct,0)
        /* total compensation is salary + commission_pct */
        FROM employees 
        WHERE last_name = 'Pataballa')
  ORDER BY last_name, employee_id;
/
--create view V
CREATE VIEW V AS
  SELECT e.last_name, e.department_id, d.location_id
    FROM employees e, departments d
   WHERE e.department_id = d.department_id;
/
--query view V
SELECT * FROM v WHERE department_id = 20;
/
--query tables DEPARTMENTS and EMPLOYEES (WHERE EXISTS)
SELECT d.department_id, d.department_name
  FROM departments d
 WHERE EXISTS (SELECT * FROM employees e
                WHERE d.department_id = e.department_id)
ORDER BY department_id;
/
--query tables DEPARTMENTS and EMPLOYEES ((+) operator)
SELECT d.department_name, e.last_name, e.job_id
  FROM departments d, employees e
 WHERE d.department_id(+) = e.department_id
   AND e.last_name like 'G%';
/
--query tables DEPARTMENTS and EMPLOYEES (FULL OUTER JOIN)
SELECT d.department_name, e.last_name, e.job_id
  FROM departments d
  FULL OUTER JOIN employees e
  ON d.department_id = e.department_id
  WHERE e.last_name like 'G%';
/
--create table by CREATE TABLE AS SELECT
CREATE TABLE DEP_20_90 
AS 
SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_ID IN (20,90,30);
/
--create package emp_mgmt 
CREATE PACKAGE emp_mgmt AS
  PROCEDURE remove_dept(dep_id NUMBER);
  --function with Side Effects
  FUNCTION del_dep(d_id NUMBER) RETURN INTEGER;
END emp_mgmt; 
/
CREATE PACKAGE BODY emp_mgmt AS 
  PROCEDURE remove_dept(dep_id NUMBER) IS 
    BEGIN 
      DELETE FROM dep_20_90 
      WHERE dep_20_90.department_id = dep_id; 
       DBMS_OUTPUT.PUT_LINE('Department with id='||
                            dep_id||
                            ' is removed.');
   END remove_dept;

  FUNCTION del_dep (d_id NUMBER) RETURN INTEGER IS
      cnt INTEGER;
    BEGIN
      SELECT COUNT(department_id)
      INTO cnt
      FROM dep_20_90;

      DELETE FROM dep_20_90 WHERE department_id = d_id; 

      RETURN cnt;
   END del_dep;
END emp_mgmt; 
/
SELECT * FROM dep_20_90;
CALL emp_mgmt.remove_dept(30);
SELECT * FROM dep_20_90;
/
DECLARE
 cnt INTEGER;
BEGIN
  cnt:=emp_mgmt.del_dep(90);
  IF cnt <> 0 THEN
    DBMS_OUTPUT.PUT_LINE('Department with id=90 is removed by pack func.');
  END IF;
END;
/
SELECT * FROM dep_20_90;
/
--create sequence DEPARTMENTS_SEQ
CREATE SEQUENCE departments_seq
 START WITH     1
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
/
--using nextval sequence in insert into table
INSERT INTO dep_20_90 (department_id,department_name) 
  VALUES (departments_seq.nextval, 'departments_seq.nextval');
INSERT INTO dep_20_90 (department_id,department_name) 
  VALUES (departments_seq.nextval, 'before alter');
/
--alter sequence DEPARTMENTS_SEQ
ALTER SEQUENCE departments_seq INCREMENT BY 5;
/
INSERT INTO dep_20_90 (department_id,department_name) 
  VALUES (departments_seq.nextval, 'after alter');
INSERT INTO dep_20_90 (department_id,department_name) 
  VALUES (departments_seq.nextval, 'after alter');

SELECT * FROM dep_20_90;
/
--delete from table
DELETE FROM dep_20_90 WHERE department_id < 20;
/
--update table
UPDATE employees SET commission_pct = NVL(commission_pct,0.03)*1.5
WHERE department_id IN (
  SELECT department_id FROM departments
  WHERE location_id = 1700);
/

--nested procedure p and function get_bonus
DECLARE
  FUNCTION get_bonus (sales NUMBER,quota NUMBER) RETURN NUMBER;
  PROCEDURE p (
    sales NUMBER,
    quota NUMBER,
    emp_id NUMBER
  )
  IS
    bonus NUMBER;
    updated VARCHAR2(3) := 'No';
  BEGIN
    bonus:= get_bonus(sales, quota);
    IF bonus <> 0 THEN
      UPDATE employees
      SET salary = salary + bonus
      WHERE employee_id = emp_id;
      updated := 'Yes';
    END IF;
 
    DBMS_OUTPUT.PUT_LINE (
      'Table updated? ' || updated || ', ' ||
      'bonus = ' || bonus || '.'
    );
  END p;

  FUNCTION get_bonus(sales NUMBER,quota NUMBER) RETURN NUMBER
  IS
    bonus NUMBER:=0;
  BEGIN
    IF sales > (quota + 200) THEN
      bonus := (sales - quota)/4;
    END IF;

    RETURN bonus;
  END get_bonus;

  BEGIN
    p(10100, 10000, 120);
    p(10500, 10000, 121);
  END;
/

--create procedure with simple error handling
CREATE PROCEDURE print_msg (n NUMBER)
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE(1/n); --Error

EXCEPTION
  WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE('Error:');
    DBMS_OUTPUT.PUT_LINE(1/n || ' is undefined'); --Error again
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error!');
END;
/
--invoking block
BEGIN
  print_msg(3);
  print_msg(0);

EXCEPTION
  WHEN ZERO_DIVIDE THEN  -- handles exception raised in exception handler
    DBMS_OUTPUT.PUT_LINE('1/0 is undefined.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM(SQLCODE));
END;
/


--create procedure with error handling of
--Predefined Exceptions and User-Defined Exception
CREATE OR REPLACE PROCEDURE select_emp (emp_id NUMBER)
IS
  err_msg  VARCHAR2(90):='empty';
  l_name   employees.last_name%TYPE;
  f_name   employees.first_name%TYPE;
  dep_id   employees.department_id%TYPE;
  tmp_num  NUMBER;
  err_code NUMBER;
  acc_den  EXCEPTION;
  PRAGMA EXCEPTION_INIT (acc_den, -20005);
BEGIN

  tmp_num:= 1/NVL(emp_id,0);

  SELECT e.department_id
    INTO dep_id
    FROM employees e
   WHERE e.employee_id = emp_id;

  IF dep_id IS NULL THEN
    RAISE_APPLICATION_ERROR(-20005, 'Information is closed for public use.');
  END IF;

  SELECT e.first_name, e.last_name
    INTO f_name, l_name
    FROM employees e
   WHERE e.employee_id = emp_id;

  DBMS_OUTPUT.PUT_LINE('Employee ID:'||emp_id);
  DBMS_OUTPUT.PUT_LINE(' First Name:'||f_name);
  DBMS_OUTPUT.PUT_LINE('  Last Name:'||l_name);


  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      err_msg:='No Data found for employee_id='||emp_id;
      DBMS_OUTPUT.PUT_LINE(err_msg);
    WHEN ZERO_DIVIDE THEN
      err_code:=SQLCODE;
      err_msg:=SQLERRM(err_code);
      err_msg:='error ('||err_code||') in procudure SELECT_EMP : '||err_msg;
      DBMS_OUTPUT.PUT_LINE(err_msg);
      return;
    WHEN acc_den THEN 
      err_msg:= 'Access denied.';
      DBMS_OUTPUT.PUT_LINE(err_msg);
      RAISE;
    WHEN OTHERS THEN
      err_msg:='Unexpected error!';
      DBMS_OUTPUT.PUT_LINE(err_msg);
      RAISE;
END select_emp;
/
--procedure calls
CALL select_emp(101);
CALL select_emp(99);
CALL select_emp(null);
CALL select_emp(178);
/
--invoking block with error handling
DECLARE
  some_exception EXCEPTION;
  PRAGMA EXCEPTION_INIT (some_exception, -20005);
BEGIN
  select_emp(178);

  EXCEPTION
  WHEN some_exception THEN
    DBMS_OUTPUT.PUT_LINE('User-Defined Exception is handled');
    DBMS_OUTPUT.PUT_LINE(SQLERRM(-20005));
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM(SQLCODE));

END;
/


--clan up
DROP PROCEDURE select_emp;
DROP PROCEDURE print_msg;
DROP SEQUENCE departments_seq;
DROP PACKAGE emp_mgmt;
DROP TABLE dep_20_90 PURGE;
DROP VIEW V;
DROP TABLE EMPLOYEES PURGE;
DROP TABLE DEPARTMENTS PURGE;
/

---------------------------------
--OBJECTS--

DECLARE
  -- Associative array indexed by string:
  TYPE population IS TABLE OF NUMBER -- Associative array type
    INDEX BY VARCHAR2(64);           -- indexed by string

  city_population population; -- Associative array variable
  i VARCHAR2(64);             -- Scalar variable
BEGIN
  -- Add elements (key-value pairs) to associative array:
  city_population('Smallville') := 2000;
  city_population('Midland') := 750000;
  city_population('Megalopolis') := 1000000;

  -- Change value associated with key 'Smallville':
  city_population('Smallville') := 2001;

  -- Print associative array:
  i := city_population.FIRST; -- Get first element of array

  WHILE i IS NOT NULL LOOP
    DBMS_Output.PUT_LINE
      ('Population of ' || i || ' is ' || city_population(i));
    i := city_population.NEXT(i); -- Get next element of array
 END LOOP;
END;
/
--
DECLARE
  TYPE sum_multiples IS TABLE OF PLS_INTEGER INDEX BY PLS_INTEGER;
  n  PLS_INTEGER := 5; -- number of multiples to sum for display
  sn PLS_INTEGER := 10; -- number of multiples to sum
  m  PLS_INTEGER := 3; -- multiple

  FUNCTION get_sum_multiples (
    multiple IN PLS_INTEGER,
    num IN PLS_INTEGER
  ) RETURN sum_multiples
  IS
    s sum_multiples;
  BEGIN
    FOR i IN 1..num LOOP
      s(i) := multiple * ((i * (i + 1)) / 2); -- sum of multiples
    END LOOP;
    RETURN s;
  END get_sum_multiples;

BEGIN
  DBMS_OUTPUT.PUT_LINE (
    'Sum of the first ' || TO_CHAR(n) || ' multiples of ' ||
    TO_CHAR(m) || ' is ' || TO_CHAR(get_sum_multiples (m, sn)(n))
  );
END;
/
--
DECLARE
  TYPE Foursome IS VARRAY(4) OF VARCHAR2(15); -- VARRAY type
  -- varray variable initialized with constructor:
  team Foursome := Foursome('John', 'Mary', 'Alberto', 'Juanita');

  PROCEDURE print_team (heading VARCHAR2) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE(heading);
    FOR i IN 1..4 LOOP
      DBMS_OUTPUT.PUT_LINE(i || '.' || team(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('---');
  END;

BEGIN
  print_team('2001 Team:');

  team(3) := 'Pierre'; -- Change values of two elements
  team(4) := 'Yvonne';
  print_team('2005 Team:');

  -- Invoke constructor to assign new values to varray variable:

  team := Foursome('Arun', 'Amitha', 'Allan', 'Mae');
  print_team('2009 Team:');
END;
/
--
DECLARE
  TYPE Roster IS TABLE OF VARCHAR2(15); -- nested table type

  -- nested table variable initialized with constructor:
  names Roster := Roster('D Caruso', 'J Hamil', 'D Piro', 'R Singh');

  PROCEDURE print_names (heading VARCHAR2) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE(heading);
    FOR i IN names.FIRST .. names.LAST LOOP -- For first to last element
      DBMS_OUTPUT.PUT_LINE(names(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('---');
  END;

BEGIN
  print_names('Initial Values:');
  names(3) := 'P Perez'; -- Change value of one element
  print_names('Current Values:');
  names := Roster('A Jansen', 'B Gupta'); -- Change entire table
  print_names('Current Values:');
END;
/
--
DECLARE
  TYPE aa_type_str IS TABLE OF INTEGER INDEX BY VARCHAR2(10);
  aa_str  aa_type_str;
 
  PROCEDURE print_aa_str IS
    i  VARCHAR2(10);
  BEGIN
    i := aa_str.FIRST;
 
    IF i IS NULL THEN
      DBMS_OUTPUT.PUT_LINE('aa_str is empty');
    ELSE
      WHILE i IS NOT NULL LOOP
        DBMS_OUTPUT.PUT('aa_str.(' || i || ') = ');
        DBMS_OUTPUT.PUT_LINE(NVL(TO_CHAR(aa_str(i)), 'NULL'));
        i := aa_str.NEXT(i);
      END LOOP;
    END IF;
 
    DBMS_OUTPUT.PUT_LINE('---');
  END print_aa_str;
 
BEGIN
  aa_str('M') := 13;
  aa_str('Z') := 26;
  aa_str('C') := 3;
  print_aa_str;
 
  aa_str.DELETE;  -- Delete all elements
  print_aa_str;
 
  aa_str('M') := 13;   -- Replace deleted element with same value
  aa_str('Z') := 260;  -- Replace deleted element with new value
  aa_str('C') := 30;   -- Replace deleted element with new value
  aa_str('W') := 23;   -- Add new element
  aa_str('J') := 10;   -- Add new element
  aa_str('N') := 14;   -- Add new element
  aa_str('P') := 16;   -- Add new element
  aa_str('W') := 23;   -- Add new element
  aa_str('J') := 10;   -- Add new element
  print_aa_str;
 
  aa_str.DELETE('C');      -- Delete one element
  print_aa_str;
 
  aa_str.DELETE('N','W');  -- Delete range of elements
  print_aa_str;
 
  aa_str.DELETE('Z','M');  -- Does nothing
  print_aa_str;
END;
/
--
DECLARE
  TYPE aa_type_int IS TABLE OF INTEGER INDEX BY PLS_INTEGER;
  aa_int  aa_type_int;
 
  PROCEDURE print_first_and_last IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('FIRST = ' || aa_int.FIRST);
    DBMS_OUTPUT.PUT_LINE('LAST = ' || aa_int.LAST);
  END print_first_and_last;
 
BEGIN
  aa_int(1) := 3;
  aa_int(2) := 6;
  aa_int(3) := 9;
  aa_int(4) := 12;
 
  DBMS_OUTPUT.PUT_LINE('Before deletions:');
  print_first_and_last;
 
  aa_int.DELETE(1);
  aa_int.DELETE(4);
 
  DBMS_OUTPUT.PUT_LINE('After deletions:');
  print_first_and_last;
END;
/
DECLARE
  TYPE aa_type_str IS TABLE OF INTEGER INDEX BY VARCHAR2(10);
  aa_str  aa_type_str;
 
  PROCEDURE print_first_and_last IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('FIRST = ' || aa_str.FIRST);
    DBMS_OUTPUT.PUT_LINE('LAST = ' || aa_str.LAST);
  END print_first_and_last;
 
BEGIN
  aa_str('Z') := 26;
  aa_str('A') := 1;
  aa_str('K') := 11;
  aa_str('R') := 18;
 
  DBMS_OUTPUT.PUT_LINE('Before deletions:');
  print_first_and_last;
 
  aa_str.DELETE('A');
  aa_str.DELETE('Z');
 
  DBMS_OUTPUT.PUT_LINE('After deletions:');
  print_first_and_last;
END;
/
--
DECLARE
   TYPE dnames_tab IS TABLE OF VARCHAR2(30);
   dept_names dnames_tab;
BEGIN
   dept_names := dnames_tab('Shipping','Sales','Finance','Payroll');
   dbms_output.put_line('COUNT - ' || dept_names.count());
   dbms_output.put_line('FIRST - ' || dept_names(dept_names.first()));
   dbms_output.put_line('LAST - ' || dept_names(dept_names.last()));
   dept_names.delete(dept_names.first());
   dept_names.delete(dept_names.last());
   dbms_output.put_line('DELETE');
   dbms_output.put_line('COUNT - ' || dept_names.count());
   dbms_output.put_line('FIRST - ' || dept_names(dept_names.first()));
   dbms_output.put_line('LAST - ' || dept_names(dept_names.last()));
END;
/
