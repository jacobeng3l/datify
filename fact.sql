create table plays(
  user_id int not null,
  current_song_id int not null,
  previous_song_id int, 
  next_song_id int, 
  date date not null, 
  PRIMARY KEY (user_id, current_song_id, previous_song_id, next_song_id), 
  FOREIGN KEY (user_id) FROM user(user_id), 
  FOREIGN KEY (current_song_id) FROM song(song_id), 
  FOREIGN KEY (previous_song_id) FROM song(song_id), 
  FOREIGN KEY (next_song_id) FROM ));
