create table plays(
  user_id int not null,
  current_song_id int not null,
  previous_song_id int, 
  next_song_id int, 
  times timestamp not null, 
  PRIMARY KEY (user_id, current_song_id, times), 
  FOREIGN KEY (user_id) REFERENCES user(user_id), 
  FOREIGN KEY (current_song_id) REFERENCES song(song_id), 
  FOREIGN KEY (previous_song_id) REFERENCES song(song_id), 
  FOREIGN KEY (next_song_id) REFERENCES song(song_id)
);

-- insert into plays (user_id, current_song_id, time)
