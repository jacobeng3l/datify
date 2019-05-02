-- this document is for adding to the plays table so that we can test to see if our queries involing it are working

-- user 1 plays a lot of songs
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 1, current_timestamp, 2);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 2, current_timestamp, 3);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 3, current_timestamp, 4);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 4, current_timestamp, 5);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 5, current_timestamp, 6);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 6, current_timestamp, 7);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 7, current_timestamp, 8);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 8, current_timestamp, 9);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 9, current_timestamp, 10);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 10, current_timestamp, 11);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 11, current_timestamp, 12);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 12, current_timestamp, 13);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 13, current_timestamp, 14);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 14, current_timestamp, 15);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 15, current_timestamp, 16);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 16, current_timestamp, 17);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 17, current_timestamp, 18);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 18, current_timestamp, 19);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 19, current_timestamp, 20);
insert into plays(user_id, current_song_id, times, next_song_id) values
  (1, 20, current_timestamp, NULL);
  
-- user 2 plays a bunch of music
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 2);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 2, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 2);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 2, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 5);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 5, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 5);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 5, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 5);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 5, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 5);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 5, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 8);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 8, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 8);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 8, current_timestamp, 20);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 20, current_timestamp, 8);
waitfor delay '00:00:05';
insert into plays(user_id, current_song_id, times, next_song_id) values
  (2, 8, current_timestamp, NULL);

-- user 3 plays a song
insert into plays(user_id, current_song_id, times, next_song_id) values
  (3, 19, current_timestamp, NULL);
