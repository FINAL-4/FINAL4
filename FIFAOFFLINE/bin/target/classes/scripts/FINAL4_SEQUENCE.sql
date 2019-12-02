DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE P_RECRUIT CASCADE CONSTRAINTS;
DROP TABLE P_LIST CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE ATTACH CASCADE CONSTRAINTS;
DROP TABLE CATAGORY CASCADE CONSTRAINTS;
DROP TABLE TEAM CASCADE CONSTRAINTS;
DROP TABLE TEAM_AD CASCADE CONSTRAINTS;
DROP TABLE T_JOINED_MEMBER CASCADE CONSTRAINTS;
DROP TABLE T_MEMBER CASCADE CONSTRAINTS;
DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE MATCHING CASCADE CONSTRAINTS;
DROP TABLE APP_MATCHING CASCADE CONSTRAINTS;
DROP TABLE P_ENROLL CASCADE CONSTRAINTS;


CREATE TABLE MEMBER (
   USER_NO   NUMBER      NOT NULL,
   USER_ID   VARCHAR2(30)      NOT NULL,
   USER_EMAIL   VARCHAR2(100)      NULL,
   USER_PWD   VARCHAR2(100)      NOT NULL,
   NAME   VARCHAR2(15)      NOT NULL,
   BIRTHDAY   VARCHAR2(6)      NOT NULL,
   GENDER   VARCHAR2(1)      NOT NULL,
   ADDRESS   VARCHAR2(100)      NULL,
   PROFILE   VARCHAR2(1000)      NULL,
   PHONE   VARCHAR2(30)      NOT NULL,
   STATUS   VARCHAR2(10)   DEFAULT 'Y'   NOT NULL,
   A_COUNT   NUMBER   DEFAULT 0   NOT NULL,
   JOINDATE DATE DEFAULT SYSDATE NOT NULL
);

CREATE TABLE P_RECRUIT (
   R_NUM   NUMBER(38)      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   R_PLACE   VARCHAR(30)      NOT NULL,
   R_DAY   VARCHAR(20)      NOT NULL,
   DEADLINE   NUMBER   DEFAULT 1   NOT NULL,
   R_CONTENT   VARCHAR(1000)      NULL,
   R_STATUS   VARCHAR(1)   DEFAULT 'N'   NOT NULL
);

CREATE TABLE P_LIST (
   R_NUM   NUMBER(38)      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   ACCEPT   VARCHAR(1)   DEFAULT 'H'   NOT NULL
);


CREATE TABLE NOTICE (
   NID   NUMBER      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   NTITLE   VARCHAR2(100)      NOT NULL,
   NCONTENT   VARCHAR2(4000)      NULL,
   NWRITER   VARCHAR2(30)      NOT NULL,
   NCOUNT   NUMBER   DEFAULT '0'   NOT NULL,
   NDATE   DATE      NOT NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NOT NULL
);

CREATE TABLE BOARD (
   BID   NUMBER      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   RID   NUMBER      NOT NULL,
   BTYPE   NUMBER      NOT NULL,
   CID   NUMBER      NOT NULL,
   BTITLE   VARCHAR2(100)      NOT NULL,
   BCONTENT   VARCHAR2(4000)      NOT NULL,
   BWRITER   NUMBER      NOT NULL,
   BCOUNT   NUMBER   DEFAULT 0   NOT NULL,
   C_DATE   DATE      NOT NULL,
   M_DATE   DATE      NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NOT NULL
);


CREATE TABLE REPLY (
   RID   NUMBER      NOT NULL,
   RCONTENT   VARCHAR2(400)      NOT NULL,
   REF_BID   NUMBER      NOT NULL,
   RWRITER   NUMBER      NOT NULL,
   C_DATE   DATE      NOT NULL,
   M_DATE   DATE      NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NOT NULL
);

CREATE TABLE ATTACH (
   FID   NUMBER      NOT NULL,
   NID   NUMBER      NOT NULL,
   BID2   NUMBER      NOT NULL,
   BID   NUMBER      NOT NULL,
   ORIGIN_NAME   VARCHAR2(255)      NOT NULL,
   CHANGE_NAME   VARCHAR2(255)      NOT NULL,
   FILE_PATH   VARCHAR2(1000)      NOT NULL,
   UPLOAD_DATE   DATE      NOT NULL,
   DOWNLOAD_COUNT   NUMBER   DEFAULT 0   NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NOT NULL
);

CREATE TABLE CATAGORY (
   CID   NUMBER      NOT NULL,
   BID   NUMBER      NOT NULL,
   CNAME   VARCHAR2(30)      NULL
);

CREATE TABLE TEAM (
   TEAM_NO   NUMBER      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   TEAM_NAME   VARCHAR(50)      NOT NULL,
   TEAM_IMAGE   VARCHAR(1000)      NOT NULL,
   TEAM_AREA   VARCHAR(100)      NOT NULL,
   TEAM_INTRO   VARCHAR(1000)      NULL
);


CREATE TABLE TEAM_AD (
   USER_NO   NUMBER      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   TEAM_ADVER   VARCHAR(1000)      NULL,
   RESISTERDAY   DATE      NOT NULL,
   AD_STATUS   VARCHAR(1)      NOT NULL
);


CREATE TABLE T_JOINED_MEMBER (
   USER_NO   NUMBER      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   REG_DATE   DATE      NOT NULL,
   REG_STATUS   VARCHAR(1)      NOT NULL
);


CREATE TABLE T_MEMBER (
   USER_NO   NUMBER      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   T_GRADE   NUMBER      NOT NULL
);


CREATE TABLE POSITION (
   USER_NO   NUMBER      NOT NULL,
   POSITION   VARCHAR2(5)      NOT NULL
);


CREATE TABLE MATCHING (
   MID   NUMBER      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   M_TITLE   VARCHAR2(100)      NOT NULL,
   M_CONTENTS   VARCHAR2(1000)      NOT NULL,
   M_SYSTEM   VARCHAR2(50)      NOT NULL,
   DUES   VARCHAR2(30)   DEFAULT '0'   NULL,
   M_DAY   DATE      NOT NULL,
   M_TIME   DATE      NOT NULL,
   LOCATION   VARCHAR2(100)      NOT NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   M_STATUS   VARCHAR2(5)   DEFAULT 'Y'   NOT NULL
);

CREATE TABLE APP_MATCHING (
   AMID   NUMBER      NOT NULL,
   TEAM_NO   NUMBER      NOT NULL,
   MID   NUMBER      NOT NULL,
   APP_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   AM_STATUS   VARCHAR2(5)   DEFAULT 'Y'   NOT NULL
);


CREATE TABLE P_ENROLL (
   E_NUM   NUMBER      NOT NULL,
   USER_NO2   NUMBER      NOT NULL,
   E_PLACE   VARCHAR(30)      NOT NULL,
   E_DAY   VARCHAR(20)      NOT NULL,
   E_CONTENT   VARCHAR(1000)      NULL,
   E_STATUS   VARCHAR(1)   DEFAULT 'N'   NOT NULL
);

ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
   USER_NO
);

ALTER TABLE P_RECRUIT ADD CONSTRAINT PK_P_RECRUIT PRIMARY KEY (
   R_NUM
);

ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
   NID
);

ALTER TABLE BOARD ADD CONSTRAINT PK_BOARD PRIMARY KEY (
   BID
);

ALTER TABLE REPLY ADD CONSTRAINT PK_REPLY PRIMARY KEY (
   RID
);

ALTER TABLE ATTACH ADD CONSTRAINT PK_ATTACH PRIMARY KEY (
   FID
);

ALTER TABLE CATAGORY ADD CONSTRAINT PK_CATAGORY PRIMARY KEY (
   CID
);

ALTER TABLE TEAM ADD CONSTRAINT PK_TEAM PRIMARY KEY (
   TEAM_NO,
   USER_NO
);

ALTER TABLE POSITION ADD CONSTRAINT PK_POSITION PRIMARY KEY (
   USER_NO
);

ALTER TABLE MATCHING ADD CONSTRAINT PK_MATCHING PRIMARY KEY (
   MID
);

ALTER TABLE APP_MATCHING ADD CONSTRAINT PK_APP_MATCHING PRIMARY KEY (
   AMID
);

ALTER TABLE P_ENROLL ADD CONSTRAINT PK_P_ENROLL PRIMARY KEY (
   E_NUM
);

ALTER TABLE TEAM ADD CONSTRAINT FK_MEMBER_TO_TEAM_1 FOREIGN KEY (
   USER_NO
)
REFERENCES MEMBER (
   USER_NO
);

ALTER TABLE POSITION ADD CONSTRAINT FK_MEMBER_TO_POSITION_1 FOREIGN KEY (
   USER_NO
)
REFERENCES MEMBER (
   USER_NO
);










---------------------------시퀀스-------------------------------------
-- 강현모 --
DROP SEQUENCE SEQ_MID;
CREATE SEQUENCE SEQ_MID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;                         
DROP SEQUENCE SEQ_AMID;
CREATE SEQUENCE SEQ_AMID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;

-- 배성용 --
DROP SEQUENCE SEQ_NID;
CREATE SEQUENCE SEQ_NID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;
DROP SEQUENCE SEQ_BID;
CREATE SEQUENCE SEQ_BID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;
DROP SEQUENCE SEQ_FID;
CREATE SEQUENCE SEQ_FID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;
DROP SEQUENCE SEQ_RID;
CREATE SEQUENCE SEQ_RID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;

-- 서재웅 -- 
DROP SEQUENCE SEQ_P_EN;
CREATE SEQUENCE SEQ_p_EN INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE;
DROP SEQUENCE SEQ_P_RE;
CREATE SEQUENCE SEQ_p_RE INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE; 

-- 안효찬 -- 
DROP SEQUENCE SEQ_TID;
CREATE SEQUENCE SEQ_TID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE; 

-- 이성호 --
DROP SEQUENCE SEQ_UID;
CREATE SEQUENCE SEQ_UID INCREMENT BY 1 START WITH 1 MAXVALUE 9999 MINVALUE 1 NOCYCLE NOCACHE; 