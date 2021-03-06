
INSERT INTO NEWS (ID, CONTENT, TITLE) VALUES (50, 'Some text', 'News1');

-- Formations
INSERT INTO FORMATION (ID, NAME) VALUES (1, '1-2-1');
INSERT INTO FORMATION (ID, NAME) VALUES (2, '2-1-1');

-- Users
INSERT INTO USER (ID, EMAIL, FIRST_NAME, LAST_NAME, NICKNAME, PASSWORD, ROLE) VALUES (116, 'erick@gmail.com', 'Erick', 'Garcia', 'Erick12', '$2a$10$jSFQHtQSzxYEs2ATawxMueRmDUmex7EQ.Vu9H846i2xBu7NdHlds6', 'USER');
INSERT INTO USER (ID, EMAIL, FIRST_NAME, LAST_NAME, NICKNAME, PASSWORD, ROLE) VALUES (1, 'john@gmail.com', 'John', 'Bradley', 'Johny', '$2a$10$0O52JJAO9PeNATKzYV4dvOHhTNvN5UzAhjNBSS8MwvGqNTxHldPbK', 'ADMIN');


-- Teams
INSERT INTO TEAM (DTYPE, ID, NAME, MANAGER_NAME, FORMATION_ID, USER_ID) VALUES ('CustomTeam', 1, 'Real Madrid-Pro', null, 1, 116);
INSERT INTO TEAM (DTYPE, ID, NAME, MANAGER_NAME, FORMATION_ID, USER_ID) VALUES ('OfficialTeam', 2, 'Barcelona', 'Ronald Koeman', 2, null);
INSERT INTO TEAM (DTYPE, ID, NAME, MANAGER_NAME, FORMATION_ID, USER_ID) VALUES ('OfficialTeam', 3, 'Sevilla', 'Julen Lopetegui', 2, null);
INSERT INTO TEAM (DTYPE, ID, NAME, MANAGER_NAME, FORMATION_ID, USER_ID) VALUES ('OfficialTeam', 4, 'Juventus', 'Massimiliano Allegri', 2, null);
INSERT INTO TEAM (DTYPE, ID, NAME, MANAGER_NAME, FORMATION_ID, USER_ID) VALUES ('OfficialTeam', 5, 'Levski', 'Stanimir Stoilov', 2, null);

-- Players personal info
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (1, '1997-05-15', 'Javi', 'Diaz');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (2, '2001-03-11', 'Andres', 'Dumitrescu');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (3, '1993-09-04', 'Ross', 'Callachan');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (4, '2003-04-21', 'Xavi', 'Simons');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (5, '2000-01-01', 'Florian', 'Sotoca');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (6, '1997-05-15', 'Ilias', 'Karagyris');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (7, '2001-03-11', 'Mateo', 'Gabbia');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (8, '1993-09-04', 'Arthur', 'Read');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (9, '2003-04-21', 'Leonardo', 'Colluchi');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (10, '2000-01-01', 'Liam', 'Cullen');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (11, '1988-06-28', 'Nikolay', 'Mihaylov');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (12, '1995-02-10', 'Gjoko', 'Zajkov');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (13, '1991-08-22', 'Dragan', 'Mihajlovic');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (14, '1990-01-01', 'Georgi', 'Milanov');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (15, '1990-01-01', 'Valeri', 'Bojinov');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (16, '1990-01-01', 'Plamen', 'Andreev');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (17, '1990-01-01', 'Ivan', 'Goranov');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (18, '1990-01-01', 'Borislav', 'Tonev');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (19, '1990-01-01', 'Simeon', 'Slavchev');
INSERT INTO PLAYER_PERSONAL_INFO (ID, DOB, FIRST_NAME, LAST_NAME) VALUES (20, '1990-01-01', 'Martin', 'Petkov');

-- Positions
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (1, 'ATACK', 'LW');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (2, 'ATACK', 'ST');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (3, 'ATACK', 'RW');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (4, 'MID', 'LM');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (5, 'MID', 'CM');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (6, 'MID', 'RM');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (7, 'DEF', 'LB');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (8, 'DEF', 'CB');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (9, 'DEF', 'RB');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (10, 'GK', 'GK');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (11, 'SUB', 'SUB1');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (12, 'SUB', 'SUB2');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (13, 'SUB', 'SUB3');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (14, 'SUB', 'SUB4');
INSERT INTO POSITION (ID, CATEGORY, NAME) VALUES (15, 'SUB', 'SUB5');

-- Players position info
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (1, true, 10, 10);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (2, true, 8, 8);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (3, true, 4, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (4, true, 6, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (5, true, 2, 2);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (6, false, 11, 10);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (7, false, 12, 8);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (8, false, 13, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (9, false, 14, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (10, false, 15, 2);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (11, true, 10, 10);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (12, true, 7, 7);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (13, true, 9, 9);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (14, true, 5, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (15, true, 2, 2);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (16, false, 11, 10);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (17, false, 12, 8);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (18, false, 13, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (19, false, 14, 5);
INSERT INTO PLAYER_POSITION_INFO (ID, IS_STARTING, CURRENT_POSITION_ID, DEFAULT_POSITION_ID) VALUES (20, false, 15, 2);

-- Players team info
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (1, 1, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (2, 2, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (3, 6, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (4, 10, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (5, 9, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (6, 20, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (7, 35, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (8, 15, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (9, 13, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (10, 14, 1);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (11, 1, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (12, 2, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (13, 3, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (14, 8, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (15, 9, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (16, 20, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (17, 4, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (18, 6, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (19, 15, 5);
INSERT INTO PLAYER_TEAM_INFO (ID, KIT_NR, TEAM_ID) VALUES (20, 10, 5);

-- Players stats
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (1, 65, 65);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (2, 60, 60);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (3, 64, 64);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (4, 65, 65);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (5, 72, 72);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (6, 65, 65);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (7, 60, 60);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (8, 64, 64);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (9, 65, 65);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (10, 64, 64);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (11, 66, 66);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (12, 64, 64);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (13, 61, 61);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (14, 67, 67);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (15, 60, 60);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (16, 50, 50);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (17, 66, 66);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (18, 65, 65);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (19, 66, 66);
INSERT INTO PLAYER_STATS (ID, PHYSICAL, SKILLS) VALUES (20, 58, 58);

-- Players additional info
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (1, 150, 1);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (2, 150, 2);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (3, 150, 3);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (4, 150, 4);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (5, 150, 5);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (6, 150, 6);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (7, 150, 7);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (8, 150, 8);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (9, 150, 9);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (10, 150, 10);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (11, 150, 11);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (12, 150, 12);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (13, 150, 13);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (14, 150, 14);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (15, 150, 15);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (16, 150, 16);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (17, 150, 17);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (18, 150, 18);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (19, 150, 19);
INSERT INTO PLAYER_ADDITIONAL_INFO (ID, PRICE, PLAYER_STATS_ID) VALUES (20, 150, 20);

-- Players
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (1, 1, 1, 1, 1);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (2, 2, 2, 2, 2);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (3, 3, 3, 3, 3);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (4, 4, 4, 4, 4);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (5, 5, 5, 5, 5);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (6, 6, 6, 6, 6);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (7, 7, 7, 7, 7);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (8, 8, 8, 8, 8);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (9, 9, 9, 9, 9);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (10, 10, 10, 10, 10);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (11, 11, 11, 11, 11);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (12, 12, 12, 12, 12);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (13, 13, 13, 13, 13);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (14, 14, 14, 14, 14);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (15, 15, 15, 15, 15);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (16, 16, 16, 16, 16);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (17, 17, 17, 17, 17);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (18, 18, 18, 18, 18);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (19, 19, 19, 19, 19);
INSERT INTO PLAYER (ID, PLAYER_ADDITIONAL_INFO_ID, PLAYER_PERSONAL_INFO_ID, PLAYER_POSITION_INFO_ID, PLAYER_TEAM_INFO_ID) VALUES (20, 20, 20, 20, 20);
