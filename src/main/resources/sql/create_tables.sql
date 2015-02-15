-- CREATE TABLE CBT_OWNER.ARCHIVECASHBALANCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     SINGLESIDEDYN CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.ARCHIVEDCASHBALANCEFLOWS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     FLOWDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.ARCHIVEDCASHBALANCETRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.BALANCEDIFFERENCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     CALCULATEDBALANCE NUMBER(25,7),
--     RMSBALANCE NUMBER(25,7),
--     DIFFERENCE NUMBER(25,7),
--     PREDICTEDBALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CALCULATEDBALANCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     CALCULATEDBALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHBALANCESTOREDFLOWTYPES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BALANCETYPE VARCHAR2(30) NOT NULL,
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHBALANCESTOREDSOURCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SOURCE VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHBALFXSWAPINCLUDEDSTATUS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     STATUS VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHBALPREMIUMINCLUDEDSTATUS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     STATUS VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHEXPLAINCLOSINGBALANCE
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     BALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHEXPLAINFLOWS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     FLOWDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHEXPLAINOPENINGBALANCE
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     BALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHEXPLAINTRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     FUNDSPLITID NUMBER(20,7),
--     FUNDSPLITVERSION NUMBER(20,7),
--     NEARHASPAIDYN VARCHAR2(50),
--     FARHASPAIDYN VARCHAR2(50),
--     PREMIUMHASPAIDYN VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHMOVEMENTALLTRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     FUNDSPLITID NUMBER(20,7),
--     FUNDSPLITVERSION NUMBER(20,7),
--     NEARHASPAIDYN VARCHAR2(50),
--     FARHASPAIDYN VARCHAR2(50),
--     PREMIUMHASPAIDYN VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHMOVEMENTNETFLOWS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     FLOWDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CASHMOVEMENTRMSTRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     FUNDSPLITID NUMBER(20,7),
--     FUNDSPLITVERSION NUMBER(20,7),
--     NEARHASPAIDYN VARCHAR2(50),
--     FARHASPAIDYN VARCHAR2(50),
--     PREMIUMHASPAIDYN VARCHAR2(50),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.CBT_APPLICATIONDATA
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     PARAMETERNAME VARCHAR2(60) NOT NULL,
--     PARAMETERVALUE VARCHAR2(1450),
--     ORDERFIELD NUMBER(10,0),
--     LOCKED VARCHAR2(1)
-- );
-- CREATE TABLE CBT_OWNER.DATABASESTATUS
-- (
--     ID_PROFILE INT PRIMARY KEY NOT NULL,
--     CASHMOVEMENTSSTOREDFROM VARCHAR2(30) DEFAULT NULL,
--     CASHMOVEMENTSSTOREDTO VARCHAR2(30) DEFAULT NULL,
--     CASHMOVEMENTSOPENINGBALANCE VARCHAR2(30) DEFAULT NULL,
--     CASHMOVEMENTSCLOSINGBALANCE VARCHAR2(30) DEFAULT NULL,
--     CASHMOVEMENTSBOOK VARCHAR2(50) DEFAULT NULL,
--     CASHBALANCEHISTORICBALANCEDAY VARCHAR2(30) DEFAULT NULL,
--     CASHBALANCEPREDICTEDBALANCEDAY VARCHAR2(30) DEFAULT NULL,
--     CASHBALANCETYPE VARCHAR2(30) DEFAULT NULL,
--     CASHBALANCESELECTEDBOOKS VARCHAR2(50) DEFAULT NULL,
--     CASHBALANCEBALANCESCOMPARED VARCHAR2(10) DEFAULT NULL,
--     CASHBALANCEPREDICTEDBALANCE VARCHAR2(10) DEFAULT NULL,
--     CASHBALANCEINCLUDEREASONS VARCHAR2(10) DEFAULT NULL,
--     CASHBALANCESTARTFLOWDATE VARCHAR2(30) DEFAULT NULL,
--     CASHBALANCEENDFLOWDATE VARCHAR2(30) DEFAULT NULL,
--     STATUSMESSAGE VARCHAR2(128) DEFAULT NULL,
--     LASTRUN DATE DEFAULT NULL
-- );
-- CREATE TABLE CBT_OWNER.ERROR_LOG
-- (
--     ID INT PRIMARY KEY NOT NULL,
--     USER_ VARCHAR2(100),
--     TEXT VARCHAR2(4000),
--     TYPE_ NUMBER(10,0),
--     DATE_ TIMESTAMP
-- );
-- CREATE TABLE CBT_OWNER.FXCASHINCLUDEDTRADETYPES
-- (
--     ID_PROFILE INT NOT NULL,
--     TRADETYPE VARCHAR2(50)
-- );
-- CREATE TABLE CBT_OWNER.HISTORICBALANCEFLOWS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     FLOWDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.HISTORICBALANCETRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.PREDICTEDBALANCEFLOWS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     FLOWDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     STRUCTUREID NUMBER(10,0),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.PREDICTEDBALANCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     PREDICTEDBALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.PREDICTEDBALANCETRADES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     SYSTEMID NUMBER(10,0),
--     TRADEID VARCHAR2(20),
--     STRUCTUREID NUMBER(10,0),
--     TRADETYPE VARCHAR2(50),
--     BACKOFFICESYSTEM VARCHAR2(20),
--     BACKOFFICESYSTEMID VARCHAR2(20),
--     FLOWTYPE VARCHAR2(50),
--     COUNTERPARTY VARCHAR2(50),
--     CUSTOMER VARCHAR2(50),
--     SOURCESYSTEM VARCHAR2(20),
--     BOOK VARCHAR2(50),
--     CCY1 VARCHAR2(3),
--     AMOUNT NUMBER(25,7),
--     CCY2 VARCHAR2(3),
--     AMOUNT2 NUMBER(25,7),
--     FLOWDATE DATE,
--     REPAYDATE DATE,
--     REASON VARCHAR2(15),
--     CREATED DATE,
--     ENTEREDBY VARCHAR2(50),
--     STATUS VARCHAR2(30),
--     VERSION NUMBER(10,0),
--     LATESTVERSIONYN VARCHAR2(1),
--     REVERSAL CHAR(1),
--     SINGLESIDEDYN CHAR(1),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.PROFILERUNSTATUS
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     HOSTNAME VARCHAR2(50),
--     STATUS VARCHAR2(20),
--     USERNAME VARCHAR2(150)
-- );
CREATE TABLE GIGNAT.PROFILES
(
  ID_PROFILE    INT PRIMARY KEY NOT NULL,
  NAME          VARCHAR2(200)   NOT NULL,
  PROFILE_OWNER VARCHAR2(50) DEFAULT NULL

);

CREATE TABLE GIGNAT.USERS
(
  LOGIN  VARCHAR2(200) PRIMARY KEY NOT NULL,
  PASSWD VARCHAR2(200)             NOT NULL
);

CREATE TABLE GIGNAT.SALES
(
  COMPANY VARCHAR2(100) NOT NULL,
  POINTA NUMBER,
  POINTB NUMBER
);

CREATE TABLE GIGNAT.CLIENTS
(
  ID INTEGER PRIMARY KEY NOT NULL,
  COMPANY VARCHAR2(100) NOT NULL,
  DESCRIPTION VARCHAR2(100),
  STATUS INTEGER
);

CREATE TABLE GIGNAT.CLIENTASSETS
(
  COMPANY VARCHAR2(100) NOT NULL,
  ASSET VARCHAR2(100),
  CNT INTEGER
);

CREATE TABLE GIGNAT.DASHBOARD
(
  LOGIN VARCHAR2(100) NOT NULL,
  KEY VARCHAR2(100),
  VALUE VARCHAR2(100),
  COLOR VARCHAR2(100),
  ICON VARCHAR2(100)
);

CREATE TABLE GIGNAT.ROLES
(
  LOGIN VARCHAR2(200) PRIMARY KEY NOT NULL,
  ROLE  VARCHAR2(200)             NOT NULL
);
-- CREATE TABLE CBT_OWNER.RMSBALANCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     BALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.ROLLEDBALANCES
-- (
--     ID_PROFILE NUMBER(15,0) NOT NULL,
--     BOOK VARCHAR2(50),
--     CCY VARCHAR2(3),
--     SOURCE VARCHAR2(50),
--     FLOWTYPE VARCHAR2(50),
--     BALANCE NUMBER(25,7),
--     REASON VARCHAR2(15),
--     PK_ID VARCHAR2(32) PRIMARY KEY NOT NULL
-- );
-- CREATE TABLE CBT_OWNER.USERPROFILES
-- (
--     ID_PROFILE INT NOT NULL,
--     USERNAME VARCHAR2(200) PRIMARY KEY NOT NULL
-- );
--
-- CREATE TABLE BOOK
-- (
--   NAME  VARCHAR2(200) PRIMARY KEY NOT NULL,
--   BOOKGROUPYN VARCHAR2(200),
--   PARENT VARCHAR2(200)
-- );
--
-- CREATE TABLE CURRENCY
-- (
--   CCY  VARCHAR2(200) PRIMARY KEY NOT NULL
-- );
--
--
-- CREATE UNIQUE INDEX ARCHIVECASHBALANCES_PROF_IDX ON CBT_OWNER.ARCHIVECASHBALANCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX ARCHIVEDCASHBALANCEF_PROF_IDX ON CBT_OWNER.ARCHIVEDCASHBALANCEFLOWS ( ID_PROFILE );
-- CREATE UNIQUE INDEX ARCHIVEDCASHBALANCET_PROF_IDX ON CBT_OWNER.ARCHIVEDCASHBALANCETRADES ( ID_PROFILE );
-- CREATE UNIQUE INDEX BALANCEDIFFERENCES_PROF_IDX ON CBT_OWNER.BALANCEDIFFERENCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX CALCULATEDBALANCES_PROF_IDX ON CBT_OWNER.CALCULATEDBALANCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHBALANCESTOREDFLO_PROF_IDX ON CBT_OWNER.CASHBALANCESTOREDFLOWTYPES ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHBALANCESTOREDSOU_PROF_IDX ON CBT_OWNER.CASHBALANCESTOREDSOURCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHBALFXSWAPINCLUDE_PROF_IDX ON CBT_OWNER.CASHBALFXSWAPINCLUDEDSTATUS ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHBALPREMIUMINCLUD_PROF_IDX ON CBT_OWNER.CASHBALPREMIUMINCLUDEDSTATUS ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHEXPLAINCLOSINGBA_PROF_IDX ON CBT_OWNER.CASHEXPLAINCLOSINGBALANCE ( ID_PROFILE );
-- CREATE UNIQUE INDEX CASHEXPLAINOPENINGBA_PROF_IDX ON CBT_OWNER.CASHEXPLAINOPENINGBALANCE ( ID_PROFILE );
-- CREATE UNIQUE INDEX CBT_APPLICATIONDATA_UI ON CBT_OWNER.CBT_APPLICATIONDATA ( ID_PROFILE, PARAMETERNAME, PARAMETERVALUE, ORDERFIELD );
-- CREATE UNIQUE INDEX CBT_APPLICATIONDATA_PROF_IDX ON CBT_OWNER.CBT_APPLICATIONDATA ( ID_PROFILE );
-- CREATE UNIQUE INDEX FXCASHINCLUDEDTRADETYPES_IDX ON CBT_OWNER.FXCASHINCLUDEDTRADETYPES ( ID_PROFILE, TRADETYPE );
-- CREATE UNIQUE INDEX FXCASHINCLUDEDTRADET_PROF_IDX ON CBT_OWNER.FXCASHINCLUDEDTRADETYPES ( ID_PROFILE );
-- CREATE UNIQUE INDEX HISTORICBALANCEFLOWS_PROF_IDX ON CBT_OWNER.HISTORICBALANCEFLOWS ( ID_PROFILE );
-- CREATE UNIQUE INDEX HISTORICBALANCETRADE_PROF_IDX ON CBT_OWNER.HISTORICBALANCETRADES ( ID_PROFILE );
-- CREATE UNIQUE INDEX PREDICTEDBALANCEFLOW_PROF_IDX ON CBT_OWNER.PREDICTEDBALANCEFLOWS ( ID_PROFILE );
-- CREATE UNIQUE INDEX PREDICTEDBALANCES_PROF_IDX ON CBT_OWNER.PREDICTEDBALANCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX PREDICTEDBALANCETRAD_PROF_IDX ON CBT_OWNER.PREDICTEDBALANCETRADES ( ID_PROFILE );
-- CREATE UNIQUE INDEX UNIQ_PROFILE ON CBT_OWNER.PROFILERUNSTATUS ( ID_PROFILE );
-- CREATE UNIQUE INDEX RMSBALANCES_PROF_IDX ON CBT_OWNER.RMSBALANCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX ROLLEDBALANCES_PROF_IDX ON CBT_OWNER.ROLLEDBALANCES ( ID_PROFILE );
-- CREATE UNIQUE INDEX USERPROFILES_PROF_IDX ON CBT_OWNER.USERPROFILES ( ID_PROFILE );
--
