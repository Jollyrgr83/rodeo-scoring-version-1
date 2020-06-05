USE rodeo_db;

DROP TABLE tiers;
DROP TABLE events;
DROP TABLE organizations;
DROP TABLE competitors;
DROP TABLE years;
DROP TABLE scores;

CREATE TABLE tiers (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    team BOOLEAN NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE events (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE organizations (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    coop BOOLEAN NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE competitors (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NULL,
    team_name VARCHAR(255) NULL,
    group_names VARCHAR(255) NULL,
    org_id INT NOT NULL,
    tier_id INT NOT NULL,
    year_id INT NOT NULL,
    comp_number VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE scores (
    id INT AUTO_INCREMENT NOT NULL,
    year_id INT NOT NULL,
    competitor_id INT NOT NULL,
    event_id INT NOT NULL,
    score INT NULL,
    time_minutes INT NULL,
    time_seconds DECIMAL(10, 2) NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE years (
    id INT AUTO_INCREMENT NOT NULL,
    value INT NULL,
    type VARCHAR(255) NOT NULL,
    tier_id INT NULL,
    event_id INT NULL,
    year_id INT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO tiers (id, name, team) VALUES 
(1, "Apprentice", false),
(2, "Journeyman", true);

INSERT INTO organizations (id, name, coop) VALUES
(1, "Santee Cooper", false),
(2, "Berkeley Electric Cooperative", true),
(3, "Horry Electric Cooperative", true),
(4, "Palmetto Electric Cooperative", true),
(5, "Blue Ridge Electric Cooperative", true),
(6, "York Electric Cooperative", true),
(7, "Mid-Carolina Electric Cooperative", true),
(8, "Broad River Electric Cooperative", true),
(9, "Black River Electric Cooperative", true),
(10, "Pee Dee Electric Cooperative", true),
(11, "Tri-County Electric Cooperative", true),
(12, "Newberry Electric Cooperative", true),
(13, "Marlboro Electric Cooperative", true),
(14, "Lynches River Electric Cooperative", true);

INSERT INTO events (id, name) VALUES
(1, "Written Test"),
(2, "Hurtman Rescue"),
(3, "Cutout Change"),
(4, "Backyard Light Change Out"),
(5, "Obstacle Course"),
(6, "Down Primary"),
(7, "Knot Tying"),
(8, "Insulator Change"),
(9, "Dead End Bell Change"),
(10, "600A Switch Change"),
(11, "Crossarm Change"),
(12, "Knots and Crossarm Lift"),
(13, "Knot and Phase Tying"),
(14, "Double Cutout Change"),
(15, "Fuse Replacement");

INSERT INTO years (id, value, type, tier_id, event_id, year_id) VALUES
(1, 2017, "year", null, null, null),
(2, 2018, "year", null, null, null),
(3, 2019, "year", null, null, null),
-- 2017 tiers
(4, null, "tier", 1, null, 1),
(5, null, "tier", 2, null, 1),
-- 2017 tiers
(6, null, "tier", 1, null, 2),
(7, null, "tier", 2, null, 2),
-- 2017 tiers
(8, null, "tier", 1, null, 3),
(9, null, "tier", 2, null, 3),
-- 2017 events
(10, null, "event", 1, 1, 1),
(11, null, "event", 1, 2, 1),
(12, null, "event", 1, 13, 1),
(13, null, "event", 1, 4, 1),
(14, null, "event", 1, 15, 1),
(15, null, "event", 2, 2, 1),
(16, null, "event", 2, 13, 1),
(17, null, "event", 2, 14, 1),
(18, null, "event", 2, 11, 1),
(19, null, "event", 2, 6, 1),
-- 2018 events
(20, null, "event", 1, 1, 2),
(21, null, "event", 1, 2, 2),
(22, null, "event", 1, 9, 2),
(23, null, "event", 1, 5, 2),
(24, null, "event", 1, 12, 2),
(25, null, "event", 2, 2, 2),
(26, null, "event", 2, 5, 2),
(27, null, "event", 2, 10, 2),
(28, null, "event", 2, 11, 2),
(29, null, "event", 2, 12, 2),
-- 2019 events
(30, null, "event", 1, 1, 3),
(31, null, "event", 1, 2, 3),
(32, null, "event", 1, 4, 3),
(33, null, "event", 1, 5, 3),
(34, null, "event", 1, 7, 3),
(35, null, "event", 2, 2, 3),
(36, null, "event", 2, 3, 3),
(37, null, "event", 2, 6, 3),
(38, null, "event", 2, 7, 3),
(39, null, "event", 2, 8, 3);

INSERT INTO competitors (id, first_name, last_name, team_name, group_names, org_id, tier_id, year_id, comp_number) VALUES
-- 2017 competitors
(1, "Logan", "Pope", null, null, 6, 1, 1, "103"),
(2, "Lucas", "Elston", null, null, 6, 1, 1, "104"),
(3, "Zack", "Hopper", null, null, 6, 1, 1, "105"), 
(4, "Caleb", "Traenkner", null, null, 6, 1, 1, "106"), 
(5, "Bruce", "Cunupp", null, null, 6, 1, 1, "107"),
(6, "Zack", "Childers", null, null, 6, 1, 1, "108"),
(7, "Jeremy", "Garrett", null, null, 1, 1, 1, "109"),
(8, "DJ", "Roper", null, null, 5, 1, 1, "110"),
(9, "Michael", "Sims", null, null, 5, 1, 1, "111"),
(10, "Jake", "Steward", null, null, 5, 1, 1, "112"),
(11, "Corey", "Thomas", null, null, 2, 1, 1, "113"),
(12, "Henry", "Owens", null, null, 2, 1, 1, "114"),
(13, "Wyman", "Boatwright, Jr", null, null, 3, 1, 1, "115"),
(14, "Chase", "Cox", null, null, 3, 1, 1, "116"),
(15, "Ethan", "Avant", null, null, 3, 1, 1, "117"),
(16, "Aaron", "Hughes", null, null, 1, 1, 1, "118"),
(17, "Jacob", "Rostad", null, null, 1, 1, 1, "119"),
(18, "Joseph", "Shillinglaw", null, null, 1, 1, 1, "120"),
(19, "Drew", "Boatwright, Jr", null, null, 1, 1, 1, "121"),
(20, "Will", "Brown", null, null, 1, 1, 1, "122"),
(21, "Josh", "Sawyer", null, null, 1, 1, 1, "123"),
(22, "Reggie", "Graves", null, null, 1, 1, 1, "124"),
(23, "Josh", "Ham", null, null, 1, 1, 1, "125"),
(24, "JT", "Windham", null, null, 1, 1, 1, "126"),
(25, "Michael", "Powell", null, null, 1, 1, 1, "127"),
(26, "Wilson", "Mishoe", null, null, 1, 1, 1, "128"),
(27, "Hunter", "Melton", null, null, 1, 1, 1, "129"),
(28, "Jamie", "Anderson", null, null, 1, 1, 1, "130"),
(29, "Peter", "Strong", null, null, 4, 1, 1, "131"),
(30, "Jose", "Bello", null, null, 4, 1, 1, "132"),
(31, "Randall", "McAlhaney", null, null, 4, 1, 1, "133"),
(32, "Matthew", "Martin", null, null, 1, 1, 1, "134"),
(33, null, null, "Santee Cooper 1", "Tommy Reece, Nick Brown, Coby Martin, Bryant Geathers", 1, 2, 1, "201"),
(34, null, null, "Blue Ridge 1", "Chad Davidson, Jay Bagwell, Clay Crawford, Anson Perry", 5, 2, 1, "202"),
(35, null, null, "BEC 1", "William Burbage, Mark Milovich, Wesley Mason", 2, 2, 1, "203"),
(36, null, null, "BEC 2", "Will Mills, Cody Carter, Tim Whigham", 2, 2, 1, "204"),
(37, null, null, "Santee Cooper 2", "Jay Ayers, Johnny Brinson, Kevin Rhode", 1, 2, 1, "205"),
(38, null, null, "Santee Cooper 3", "Chad Williams, Dow Hardee, Joe Sawyer", 1, 2, 1, "206"),
(39, null, null, "Santee Cooper 4", "Jake Murray, Tyler Davison, Travis Wiggins", 1, 2, 1, "207"),
(40, null, null, "PEC 1", "Tarl Graham, Thomas Scaachi, David White", 4, 2, 1, "208"),
(41, null, null, "Santee Cooper 5", "Sport Rabon, Chris Osha, McKenzie Johnson", 1, 2, 1, "209");
-- 2018 competitors

INSERT INTO scores (year_id, competitor_id, event_id, score, time_minutes, time_seconds) VALUES
-- 2017 apprentice scores
(1, 1, 1, 97, 7, 39.10), (1, 1, 2, 100, 2, 29.53), (1, 1, 13, 100, 1, 49.22), (1, 1, 4, 100, 3, 52.82), (1, 1, 15, 100, 3, 4.91), 
(1, 2, 1, 100, 6, 38.37), (1, 2, 2, 100, 2, 51.54), (1, 2, 13, 100, 1, 56.87), (1, 2, 4, 100, 4, 13.25), (1, 2, 15, 100, 3, 55.12), 
(1, 3, 1, 98, 8, 51.91), (1, 3, 2, 100, 2, 29.31), (1, 3, 13, 96, 2, 12.44), (1, 3, 4, 100, 5, 21.50), (1, 3, 15, 94, 7, 35.50), 
(1, 4, 1, 98, 7, 11.03), (1, 4, 2, 98, 3, 56.28), (1, 4, 13, 98, 1, 47.15), (1, 4, 4, 100, 4, 45.72), (1, 4, 15, 100, 4, 29.36), 
(1, 5, 1, 99, 7, 30.13), (1, 5, 2, 100, 2, 5.50), (1, 5, 13, 98, 1, 41.15), (1, 5, 4, 100, 2, 31.78), (1, 5, 15, 100, 2, 36.81), 
(1, 6, 1, 97, 7, 26.16), (1, 6, 2, 80, 5, 20.72), (1, 6, 13, 100, 1, 39.25), (1, 6, 4, 100, 3, 44.94), (1, 6, 15, 100, 1, 42.42), 
(1, 7, 1, 98, 8, 14.44), (1, 7, 2, 100, 2, 22.13), (1, 7, 13, 100, 1, 55.03), (1, 7, 4, 100, 2, 22.84), (1, 7, 15, 100, 2, 24.11), 
(1, 8, 1, 96, 9, 6.56), (1, 8, 2, 96, 2, 53.19), (1, 8, 13, 100, 1, 48.1), (1, 8, 4, 100, 3, 25.22), (1, 8, 15, 100, 1, 57.96), 
(1, 9, 1, 97, 8, 41.56), (1, 9, 2, 100, 1, 53.47), (1, 9, 13, 100, 1, 23.72), (1, 9, 4, 100, 3, 15.25), (1, 9, 15, 100, 2, 2.34), 
(1, 10, 1, 94, 6, 52.21), (1, 10, 2, 100, 2, 10.59), (1, 10, 13, 94, 2, 6.35), (1, 10, 4, 100, 2, 36.94), (1, 10, 15, 100, 2, 4.69), 
(1, 11, 1, 96, 7, 26.22), (1, 11, 2, 100, 2, 24.16), (1, 11, 13, 98, 1, 56.16), (1, 11, 4, 100, 2, 55.91), (1, 11, 15, 100, 2, 29.56), 
(1, 12, 1, 98, 8, 28.97), (1, 12, 2, 100, 2, 14.77), (1, 12, 13, 98, 2, 15.81), (1, 12, 4, 100, 3, 2.97), (1, 12, 15, 100, 2, 37.93), 
(1, 13, 1, 96, 8, 37.81), (1, 13, 2, 98, 3, 10.79), (1, 13, 13, 100, 1, 33.94), (1, 13, 4, 100, 2, 5.97), (1, 13, 15, 100, 1, 38.16), 
(1, 14, 1, 97, 10, 28.14), (1, 14, 2, 98, 3, 11.9), (1, 14, 13, 100, 1, 33.72), (1, 14, 4, 100, 2, 5.41), (1, 14, 15, 100, 2, 22.93), 
(1, 15, 1, 98, 12, 18.69), (1, 15, 2, 100, 2, 29.56), (1, 15, 13, 100, 1, 40.28), (1, 15, 4, 100, 2, 39.31), (1, 15, 15, 100, 1, 31.28), 
(1, 16, 1, 99, 9, 1.66), (1, 16, 2, 100, 2, 14.96), (1, 16, 13, 100, 1, 19.78), (1, 16, 4, 100, 2, 49.46), (1, 16, 15, 100, 1, 38.43), 
(1, 17, 1, 97, 7, 21.12), (1, 17, 2, 100, 2, 40.16), (1, 17, 13, 98, 2, 12.93), (1, 17, 4, 100, 3, 59.16), (1, 17, 15, 100, 4, 5.60), 
(1, 18, 1, 99, 9, 8.36), (1, 18, 2, 100, 2, 5.53), (1, 18, 13, 94, 2, 22.32), (1, 18, 4, 100, 3, 12.84), (1, 18, 15, 100, 2, 40.43), 
(1, 19, 1, 96, 8, 27.35), (1, 19, 2, 100, 2, 10.69), (1, 19, 13, 100, 1, 25.19), (1, 19, 4, 100, 2, 29.02), (1, 19, 15, 100, 1, 39.00), 
(1, 20, 1, 99, 10, 25.25), (1, 20, 2, 100, 2, 45.10), (1, 20, 13, 100, 1, 56.16), (1, 20, 4, 100, 2, 28.47), (1, 20, 15, 98, 3, 6.15), 
(1, 21, 1, 97, 8, 13.09), (1, 21, 2, 100, 2, 31.38), (1, 21, 13, 98, 1, 28.16), (1, 21, 4, 100, 2, 26.66), (1, 21, 15, 100, 1, 30.37), 
(1, 22, 1, 99, 7, 39.62), (1, 22, 2, 100, 3, 26.25), (1, 22, 13, 96, 2, 0.63), (1, 22, 4, 100, 3, 33.44), (1, 22, 15, 100, 2, 31.21), 
(1, 23, 1, 97, 7, 38.44), (1, 23, 2, 100, 2, 21.24), (1, 23, 13, 100, 1, 49.87), (1, 23, 4, 100, 3, 2.56), (1, 23, 15, 98, 3, 5.09), 
(1, 24, 1, 97, 10, 12.59), (1, 24, 2, 100, 2, 29.79), (1, 24, 13, 98, 1, 56.69), (1, 24, 4, 100, 3, 7.84), (1, 24, 15, 100, 2, 54.40), 
(1, 25, 1, 97, 8, 16.13), (1, 25, 2, 100, 2, 50.09), (1, 25, 13, 98, 2, 20.81), (1, 25, 4, 98, 6, 40.78), (1, 25, 15, 100, 3, 11.87), 
(1, 26, 1, 97, 7, 39.19), (1, 26, 2, 100, 2, 28.17), (1, 26, 13, 100, 1, 42.09), (1, 26, 4, 100, 3, 53.81), (1, 26, 15, 98, 4, 43.35), 
(1, 27, 1, 97, 8, 26.22), (1, 27, 2, 100, 2, 26.69), (1, 27, 13, 100, 1, 29.31), (1, 27, 4, 100, 3, 4.19), (1, 27, 15, 100, 2, 50.51), 
(1, 28, 1, 99, 10, 48.13), (1, 28, 2, 100, 2, 4.84), (1, 28, 13, 100, 1, 40.94), (1, 28, 4, 100, 3, 9.31), (1, 28, 15, 100, 2, 11.30), 
(1, 29, 1, 95, 11, 33.65), (1, 29, 2, 88, 12, 40.72), (1, 29, 13, 94, 2, 26.87), (1, 29, 4, 98, 8, 25.63), (1, 29, 15, 84, 16, 13.34), 
(1, 30, 1, 93, 11, 43.72), (1, 30, 2, 96, 3, 33.31), (1, 30, 13, 96, 2, 4.65), (1, 30, 4, 100, 5, 57.50), (1, 30, 15, 100, 3, 35.16), 
(1, 31, 1, 96, 8, 27.66), (1, 31, 2, 100, 2, 42.56), (1, 31, 13, 96, 2, 7.37), (1, 31, 4, 100, 4, 20.60), (1, 31, 15, 100, 3, 17.30), 
(1, 32, 1, 97, 8, 25.15), (1, 32, 2, 100, 2, 33.97), (1, 32, 13, 98, 1, 36.13), (1, 32, 4, 100, 2, 1.32), (1, 32, 15, 100, 1, 51.00), 
-- 2017 journeyman scores 2, 13, 14, 11, 6
(1, 33, 2, 100, 2, 37.25), (1, 33, 13, 94, 2, 7.38), (1, 33, 14, 98, 9, 49.47), (1, 33, 11, 96, 10, 44.65), (1, 33, 6, 86, 9, 0.00), 
(1, 34, 2, 100, 2, 10.28), (1, 34, 13, 100, 1, 55.12), (1, 34, 14, 98, 9, 48.81), (1, 34, 11, 96, 12, 59.71), (1, 34, 6, 98, 4, 23.59), 
(1, 35, 2, 100, 2, 34.75), (1, 35, 13, 98, 2, 7.09), (1, 35, 14, 100, 7, 47.94), (1, 35, 11, 100, 9, 2.66), (1, 35, 6, 100, 4, 38.88), 
(1, 36, 2, 100, 2, 10.65), (1, 36, 13, 94, 2, 4.47), (1, 36, 14, 94, 12, 35.68), (1, 36, 11, 96, 9, 27.66), (1, 36, 6, 100, 3, 23.88), 
(1, 37, 2, 100, 1, 49.88), (1, 37, 13, 96, 2, 0.32), (1, 37, 14, 100, 8, 12.28), (1, 37, 11, 100, 7, 46.54), (1, 37, 6, 100, 3, 28.53), 
(1, 38, 2, 98, 2, 8.16), (1, 38, 13, 100, 1, 39.50), (1, 38, 14, 100, 6, 51.47), (1, 38, 11, 100, 7, 20.25), (1, 38, 6, 100, 2, 47.09), 
(1, 39, 2, 100, 2, 49.19), (1, 39, 13, 98, 2, 30.94), (1, 39, 14, 100, 8, 51.19), (1, 39, 11, 100, 8, 54.59), (1, 39, 6, 100, 5, 14.25), 
(1, 40, 2, 100, 2, 53.91), (1, 40, 13, 92, 2, 29.56), (1, 40, 14, 94, 16, 7.25), (1, 40, 11, 84, 18, 57.34), (1, 40, 6, 88, 9, 0.00), 
(1, 41, 2, 96, 3, 15.00), (1, 41, 13, 98, 2, 4.85), (1, 41, 14, 90, 9, 34.63), (1, 41, 11, 98, 11, 16.40), (1, 41, 6, 100, 3, 52.25);