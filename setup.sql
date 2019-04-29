--
-- Example setup file for a web database project.
--

-- create database and user, grant privileges to user
create database datify;
create user 'mysql_username' identified by 'mysql_password';
grant all on datify.* to 'mysql_username';
flush privileges;

-- select the database and create tables
use datify;
create table album(
    album_id int not null auto_increment primary key,
    name varchar(255) not null,
    date_published date,
    image varchar(255),
    description varchar(255)
);

create table song(
    song_id int not null auto_increment primary key,
    name varchar(255) not null,
    plays int DEFAULT 0,
    explicit int DEFAULT 0,
    duration int not null,
    num int not null,
    file_loc varchar(255) not null,
    album_id int not null,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

-- insert data into database
insert into album(album_id, name) values (1, 'The Click');
insert into song(name, duration, num, file_loc, album_id) values 
    ('Sober Up', 218, 4, '/home', 1);
insert into album(album_id, name) values (2, 'Youtube'); 
insert into song(name, duration, num, file_loc, album_id) values 
    ('Lament Golden Light', 216, 1, 'Lament_Golden_Light.mp3', 2);

