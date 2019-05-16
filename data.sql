-- Initial Data Input 
-- insert data into database


-- create initial user
insert into user(user_id, email, name, password) values 
    (1, 'abc1@case.edu', 'Alex', 'password');

-- creates an initial playlist
insert into playlist(playlist_id, name, user_id) values 
    (1, 'Hype Music', 1);

-- puts some of the initial songs in user 1's library
insert into in_library(user_id, song_id) values
    (1, 2);
insert into in_library(user_id, song_id) values
    (1, 3);
insert into in_library(user_id, song_id) values
    (1, 4);

-- puts 2 of the initial songs into the initial playlist
insert into in_playlist(playlist_id, song_id, added_by) values
    (1, 2, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
    (1, 4, 1);

-- insert into has_playlist(user_id, playlist_id) values 
--     (1, 1);

-- Round 2 Data Input 

-- creates more users
insert into user(user_id, email, name, password) values 
  (2, 'abc2@case.edu', 'Jacob', '2');
insert into user(user_id, email, name, password) values 
  (3, 'abc3@case.edu', 'Jason', '3');
insert into user(user_id, email, name, password) values 
  (4, 'abc4@case.edu', 'Jordan', '4');

-- put songs into user 1's library
insert into in_library(user_id, song_id) values
  (1, 6);
insert into in_library(user_id, song_id) values
  (1, 7);
insert into in_library(user_id, song_id) values
  (1, 8);
insert into in_library(user_id, song_id) values
  (1, 15);
insert into in_library(user_id, song_id) values
  (1, 16);
insert into in_library(user_id, song_id) values
  (1, 19);
insert into in_library(user_id, song_id) values
  (1, 20);
insert into in_library(user_id, song_id) values
  (1, 21);
insert into in_library(user_id, song_id) values
  (1, 22);
insert into in_library(user_id, song_id) values
  (1, 47);
insert into in_library(user_id, song_id) values
  (1, 50);
insert into in_library(user_id, song_id) values
  (1, 61);
insert into in_library(user_id, song_id) values
  (1, 62);
insert into in_library(user_id, song_id) values
  (1, 63);
insert into in_library(user_id, song_id) values
  (1, 74);
insert into in_library(user_id, song_id) values
  (1, 85);
    
-- put songs into user 2's library
insert into in_library(user_id, song_id) values
  (2, 8);
insert into in_library(user_id, song_id) values
  (2, 9);
insert into in_library(user_id, song_id) values
  (2, 10);
insert into in_library(user_id, song_id) values
  (2, 20);
insert into in_library(user_id, song_id) values
  (2, 23);
insert into in_library(user_id, song_id) values
  (2, 24);
insert into in_library(user_id, song_id) values
  (2, 25);
insert into in_library(user_id, song_id) values
  (2, 26);
insert into in_library(user_id, song_id) values
  (2, 27);
insert into in_library(user_id, song_id) values
  (2, 28);
insert into in_library(user_id, song_id) values
  (2, 45);
insert into in_library(user_id, song_id) values
  (2, 46);
insert into in_library(user_id, song_id) values
  (2, 50);
insert into in_library(user_id, song_id) values
  (2, 51);
insert into in_library(user_id, song_id) values
  (2, 55);
insert into in_library(user_id, song_id) values
  (2, 60);
insert into in_library(user_id, song_id) values
  (2, 62);
insert into in_library(user_id, song_id) values
  (2, 65);
insert into in_library(user_id, song_id) values
  (2, 68);
insert into in_library(user_id, song_id) values
  (2, 74);
insert into in_library(user_id, song_id) values
  (2, 75);
insert into in_library(user_id, song_id) values
  (2, 85);
insert into in_library(user_id, song_id) values
  (2, 90);
insert into in_library(user_id, song_id) values
  (2, 91);
insert into in_library(user_id, song_id) values
  (2, 92);
insert into in_library(user_id, song_id) values
  (2, 93);
insert into in_library(user_id, song_id) values
  (2, 94);
insert into in_library(user_id, song_id) values
  (2, 100);

-- put songs into user 3's library
insert into in_library(user_id, song_id) values
  (3, 8);
insert into in_library(user_id, song_id) values
  (3, 39);
insert into in_library(user_id, song_id) values
  (3, 40);
insert into in_library(user_id, song_id) values
  (3, 67);
insert into in_library(user_id, song_id) values
  (3, 70);
insert into in_library(user_id, song_id) values
  (3, 71);
insert into in_library(user_id, song_id) values
  (3, 72);
insert into in_library(user_id, song_id) values
  (3, 73);
insert into in_library(user_id, song_id) values
  (3, 74);
insert into in_library(user_id, song_id) values
  (3, 82);
insert into in_library(user_id, song_id) values
  (3, 83);
insert into in_library(user_id, song_id) values
  (3, 84);
insert into in_library(user_id, song_id) values
  (3, 85);

-- put songs into user 4's library
insert into in_library(user_id, song_id) values
  (4, 8);
insert into in_library(user_id, song_id) values
  (4, 9);
insert into in_library(user_id, song_id) values
  (4, 10);
insert into in_library(user_id, song_id) values
  (4, 11);
insert into in_library(user_id, song_id) values
  (4, 18);
insert into in_library(user_id, song_id) values
  (4, 19);
insert into in_library(user_id, song_id) values
  (4, 20);
insert into in_library(user_id, song_id) values
  (4, 33);
insert into in_library(user_id, song_id) values
  (4, 34);
insert into in_library(user_id, song_id) values
  (4, 35);
insert into in_library(user_id, song_id) values
  (4, 36);
insert into in_library(user_id, song_id) values
  (4, 48);
insert into in_library(user_id, song_id) values
  (4, 55);
insert into in_library(user_id, song_id) values
  (4, 62);
insert into in_library(user_id, song_id) values
  (4, 69);
insert into in_library(user_id, song_id) values
  (4, 74);
insert into in_library(user_id, song_id) values
  (4, 79);
insert into in_library(user_id, song_id) values
  (4, 85);
insert into in_library(user_id, song_id) values
  (4, 93);
insert into in_library(user_id, song_id) values
  (4, 98);
insert into in_library(user_id, song_id) values
  (4, 102);

-- create another playlist for user 2
insert into playlist(playlist_id, name, user_id) values 
  (2, 'Workout', 2);

-- put songs into that new playlist
insert into in_playlist(playlist_id, song_id, added_by) values
  (2, 9, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (2, 10, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (2, 20, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (2, 55, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (2, 62, 2);

-- insert into has_playlist(user_id, playlist_id) values 
--  (2, 2);
-- insert into has_playlist(user_id, playlist_id) values 
--  (4, 2);

-- create another playlist for user 1
insert into playlist(playlist_id, name, user_id) values 
  (3, 'In My Feels', 1);

-- put songs into that new playlist
insert into in_playlist(playlist_id, song_id, added_by) values
  (3, 50, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (3, 61, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (3, 62, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (3, 63, 1);
  
-- insert into has_playlist(user_id, playlist_id) values 
--  (1, 3);

-- create a new playlist for user 1
insert into playlist(playlist_id, name, user_id) values 
  (4, 'Sleepy Time', 1);

-- put songs into that new playlist
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 74, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 8, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 85, 1);

-- create a new playlist for user 2
insert into playlist(playlist_id, name, user_id) values 
  (5, 'Sleepy Time', 2);

-- put songs into that new playlist for user 2
insert into in_playlist(playlist_id, song_id, added_by) values
  (5, 74, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (5, 8, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (5, 85, 2);

-- create a new playlist for user 3
insert into playlist(playlist_id, name, user_id) values 
  (6, 'Sleepy Time', 3);

-- put songs into that new playlist for user 3
insert into in_playlist(playlist_id, song_id, added_by) values
  (6, 74, 3);
insert into in_playlist(playlist_id, song_id, added_by) values
  (6, 8, 3);
insert into in_playlist(playlist_id, song_id, added_by) values
  (6, 85, 3);

-- create a new playlist for user 4
insert into playlist(playlist_id, name, user_id) values 
  (7, 'Sleepy Time', 4);

-- put songs into that new playlist for user 4
insert into in_playlist(playlist_id, song_id, added_by) values
  (7, 74, 4);
insert into in_playlist(playlist_id, song_id, added_by) values
  (7, 8, 4);
insert into in_playlist(playlist_id, song_id, added_by) values
  (7, 85, 4);
  
-- insert into has_playlist(user_id, playlist_id) values 
--  (1, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (2, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (3, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (4, 4);

-- create friendships between some existing users
insert into is_friend(follower, following) values
  (2,1);
insert into is_friend(follower, following) values
  (3,1);
insert into is_friend(follower, following) values
  (4,1);
insert into is_friend(follower, following) values
  (1,2);
insert into is_friend(follower, following) values
  (4,2);
insert into is_friend(follower, following) values
  (2,3);
insert into is_friend(follower, following) values
  (1,4);
insert into is_friend(follower, following) values
  (2,4);
insert into is_friend(follower, following) values
  (3,4);


	
insert into in_library(user_id, song_id) values (5, 200);
insert into in_library(user_id, song_id) values (5, 201);
insert into in_library(user_id, song_id) values (5, 202);
insert into in_library(user_id, song_id) values (5, 203);
insert into in_library(user_id, song_id) values (5, 204);
insert into in_library(user_id, song_id) values (5, 205);
insert into in_library(user_id, song_id) values (5, 206);
insert into in_library(user_id, song_id) values (5, 207);
insert into in_library(user_id, song_id) values (5, 208);
insert into in_library(user_id, song_id) values (5, 209);
insert into in_library(user_id, song_id) values (5, 210);
insert into in_library(user_id, song_id) values (5, 211);
insert into in_library(user_id, song_id) values (5, 212);
insert into in_library(user_id, song_id) values (5, 213);
insert into in_library(user_id, song_id) values (5, 214);
insert into in_library(user_id, song_id) values (5, 1);
insert into in_library(user_id, song_id) values (5, 3);

insert into playlist(playlist_id, name, description, user_id) values (100, 'Happy', 'For when you\'re in a good mood', 5);
insert into playlist(playlist_id, name, description, user_id) values (101, 'Sad', 'For when you\'re in a bad mood', 5);

insert into in_playlist(playlist_id, song_id, added_by) values (100, 1, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (100, 3, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (100, 200, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (100, 210, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (100, 205, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (100, 206, 5);

insert into in_playlist(playlist_id, song_id, added_by) values (101, 206, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (101, 203, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (101, 201, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (101, 214, 5);
insert into in_playlist(playlist_id, song_id, added_by) values (101, 207, 5);

-- create 3 new users
insert into user(user_id, email, name, password) values 
  (6, 'abc6@case.edu', 'Ted', '6');
insert into user(user_id, email, name, password) values 
  (7, 'abc7@case.edu', 'Robin', '7');
insert into user(user_id, email, name, password) values 
  (8, 'abc8@case.edu', 'Barney', '8');

-- puts songs into the 3 new user's libraries
insert into in_library(user_id, song_id) values (6, 200);
insert into in_library(user_id, song_id) values (6, 201);
insert into in_library(user_id, song_id) values (6, 202);
insert into in_library(user_id, song_id) values (6, 204);
insert into in_library(user_id, song_id) values (6, 205);
insert into in_library(user_id, song_id) values (6, 206);
insert into in_library(user_id, song_id) values (6, 207);
insert into in_library(user_id, song_id) values (6, 208);
insert into in_library(user_id, song_id) values (6, 209);
insert into in_library(user_id, song_id) values (6, 210);
insert into in_library(user_id, song_id) values (6, 212);
insert into in_library(user_id, song_id) values (6, 213);
insert into in_library(user_id, song_id) values (6, 214);
insert into in_library(user_id, song_id) values (6, 1);
insert into in_library(user_id, song_id) values (6, 3);

insert into in_library(user_id, song_id) values (7, 200);
insert into in_library(user_id, song_id) values (7, 201);
insert into in_library(user_id, song_id) values (7, 202);
insert into in_library(user_id, song_id) values (7, 203);
insert into in_library(user_id, song_id) values (7, 204);
insert into in_library(user_id, song_id) values (7, 205);
insert into in_library(user_id, song_id) values (7, 207);
insert into in_library(user_id, song_id) values (7, 208);
insert into in_library(user_id, song_id) values (7, 209);
insert into in_library(user_id, song_id) values (7, 210);
insert into in_library(user_id, song_id) values (7, 211);
insert into in_library(user_id, song_id) values (7, 212);
insert into in_library(user_id, song_id) values (7, 214);
insert into in_library(user_id, song_id) values (7, 1);
insert into in_library(user_id, song_id) values (7, 3);

insert into in_library(user_id, song_id) values (8, 200);
insert into in_library(user_id, song_id) values (8, 202);
insert into in_library(user_id, song_id) values (8, 203);
insert into in_library(user_id, song_id) values (8, 204);
insert into in_library(user_id, song_id) values (8, 205);
insert into in_library(user_id, song_id) values (8, 206);
insert into in_library(user_id, song_id) values (8, 207);
insert into in_library(user_id, song_id) values (8, 208);
insert into in_library(user_id, song_id) values (8, 210);
insert into in_library(user_id, song_id) values (8, 211);
insert into in_library(user_id, song_id) values (8, 212);
insert into in_library(user_id, song_id) values (8, 213);
insert into in_library(user_id, song_id) values (8, 214);
insert into in_library(user_id, song_id) values (8, 1);
insert into in_library(user_id, song_id) values (8, 3);

-- makes the 3 new users play a song
insert into plays(user_id, current_song_id, times, next_song_id) values
  (6, 2, current_timestamp, NULL);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (7, 2, current_timestamp, NULL);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (8, 2, current_timestamp, NULL);

-- this document is for adding to the plays table so that we can test to see if our queries involing it are working

-- user 1 plays a lot of songs
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 21, current_timestamp, 22);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 22, current_timestamp, 23);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 23, current_timestamp, 24);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 24, current_timestamp, 25);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 25, current_timestamp, 26);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 26, current_timestamp, 27);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 27, current_timestamp, 28);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 28, current_timestamp, 29);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 29, current_timestamp, 210);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 210, current_timestamp, 11);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 211, current_timestamp, 12);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 212, current_timestamp, 213);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 213, current_timestamp, 214);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 214, current_timestamp, 215);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 215, current_timestamp, 216);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 216, current_timestamp, 217);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 217, current_timestamp, 218);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 218, current_timestamp, 219);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 219, current_timestamp, 220);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 220, current_timestamp, NULL);
  
-- user 2 plays a bunch of music
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 22);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 22, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 22);;
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 22, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 25);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 25, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 25);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 25, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 25);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 25, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 25);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 25, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 28);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 28, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 28);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 28, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 28);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 28, current_timestamp, NULL);

-- user 3 plays a song
insert into plays(user_id, current_song_id, times, next_song_id) values
  (3, 219, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (3, 20, current_timestamp, NULL);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (4, 22, current_timestamp, NULL);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (5, 22, current_timestamp, NULL);
