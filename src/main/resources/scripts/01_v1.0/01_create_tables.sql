
CREATE TABLE USER_DETAILS 
   (	"ID" NUMBER(20,0) NOT NULL ENABLE, 
	"BIRTH_DATE" DATE, 
	"NAME" VARCHAR2(255), 
	PRIMARY KEY ("ID")
  );

CREATE TABLE POST 
   (	
    "ID" NUMBER(20,0) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(255), 
	"USER_ID" NUMBER(20,0), 
	 PRIMARY KEY ("ID"),
	 CONSTRAINT "POST_FK1"
	  FOREIGN KEY ("USER_ID")
	  REFERENCES "USER_DETAILS" ("ID")
   );
   
    CREATE TABLE LOGIN_USERS 
   (	"USERNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(200) NOT NULL ENABLE, 
	"ENABLED" NUMBER(1,0) NOT NULL ENABLE, 
	 PRIMARY KEY ("USERNAME")
   );
   
     CREATE TABLE AUTHORITIES 
   (	"USERNAME" VARCHAR2(50), 
		"AUTHORITY" VARCHAR2(20), 
	 	CONSTRAINT "AUTHORITIES_FK1" 
	 	FOREIGN KEY ("USERNAME")
	  	REFERENCES "LOGIN_USERS" ("USERNAME")
   );



Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2001,to_date('01-FEB-72','DD-MON-RR'),'Muralidhar Polepally');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2002,to_date('07-JUL-77','DD-MON-RR'),'Vanitha Polepally');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2003,to_date('10-JUL-03','DD-MON-RR'),'Tarini Polepally');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2004,to_date('05-DEC-06','DD-MON-RR'),'Vishal Polepally');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2005,to_date('05-DEC-06','DD-MON-RR'),'Vishal Polepally');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2006,to_date('05-DEC-06','DD-MON-RR'),'Vasantha Cheruku');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2007,to_date('05-DEC-06','DD-MON-RR'),'Rama Priya');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2008,to_date('05-DEC-06','DD-MON-RR'),'Aruna AieReddy');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2009,to_date('05-DEC-01','DD-MON-RR'),'Sanjana AieReddy');
Insert into USER_DETAILS (ID,BIRTH_DATE,NAME) values (2010,to_date('09-OCT-00','DD-MON-RR'),'Ree');

Insert into POST (ID,DESCRIPTION,USER_ID) values (1001,'Hello1',2001);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1002,'Hello2',2002);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1003,'Hello3',2003);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1004,'Hello4',2004);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1005,'Hello5',2005);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1006,'Hello6',2006);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1007,'Hello7',2007);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1008,'Hello8',2008);
Insert into POST (ID,DESCRIPTION,USER_ID) values (1009,'Hello9',2009);


Insert into LOGIN_USERS (USERNAME,PASSWORD,ENABLED) values ('admin','$2a$10$hbxecwitQQ.dDT4JOFzQAulNySFwEpaFLw38jda6Td.Y/cOiRzDFu',1);
Insert into AUTHORITIES (USERNAME,AUTHORITY) values ('admin','ROLE_ADMIN');



commit;