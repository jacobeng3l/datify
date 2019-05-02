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
