;             
CREATE USER IF NOT EXISTS "SA" SALT '72a48966e7b926a5' HASH 'e12f5286dd03dd4041e663b0328c668d397d815df0d8b3d9e47b9d3b7b52ad43' ADMIN;         
CREATE SEQUENCE "PUBLIC"."HIBERNATE_SEQUENCE" START WITH 109; 
CREATE CACHED TABLE "PUBLIC"."FORMATION"(
    "ID" BIGINT NOT NULL,
    "NAME" VARCHAR(255)
);             
ALTER TABLE "PUBLIC"."FORMATION" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_1" PRIMARY KEY("ID");    
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.FORMATION;               
INSERT INTO "PUBLIC"."FORMATION" VALUES
(1, '1-2-1'),
(2, '2-1-1');         
CREATE CACHED TABLE "PUBLIC"."MATCH"(
    "DTYPE" VARCHAR(31) NOT NULL,
    "ID" BIGINT NOT NULL,
    "CURRENT_MINUTE" INTEGER NOT NULL,
    "RESULT" VARCHAR(255),
    "STATISTIC" VARCHAR(255),
    "AWAY_TEAM_ID" BIGINT,
    "HOME_TEAM_ID" BIGINT
);             
ALTER TABLE "PUBLIC"."MATCH" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");        
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.MATCH;  
INSERT INTO "PUBLIC"."MATCH" VALUES
('FriendlyMatch', 58, 30, '3:2', 'Match started', 1, 2),
('FriendlyMatch', 59, 30, '0:1', 'Match started', 2, 1),
('FriendlyMatch', 60, 30, '1:0', 'Match started', 2, 1),
('FriendlyMatch', 61, 30, '2:1', 'Match started', 2, 1),
('FriendlyMatch', 62, 30, '1:0', 'Match started', 2, 1),
('FriendlyMatch', 63, 30, '0:0', 'Match started', 1, 2),
('FriendlyMatch', 65, 30, '4:4', 'Match started', 5, 1),
('FriendlyMatch', 73, 30, '6:3', 'Match started', 1, 5),
('FriendlyMatch', 90, 30, '6:2', 'Match started', 1, 5),
('FriendlyMatch', 103, 30, '2:3', 'Match started', 1, 4);      
CREATE CACHED TABLE "PUBLIC"."PLAYER"(
    "ID" BIGINT NOT NULL,
    "PLAYER_ADDITIONAL_INFO_ID" BIGINT,
    "PLAYER_PERSONAL_INFO_ID" BIGINT,
    "PLAYER_POSITION_INFO_ID" BIGINT,
    "PLAYER_TEAM_INFO_ID" BIGINT
);
ALTER TABLE "PUBLIC"."PLAYER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("ID");       
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER; 
INSERT INTO "PUBLIC"."PLAYER" VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 6),
(7, 7, 7, 7, 7),
(8, 8, 8, 8, 8),
(9, 9, 9, 9, 9),
(10, 10, 10, 10, 10),
(11, 11, 11, 11, 11),
(12, 12, 12, 12, 12),
(13, 13, 13, 13, 13),
(14, 14, 14, 14, 14),
(15, 15, 15, 15, 15),
(16, 16, 16, 16, 16),
(17, 17, 17, 17, 17),
(18, 18, 18, 18, 18),
(19, 19, 19, 19, 19),
(20, 20, 20, 20, 20);           
CREATE CACHED TABLE "PUBLIC"."PLAYER_ADDITIONAL_INFO"(
    "ID" BIGINT NOT NULL,
    "PRICE" DOUBLE NOT NULL,
    "PLAYER_STATS_ID" BIGINT
);             
ALTER TABLE "PUBLIC"."PLAYER_ADDITIONAL_INFO" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D" PRIMARY KEY("ID");       
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER_ADDITIONAL_INFO; 
INSERT INTO "PUBLIC"."PLAYER_ADDITIONAL_INFO" VALUES
(1, 150.0, 1),
(2, 150.0, 2),
(3, 150.0, 3),
(4, 150.0, 4),
(5, 150.0, 5),
(6, 150.0, 6),
(7, 150.0, 7),
(8, 150.0, 8),
(9, 150.0, 9),
(10, 150.0, 10),
(11, 150.0, 11),
(12, 150.0, 12),
(13, 150.0, 13),
(14, 150.0, 14),
(15, 150.0, 15),
(16, 150.0, 16),
(17, 150.0, 17),
(18, 150.0, 18),
(19, 150.0, 19),
(20, 150.0, 20);    
CREATE CACHED TABLE "PUBLIC"."PLAYER_PERSONAL_INFO"(
    "ID" BIGINT NOT NULL,
    "DOB" DATE,
    "FIRST_NAME" VARCHAR(255),
    "LAST_NAME" VARCHAR(255)
);            
ALTER TABLE "PUBLIC"."PLAYER_PERSONAL_INFO" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A" PRIMARY KEY("ID");         
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER_PERSONAL_INFO;   
INSERT INTO "PUBLIC"."PLAYER_PERSONAL_INFO" VALUES
(1, DATE '1997-05-15', 'Javi', 'Diaz'),
(2, DATE '2001-03-11', 'Andres', 'Dumitrescu'),
(3, DATE '1993-09-04', 'Ross', 'Callachan'),
(4, DATE '2003-04-21', 'Xavi', 'Simons'),
(5, DATE '2000-01-01', 'Florian', 'Sotoca'),
(6, DATE '1997-05-15', 'Ilias', 'Karagyris'),
(7, DATE '2001-03-11', 'Mateo', 'Gabbia'),
(8, DATE '1993-09-04', 'Arthur', 'Read'),
(9, DATE '2003-04-21', 'Leonardo', 'Colluchi'),
(10, DATE '2000-01-01', 'Liam', 'Cullen'),
(11, DATE '1988-06-28', 'Nikolay', 'Mihaylov'),
(12, DATE '1995-02-10', 'Gjoko', 'Zajkov'),
(13, DATE '1991-08-22', 'Dragan', 'Mihajlovic'),
(14, DATE '1990-01-01', 'Georgi', 'Milanov'),
(15, DATE '1990-01-01', 'Valeri', 'Bojinov'),
(16, DATE '1990-01-01', 'Plamen', 'Andreev'),
(17, DATE '1990-01-01', 'Ivan', 'Goranov'),
(18, DATE '1990-01-01', 'Borislav', 'Tonev'),
(19, DATE '1990-01-01', 'Simeon', 'Slavchev'),
(20, DATE '1990-01-01', 'Martin', 'Petkov'); 
CREATE CACHED TABLE "PUBLIC"."PLAYER_POSITION_INFO"(
    "ID" BIGINT NOT NULL,
    "IS_STARTING" BOOLEAN NOT NULL,
    "CURRENT_POSITION_ID" BIGINT,
    "DEFAULT_POSITION_ID" BIGINT
); 
ALTER TABLE "PUBLIC"."PLAYER_POSITION_INFO" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C" PRIMARY KEY("ID");         
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER_POSITION_INFO;   
INSERT INTO "PUBLIC"."PLAYER_POSITION_INFO" VALUES
(1, TRUE, 10, 10),
(2, TRUE, 8, 8),
(3, TRUE, 4, 5),
(4, TRUE, 6, 5),
(5, TRUE, 2, 2),
(6, FALSE, 11, 10),
(7, FALSE, 12, 8),
(8, FALSE, 13, 5),
(9, FALSE, 14, 5),
(10, FALSE, 15, 2),
(11, TRUE, 10, 10),
(12, TRUE, 7, 7),
(13, TRUE, 9, 9),
(14, TRUE, 5, 5),
(15, TRUE, 2, 2),
(16, FALSE, 11, 10),
(17, FALSE, 12, 8),
(18, FALSE, 13, 5),
(19, FALSE, 14, 5),
(20, FALSE, 15, 2);               
CREATE CACHED TABLE "PUBLIC"."PLAYER_TEAM_INFO"(
    "ID" BIGINT NOT NULL,
    "KIT_NR" INTEGER NOT NULL,
    "TEAM_ID" BIGINT
);         
ALTER TABLE "PUBLIC"."PLAYER_TEAM_INFO" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7" PRIMARY KEY("ID");             
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER_TEAM_INFO;       
INSERT INTO "PUBLIC"."PLAYER_TEAM_INFO" VALUES
(1, 1, 1),
(2, 2, 1),
(3, 6, 1),
(4, 10, 1),
(5, 9, 1),
(6, 20, 1),
(7, 35, 1),
(8, 15, 1),
(9, 13, 1),
(10, 14, 1),
(11, 1, 5),
(12, 2, 5),
(13, 3, 5),
(14, 8, 5),
(15, 9, 5),
(16, 20, 5),
(17, 4, 5),
(18, 6, 5),
(19, 15, 5),
(20, 10, 5);            
CREATE CACHED TABLE "PUBLIC"."PLAYER_STATS"(
    "ID" BIGINT NOT NULL,
    "PHYSICAL" INTEGER NOT NULL,
    "SKILLS" INTEGER NOT NULL
);  
ALTER TABLE "PUBLIC"."PLAYER_STATS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C6" PRIMARY KEY("ID");
-- 20 +/- SELECT COUNT(*) FROM PUBLIC.PLAYER_STATS;           
INSERT INTO "PUBLIC"."PLAYER_STATS" VALUES
(1, 65, 65),
(2, 60, 60),
(3, 64, 64),
(4, 65, 65),
(5, 72, 72),
(6, 65, 65),
(7, 60, 60),
(8, 64, 64),
(9, 65, 65),
(10, 64, 64),
(11, 66, 66),
(12, 64, 64),
(13, 61, 61),
(14, 67, 67),
(15, 60, 60),
(16, 50, 50),
(17, 66, 66),
(18, 65, 65),
(19, 66, 66),
(20, 58, 58); 
CREATE CACHED TABLE "PUBLIC"."POSITION"(
    "ID" BIGINT NOT NULL,
    "CATEGORY" VARCHAR(255),
    "NAME" VARCHAR(255)
);
ALTER TABLE "PUBLIC"."POSITION" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5" PRIMARY KEY("ID");     
-- 15 +/- SELECT COUNT(*) FROM PUBLIC.POSITION;               
INSERT INTO "PUBLIC"."POSITION" VALUES
(1, 'ATACK', 'LW'),
(2, 'ATACK', 'ST'),
(3, 'ATACK', 'RW'),
(4, 'MID', 'LM'),
(5, 'MID', 'CM'),
(6, 'MID', 'RM'),
(7, 'DEF', 'LB'),
(8, 'DEF', 'CB'),
(9, 'DEF', 'RB'),
(10, 'GK', 'GK'),
(11, 'SUB', 'SUB1'),
(12, 'SUB', 'SUB2'),
(13, 'SUB', 'SUB3'),
(14, 'SUB', 'SUB4'),
(15, 'SUB', 'SUB5');      
CREATE CACHED TABLE "PUBLIC"."TEAM"(
    "DTYPE" VARCHAR(31) NOT NULL,
    "ID" BIGINT NOT NULL,
    "NAME" VARCHAR(255),
    "MANAGER_NAME" VARCHAR(255),
    "FORMATION_ID" BIGINT,
    "USER_ID" BIGINT
);          
ALTER TABLE "PUBLIC"."TEAM" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("ID");         
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.TEAM;    
INSERT INTO "PUBLIC"."TEAM" VALUES
('CustomTeam', 1, 'Real Madrid-Pro', 'null', 1, 2),
('OfficialTeam', 2, 'Barcelona', 'Ronald Koeman', 2, NULL),
('OfficialTeam', 3, 'Sevilla', 'Julen Lopetegui', 2, NULL),
('OfficialTeam', 4, 'Juventus', 'Massimiliano Allegri', 2, NULL),
('OfficialTeam', 5, 'Levski', 'Stanimir Stoilov', 2, NULL);             
CREATE CACHED TABLE "PUBLIC"."USER"(
    "ID" BIGINT NOT NULL,
    "EMAIL" VARCHAR(255),
    "FIRST_NAME" VARCHAR(255),
    "LAST_NAME" VARCHAR(255),
    "NICKNAME" VARCHAR(255),
    "PASSWORD" VARCHAR(255),
    "POINTS" INTEGER,
    "ROLE" VARCHAR(255)
);     
ALTER TABLE "PUBLIC"."USER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_27" PRIMARY KEY("ID");        
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.USER;    
INSERT INTO "PUBLIC"."USER" VALUES
(2, 'erick@gmail.com', 'Erick', 'Garcia', 'Erick12', '$2a$10$lXHyyxKTH8XibnD8B5nZqO1Abhgm2wE6r/qw5z.PwyG39pXjuCqv.', 0, 'USER'),
(6, 'john@gmail.com', 'John', 'Bardon', 'John_01', '$2a$10$kVDE29HINq.w.K/PQIS9xOre5Gq725K6seI0tBmiHjx5k5oARSuBi', NULL, 'ADMIN'),
(66, 'test@gmail.com', 'Test', 'Test', 'Test_01', '$2a$10$5fRyhrT0gvCgzhIgGGhliuq4aIOoGHvQzTy6u3Ux8rwhSa9i7RwGm', NULL, 'USER'),
(102, 'hello@gmail.com', 'Kirian', 'Black', 'Kiki', '$2a$10$BIlPKty9ewz.uJQ3zA5MU.1Jl5iuZCCF0mOejVtECNkbCHGUZFV8y', NULL, 'USER'),
(104, 'bobby@gmail.com', 'Borislav', 'Georgiev', 'Bobby', '$2a$10$HFTETS4O0hXm0MKzocx0I.yAweocsoVmMcd3mXSN7cp4KuvMNybum', NULL, 'USER');      
CREATE CACHED TABLE "PUBLIC"."NEWS"(
    "ID" BIGINT NOT NULL,
    "CONTENT" VARCHAR(255),
    "TITLE" VARCHAR(255)
);    
ALTER TABLE "PUBLIC"."NEWS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_24" PRIMARY KEY("ID");        
-- 10 +/- SELECT COUNT(*) FROM PUBLIC.NEWS;   
INSERT INTO "PUBLIC"."NEWS" VALUES
(30, 'ksl;adkasl;dsakdaskdalsdkaldkasdlasdkadklakdal;dadlakdl;sakdalsdkal;daskdal;dkdka;dkadl;askdl;sdkal;dkalskdl;sakl;sdksal;dksa', 'Soccer news'),
(31, STRINGDECODE('Blabla jljdjskjskffdjdklsfjdskfjsdkfjs\nnklsdndsfsdkfsdjfsjdkf\njflkdsjfkdjfdsklfjdsfjdsfksdfjksdfkjsdfskfjlk'), 'Soccer win'),
(32, STRINGDECODE('jdksdjkdjkasdkadsakldasjda\njdaksdjskdsajdksad\njdkasdjsakld'), 'Antyhing interesting'),
(33, 'Some text', 'Test 1'),
(34, 'dnksdajk', 'New soccer news'),
(39, 'Some text', 'Hello'),
(53, 'Hello from the other side', 'Hello'),
(64, 'With 2 scores in the second half', 'Man United wins Champions league'),
(89, 'New content', 'New soccer news'),
(105, 'Sevilla wins the first place the League Europe group stage', 'Win for Sevilla');     
ALTER TABLE "PUBLIC"."PLAYER" ADD CONSTRAINT "PUBLIC"."FK4DARSDDTOIVBQWW53FMQHLKVY" FOREIGN KEY("PLAYER_PERSONAL_INFO_ID") REFERENCES "PUBLIC"."PLAYER_PERSONAL_INFO"("ID") NOCHECK;          
ALTER TABLE "PUBLIC"."PLAYER" ADD CONSTRAINT "PUBLIC"."FKMAR57XMW26NDYONC3TJJMCJF1" FOREIGN KEY("PLAYER_POSITION_INFO_ID") REFERENCES "PUBLIC"."PLAYER_POSITION_INFO"("ID") NOCHECK;          
ALTER TABLE "PUBLIC"."TEAM" ADD CONSTRAINT "PUBLIC"."FKGLNNJIYXQ9HAGO1IGLX41TA9Y" FOREIGN KEY("FORMATION_ID") REFERENCES "PUBLIC"."FORMATION"("ID") NOCHECK;  
ALTER TABLE "PUBLIC"."PLAYER_POSITION_INFO" ADD CONSTRAINT "PUBLIC"."FKSUD4G6O1FRC756X9VCW6NOIVH" FOREIGN KEY("DEFAULT_POSITION_ID") REFERENCES "PUBLIC"."POSITION"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."PLAYER" ADD CONSTRAINT "PUBLIC"."FK5Q5KJ2JJH6K64NMLHWL345V4Y" FOREIGN KEY("PLAYER_TEAM_INFO_ID") REFERENCES "PUBLIC"."PLAYER_TEAM_INFO"("ID") NOCHECK;  
ALTER TABLE "PUBLIC"."PLAYER_ADDITIONAL_INFO" ADD CONSTRAINT "PUBLIC"."FK6HC1PT6OWWC5BB1GTLV24O2X5" FOREIGN KEY("PLAYER_STATS_ID") REFERENCES "PUBLIC"."PLAYER_STATS"("ID") NOCHECK;          
ALTER TABLE "PUBLIC"."PLAYER" ADD CONSTRAINT "PUBLIC"."FK6NBJTT666KAYF792MF70MNA86" FOREIGN KEY("PLAYER_ADDITIONAL_INFO_ID") REFERENCES "PUBLIC"."PLAYER_ADDITIONAL_INFO"("ID") NOCHECK;      
ALTER TABLE "PUBLIC"."MATCH" ADD CONSTRAINT "PUBLIC"."FK6IHEFB9R7F0FCM0XUVES72B2L" FOREIGN KEY("HOME_TEAM_ID") REFERENCES "PUBLIC"."TEAM"("ID") NOCHECK;      
ALTER TABLE "PUBLIC"."TEAM" ADD CONSTRAINT "PUBLIC"."FK7AB8B9M84SK9VVPMRN6B6TPJK" FOREIGN KEY("USER_ID") REFERENCES "PUBLIC"."USER"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."MATCH" ADD CONSTRAINT "PUBLIC"."FKSYJOR2ANX7BKBST7EBYW13JCS" FOREIGN KEY("AWAY_TEAM_ID") REFERENCES "PUBLIC"."TEAM"("ID") NOCHECK;      
ALTER TABLE "PUBLIC"."PLAYER_POSITION_INFO" ADD CONSTRAINT "PUBLIC"."FK7OSVBE0UTWHQ0F9SV35H0PGRG" FOREIGN KEY("CURRENT_POSITION_ID") REFERENCES "PUBLIC"."POSITION"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."PLAYER_TEAM_INFO" ADD CONSTRAINT "PUBLIC"."FK74VISYBQF1X5SLOTO86OQ4IMI" FOREIGN KEY("TEAM_ID") REFERENCES "PUBLIC"."TEAM"("ID") NOCHECK;