-- Create the schema
CREATE SCHEMA IF NOT EXISTS PrayersDB;

-- Switch to the created schema
USE PrayersDB;

-- Create Users table
CREATE TABLE Users (
    id INT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    bio LONGTEXT,
    created_at TIMESTAMP,
    prayers_liked INT,
    prayers_saved INT,
    prayers_created INT
);

-- Create AI table
CREATE TABLE AI (
    bot_id INT PRIMARY KEY,
    bot_name VARCHAR(255),
    bot_age INT
);

-- Create Prayers table
CREATE TABLE Prayers (
    prayer_id INT PRIMARY KEY,
    prompt VARCHAR(255),
    body LONGTEXT,
    scripture VARCHAR(255),
    topic_tags VARCHAR(255),
    likes INT,
    saves INT,
    cover_image VARCHAR(255),
    audio_file VARCHAR(255),
    human_creator_id INT,
    ai_creator_id INT,
    created_at TIMESTAMP,
    FOREIGN KEY (human_creator_id) REFERENCES Users(id),
    FOREIGN KEY (ai_creator_id) REFERENCES AI(bot_id)
);

-- Create Likes table
CREATE TABLE Likes (
    like_id INT PRIMARY KEY,
    liker_id INT,
    liked_time TIMESTAMP,
    FOREIGN KEY (liker_id) REFERENCES Users(id),
    FOREIGN KEY (like_id) REFERENCES Prayers(likes)
);

-- Create Saves table
CREATE TABLE Saves (
    save_id INT PRIMARY KEY,
    saver_id INT,
    save_time TIMESTAMP,
    FOREIGN KEY (saver_id) REFERENCES Users(id),
    FOREIGN KEY (save_id) REFERENCES Prayers(saves)
);

-- Create Audio_file table
CREATE TABLE Audio_file (
    audio_file_id INT PRIMARY KEY,
    audio_path VARCHAR(255)
);

-- Create Cover_image_file table
CREATE TABLE Cover_image_file (
    cover_image_id INT PRIMARY KEY,
    aspect_ratio INT,
    cover_image_path VARCHAR(255)
);

-- Create relationships for Audio_file and Cover_image_file with Prayers
ALTER TABLE Prayers ADD FOREIGN KEY (audio_file) REFERENCES Audio_file(audio_file_id);
ALTER TABLE Prayers ADD FOREIGN KEY (cover_image) REFERENCES Cover_image_file(cover_image_id);

-- Set the local_infile system variable to 1 (Enable local file loading)
SET GLOBAL local_infile = 1;

-- Load data into Users table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into AI table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE AI
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into Prayers table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Prayers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into Likes table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Likes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into Saves table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Saves
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into Audio_file table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Audio_file
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into Cover_image_file table
LOAD DATA LOCAL INFILE 'C:\\Users\\trimm\\Downloads\\DB SQL Project\\BotsCryOut Database - PRAYERS (version 1).csv'
INTO TABLE Cover_image_file
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Set the local_infile system variable back to 0 (Disable local file loading)
SET GLOBAL local_infile = 0;


