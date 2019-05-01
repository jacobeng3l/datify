-- 
-- Configutation for schema for Datify Database
-- very sparse data added

-- THIS IS CONFIGURATION FOR CREATING DATABASE
-- create database and user, grant privileges to user
-- create database datify;
-- create user 'mysql_username' identified by 'mysql_password';
-- grant all on datify.* to 'mysql_username';
-- flush privileges;
-- use team_8


-- Currently uncommented code uses already made database team_8 provided on server 
-- select the database and create tables

use team_8;

create table user(
    user_id int not null auto_increment primary key,
    email varchar(255) not null,
    name varchar(255) not null,
    password varchar(255) not null,
    date_of_birth date
);

create table playlist(
    playlist_id int not null auto_increment primary key,
    user_id int not null, 
    name varchar(255) not null,
    date_created date,
    description varchar(255),
    plays int DEFAULT 0, 
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

create table album(
    album_id int not null auto_increment primary key,
    name varchar(255) not null,
    date_published date,
    image varchar(255),
    description varchar(255)
);

create table artist(
    artist_id int not null auto_increment primary key,
    name varchar(255) not null,
    age int,
    image varchar(255),
    bio varchar(255),
    plays int DEFAULT 0
);

create table song(
    song_id int not null auto_increment primary key,
    name varchar(255) not null,
    plays int DEFAULT 0,
    explicit ENUM('Yes', 'No') not null DEFAULT 'No',
    duration int not null,
    num int not null,
    file_loc varchar(255) not null,
    album_id int not null,
    artist_id int not null,
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

create table is_friend(
    follower int not null,
    following int not null,
    PRIMARY KEY (follower,following),
    FOREIGN KEY (follower) REFERENCES user(user_id),
    FOREIGN KEY (following) REFERENCES user(user_id)
);

create table in_library(
    user_id int not null,
    song_id int not null,
    date_added date,
    plays int DEFAULT 0,
    PRIMARY KEY (user_id,song_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
);

-- create table has_playlist(
--     user_id int not null,
--     playlist_id int not null,
--     PRIMARY KEY (user_id,playlist_id),
--     FOREIGN KEY (user_id) REFERENCES user(user_id),
--     FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id)
-- );

create table in_playlist(
    playlist_id int not null,
    song_id int not null,
    date_added date,
    added_by int not null,
    PRIMARY KEY (playlist_id,song_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (song_id, added_by) REFERENCES in_library(song_id, user_id) ON DELETE CASCADE,
    FOREIGN KEY (added_by) REFERENCES user(user_id)
);

create table plays(
  user_id int not null,
  current_song_id int not null,
  previous_song_id int, 
  next_song_id int, 
  times datetime not null, 
  PRIMARY KEY (user_id, current_song_id, times), 
  FOREIGN KEY (user_id) REFERENCES user(user_id), 
  FOREIGN KEY (current_song_id) REFERENCES song(song_id), 
  FOREIGN KEY (previous_song_id) REFERENCES song(song_id), 
  FOREIGN KEY (next_song_id) REFERENCES song(song_id)
);
