CREATE DATABASE lv_safety_verification;
use lv_safety_verification;

--------> Country Table with insert queries <------------

CREATE TABLE country_table (
			COUNTRY_ID INTEGER NOT NULL, 
			NAME VARCHAR(255), 
			CODE VARCHAR(255), 
			CONSTRAINT PK_COUNTRY_ID PRIMARY KEY(COUNTRY_ID)
);

			INSERT INTO country_table VALUES (1, 'INDIA', 'IND');
			INSERT INTO country_table VALUES (2, 'UNITED STATES OF AMERICA', 'USA');
			INSERT INTO country_table VALUES (3, 'BANGLADESH', 'BGL');
			INSERT INTO country_table VALUES (4, 'SRILANKA', 'SRI');
			INSERT INTO country_table VALUES (5, 'UNITED KINGDOM', 'UK');
			INSERT INTO country_table VALUES (6, 'PAKISTAN', 'PAK');
			INSERT INTO country_table VALUES (7, 'AFGANISTAN', 'AFG');
			INSERT INTO country_table VALUES (8, 'MALDIVES', 'MDV');
			INSERT INTO country_table VALUES (9, 'UNITED ARAB EMIRATES', 'UAE');
			INSERT INTO country_table VALUES (10, 'CHINA', 'CHN');
			INSERT INTO country_table VALUES (11, 'SINGAPORE', 'SGP');
			INSERT INTO country_table VALUES (12, 'THAILAND', 'THL');
			INSERT INTO country_table VALUES (13, 'AUSTRALIA', 'AUS');
			INSERT INTO country_table VALUES (14, 'NEW ZEALAND', 'NZL');
			INSERT INTO country_table VALUES (15, 'JAPAN', 'JPN');
			INSERT INTO country_table VALUES (16, 'INDONESIA', 'INA');
			INSERT INTO country_table VALUES (17, 'MALAYSIA', 'MLY');
			INSERT INTO country_table VALUES (18, 'GERMANY', 'GNY');
			INSERT INTO country_table VALUES (19, 'FRANCE', 'FRN');
			INSERT INTO country_table VALUES (20, 'RUSSIA', 'RUS');
			INSERT INTO country_table VALUES (21, 'NEPAL', 'NPL');

--------> State Table with insert queries <------------

CREATE TABLE state_table (
			STATE_ID INT NOT NULL, 
			COUNTRY_ID INT, 
			NAME VARCHAR(255), 
			CODE VARCHAR(255),
			CONSTRAINT PK_STATE_ID PRIMARY KEY(STATE_ID),
			CONSTRAINT FK_COUNTRY_ID FOREIGN KEY (COUNTRY_ID) REFERENCES country_table(COUNTRY_ID) ON DELETE CASCADE
);

			INSERT INTO state_table VALUES (1,1,'Tamil Nadu','TN');
			INSERT INTO state_table VALUES (2,1,'Andhra Pradesh','AP');
			INSERT INTO state_table VALUES (3,1,'Telengana','TS');
			INSERT INTO state_table VALUES (4,1,'Karnataka','KA');
			INSERT INTO state_table VALUES (5,1,'Kerala','KL');
			INSERT INTO state_table VALUES (6,1,'Odisha','OR');
			INSERT INTO state_table VALUES (7,1,'Maharastra','MH');
			INSERT INTO state_table VALUES (8,1,'Madhya Pradesh','MP');
			INSERT INTO state_table VALUES (9,1,'Chattisgarh','CG');
			INSERT INTO state_table VALUES (10,1,'Jharkand','JD');
			INSERT INTO state_table VALUES (11,1,'Bihar','BH');
			INSERT INTO state_table VALUES (12,1,'Uttar Pradesh','UP');
			INSERT INTO state_table VALUES (13,1,'Gujarat','GU');
			INSERT INTO state_table VALUES (14,1,'Rajasthan','RJ');
			INSERT INTO state_table VALUES (15,1,'Punjab','PB');
			INSERT INTO state_table VALUES (16,1,'Haryana','HR');
			INSERT INTO state_table VALUES (17,1,'Uttarkhand','UT');
			INSERT INTO state_table VALUES (18,1,'Sikkim','SK');
			INSERT INTO state_table VALUES (19,1,'West Bengal','WB');
			INSERT INTO state_table VALUES (20,1,'Assam','AS');
			INSERT INTO state_table VALUES (21,1,'Arunachal Pradesh','AR');
			INSERT INTO state_table VALUES (22,1,'Nagaland','NG');
			INSERT INTO state_table VALUES (23,1,'Tripura','TP');
			INSERT INTO state_table VALUES (24,1,'Meghalaya','MG');
			INSERT INTO state_table VALUES (25,1,'Mizoram','MZ');
			INSERT INTO state_table VALUES (26,1,'Manipur','GU');
			INSERT INTO state_table VALUES (27,1,'Goa','GA');
			INSERT INTO STATE_TABLE VALUES (28,2,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (29,21,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (30,3,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (31,4,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (32,5,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (33,6,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (34,7,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (35,8,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (36,9,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (37,10,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (38,11,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (39,12,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (40,13,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (41,14,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (42,15,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (43,16,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (44,17,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (45,18,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (46,19,'Others','OT');
            INSERT INTO STATE_TABLE VALUES (47,20,'Others','OT');
			INSERT INTO state_table VALUES (48,1,'NewDelhi','DE');
			INSERT INTO state_table VALUES (49,1,'Puducherry','PO');
			INSERT INTO state_table VALUES (50,1,'Daman and Diu','DA');
			INSERT INTO state_table VALUES (51,1,'Dadra and Nagar Haveli','DN');
			INSERT INTO state_table VALUES (52,1,'Himachal Pradesh','HP');
			INSERT INTO state_table VALUES (53,1,'Jammu and Kashmir','JK');
			INSERT INTO state_table VALUES (54,1,'Ladakh','LH');
			INSERT INTO state_table VALUES (55,1,'Chandigarh','CH');
			INSERT INTO state_table VALUES (56,1,'Lakshadeep','LK');
			
			
			
			

--------> Applicationtypes Table with insert queries <------------

CREATE TABLE applicationtypes(
			ID INTEGER NOT NULL, 
			APPLICATION VARCHAR(255), 
			CODE VARCHAR(20), 
			PRIMARY KEY(ID),
			APPLICATION_NAME VARCHAR(10)

);

			INSERT INTO APPLICATIONTYPES VALUES  (1,'Verification Of LV Systems (IEC 60364-6)', 'LV Systems','LV');
			INSERT INTO APPLICATIONTYPES VALUES  (2,'Verification Of HV Systems (up to 33 kV) (IEC 61936-1)', 'HV Systems','HV');
			INSERT INTO APPLICATIONTYPES VALUES  (3,'Lightning Protection Conformity Assessment, Risk Assessment, Inspection And Maintenance (IEC 62305-3 & 4)', 'Risk Assessment', 'RIA');
			INSERT INTO APPLICATIONTYPES VALUES  (4,'EMC Assessment Of An Installation (IEC 61000-5-1)', 'EMC Assessment','EMC');
			INSERT INTO APPLICATIONTYPES VALUES  (5,'Failure Analysis Of Electronic Systems', 'Failure Analysis','FAS');
			INSERT INTO APPLICATIONTYPES VALUES  (6,'Conformity And Project Analysis', 'Conformity Project','CPA');
		    INSERT INTO APPLICATIONTYPES VALUES  (7,'Testing Inspection and Certification of Lightning protection system', 'LPS Systems', 'LPS');

		 
 -----------> Registration <----------

CREATE TABLE register_table (

		    REGISTER_ID INT AUTO_INCREMENT,
			NAME VARCHAR(225),
 			COMPANY_NAME VARCHAR(225),
			USER_NAME VARCHAR(225),
			PASSWORD VARCHAR(225),
			ROLE VARCHAR(225),
			CONTACT_NUMBER VARCHAR(225),
			APPLICATION_TYPE VARCHAR(225),
			DEPARTMENT VARCHAR(225),
			DESIGNATION VARCHAR(225),
			ADDRESS VARCHAR(500),
			DISTRICT VARCHAR(225),
			COUNTRY VARCHAR(225),
			PINCODE  VARCHAR(225),
			STATE  VARCHAR(225),
			PERMISSION  VARCHAR(225),
			PERMISSION_BY  VARCHAR(225),
			COMMENT  VARCHAR(500),
			OTP_SESSION_KEY VARCHAR(255),
			ASSIGNED_BY VARCHAR(255),
			NO_OF_LICENCE VARCHAR(255),
			SITE_NAME VARCHAR(255) NULL,
			MOB_NUM_UPDATE datetime,   
			CREATED_BY VARCHAR(255) NOT NULL,
			UPDATED_BY VARCHAR(255) NOT NULL,
			CREATED_DATE datetime NOT NULL,    
			UPDATED_DATE datetime NOT NULL,			
            CONSTRAINT PK_REGISTER_ID PRIMARY KEY(REGISTER_ID)
   
);
	
-----------> Licence Table <----------
	CREATE TABLE licence_table(
			LICENCE_ID INT;
			LV_NO_OF_LICENCE VARCHAR(225);
			LPS_NO_OF_LICENCE VARCHAR(225);
			RISK_NO_OF_LICENCE VARCHAR(225);
			EMC_NO_OF_LICENCE VARCHAR(225);
			USERNAME VARCHAR(225);
	
);

-----------> Refresh Token <----------
	CREATE TABLE refresh_token(
			ID BIGINT AUTO_INCREMENT,
			TOKEN VARCHAR(255) NOT NULL,
			CREATED_DATE datetime NOT NULL,
			CONSTRAINT PK_ID PRIMARY KEY(ID)
			
);
 
	