-- next batch of song inserts 
insert into album (album_id, name) values (200, 'YouTube Audio Library'); 
insert into album (album_id, name) values (201, 'Atlas'); 
insert into album (album_id, name) values (202, '3'); 
insert into album (album_id, name) values (203, 'Parkin\'');
insert into album (album_id, name) values (204, 'feelz');
insert into artist(artist_id, name) values (200, 'Freedom Trail Studio');
insert into artist(artist_id, name) values (201, 'Sextile');
insert into artist(artist_id, name) values (202, 'Silent Panther');
insert into artist(artist_id, name) values (203, 'Riot');
insert into artist(artist_id, name) values (204, 'ALBIS');
insert into artist(artist_id, name) values (205, 'Jungle Punks');
insert into artist(artist_id, name) values (206, 'The Whole Other');
insert into artist(artist_id, name) values (207, 'Wayne Jones');
insert into artist(artist_id, name) values (208, 'Vibe Mountain');
insert into artist(artist_id, name) values (209, 'Geographer');
insert into artist(artist_id, name) values (210, 'Anno Domini Beats');
insert into artist(artist_id, name) values (211, 'Quincas Moreira');
insert into artist(artist_id, name) values (212, 'Chris Haugen');
insert into artist(artist_id, name) values (213, 'Dan Lebowitz');
insert into artist(artist_id, name) values (214, 'roljui');

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (200, '8-Bit Dreamscape', 114, 1, '8_Bit_Dreamscape.mp3', 200, 206);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (201, 'A Quiet Thought', 116, 2, 'A_Quiet_Thought.mp3', 200, 207);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (202, 'AI 2', 115, 3, 'AI_2.mp3', 200, 208);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (203, 'Away', 123, 4, 'Away.mp3', 200, 209);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (204, 'Dark Tranquility', 183, 1, 'Dark_Tranquility.mp3', 201, 210);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (205, 'Dreaming Blue', 228, 1, 'Dreaming_Blue.mp3', 202, 201);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (206, 'Entire', 142, 5, 'Entire.mp3', 200, 211);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (207, 'New Land', 150, 6, 'New_Land.mp3', 200, 204);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (208, 'Joy to the World (Instrumental)', 150, 7, 'Joy_to_the_World_Instrumental.mp3', 200, 205);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (209, 'Mirage', 178, 8, 'Mirage.mp3', 200, 212);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (210, 'Price Check', 210, 1, 'Price_Check.mp3', 203, 200);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (211, 'Safety Net', 90, 9, 'Safety_Net.mp3', 200, 203);

insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (212, 'Ticker', 183, 10, 'Ticker.mp3', 200, 202);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (213, 'Wishful Thinking', 99, 11, 'Wishful_Thinking.mp3', 200, 213);
	
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (214, 'You\'re Not Wrong', 99, 1, 'You_re_Not_Wrong.mp3', 204, 214);

insert into user(user_id, email, name, password) values 
	(5, 'abc5@case.edu', 'EECS 341', 'test');
	
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

insert into playlist(playlist_id, name, description) values (100, 'Happy', 'For when you\'re in a good mood');
insert into playlist(playlist_id, name, description) values (101, 'Sad', 'For when you\'re in a bad mood');

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
