-- Initial Data Input 
-- insert data into database
insert into album(album_id, name) values
	(1, 'The Click');
insert into album(album_id, name) values
	(2, 'YouTube');
insert into album(album_id, name) values
	(3, '?');

insert into artist(artist_id, name) values
	(1, 'XXXTentacion');
insert into artist(artist_id, name) values
	(2, 'George Washington');
insert into artist(artist_id, name) values
        (3, 'AJR');
    
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (1, 'Sober Up', 218, 4, '/home', 1, 3);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (2, 'Lament Golden Light', 216, 1, 'Lament_Golden_Light.mp3', 2, 2);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (3, 'Sky Skating', 216, 2, 'Sky_Skating.mp3', 2, 2);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values 
    (4, 'SAD!', 167, 4, '/home', 3, 1);

insert into user(user_id, email, name, password) values 
    (1, 'abc1@case.edu', 'Alex', 'password');

insert into playlist(playlist_id, name, user_id) values 
    (1, 'Hype Music', 1);
    
insert into in_library(user_id, song_id) values
    (1, 2);
insert into in_library(user_id, song_id) values
    (1, 3);
insert into in_library(user_id, song_id) values
    (1, 4);

insert into in_playlist(playlist_id, song_id, added_by) values
    (1, 2, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
    (1, 4, 1);

-- insert into has_playlist(user_id, playlist_id) values 
--     (1, 1);

-- Round 2 Data Input 

insert into user(user_id, email, name, password) values 
  (2, 'abc2@case.edu', 'Jacob', '2');
insert into user(user_id, email, name, password) values 
  (3, 'abc3@case.edu', 'Jason', '3');
insert into user(user_id, email, name, password) values 
  (4, 'abc4@case.edu', 'Jordan', '4');

insert into artist(artist_id, name) values
  (4, 'Kanye West');
  
insert into album(album_id, name) values
  (4, 'Yeezus');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (5, 'On Sight', 157, 1, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (6, 'Black Skinhead', 160, 2, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (7, 'I am a God', 278, 3, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (8, 'New Slaves', 265, 4, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (9, 'Hold My Liquor', 152, 5, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (10, 'I\'m In it', 177, 6, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (11, 'Blood On the Leaves', 201, 7, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (12, 'Guilt Trip', 245, 8, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (13, 'Send It Up', 157, 9, '/home', 4, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (14, 'Bound 2', 210, 10, '/home', 4, 4);
  
insert into album(album_id, name) values
  (5, 'My Beautiful Dark Twisted Fantasy');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (15, 'Dark Fantasy', 157, 1, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (16, 'Gorgeous', 168, 2, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (17, 'Power', 176, 3, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (18, 'All of the Lights (Interlude)', 189, 4, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (19, 'All of the Lights', 198, 5, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (20, 'Monster', 200, 6, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (21, 'So Appalled', 185, 7, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (22, 'Devil in a New Dress', 210, 8, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (23, 'Runaway', 238, 9, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (24, 'Hell of a Life', 170, 10, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (25, 'Blame Game', 160, 11, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (26, 'Lost in the World', 267, 12, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (27, 'Who Will Survive in America', 278, 13, '/home', 5, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (28, 'See Me Now', 246, 14, '/home', 5, 4);

insert into album(album_id, name) values
  (6, 'ye');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (29, 'I Thought About Killing You', 648, 1, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (30, 'Yikes', 289, 2, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (31, 'All Mine', 341, 3, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (32, 'Wouldn\'t leave', 270, 4, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (33, 'No Mistakes', 189, 5, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (34, 'Ghost Town', 250, 6, '/home', 6, 4);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (35, 'Violent Crimes', 216, 7, '/home', 6, 4);
  
insert into artist(artist_id, name) values
  (5, 'Imagine Dragons');
  
insert into album(album_id, name) values
  (7, 'Night Visions');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (36, 'Tiptoe', 216, 2, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (37, 'It\'s Time', 216, 3, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (38, 'Demons', 216, 4, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (39, 'On Top of the World', 216, 5, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (40, 'Amsterdam', 216, 6, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (41, 'Hear Me', 216, 7, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (42, 'Every Night', 216, 8, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (43, 'Bleeding Out', 216, 9, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (44, 'Underdog', 216, 10, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (45, 'Nothing Left To Say / Rocks', 216, 11, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (46, 'Working Man', 216, 12, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (47, 'Fallen', 216, 13, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (48, 'My Fault', 216, 14, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (49, 'Round and Round', 216, 15, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (50, 'The River', 216, 16, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (51, 'America', 216, 17, '/home', 7, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (52, 'Selene', 216, 18, '/home', 7, 5);
  
insert into album(album_id, name) values
  (8, 'Smoke and Mirrors');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (53, 'Shots', 274, 1, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (54, 'Gold', 274, 2, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (55, 'Smoke and Mirrors', 274, 3, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (56, 'I\'m So Sorry', 274, 4, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (57, 'I Bet My Life', 274, 5, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (58, 'Poloroid', 274, 6, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (59, 'Friction', 274, 7, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (60, 'It Comes Back to You', 274, 8, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (61, 'Dream', 274, 9, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (62, 'Trouble', 274, 10, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (63, 'Summer', 274, 11, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (64, 'Hopeless Opus', 274, 12, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (65, 'The Fall', 274, 13, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (66, 'Thief', 274, 14, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (67, 'The Unknown', 274, 15, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (68, 'Second Chances', 274, 16, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (69, 'Release', 274, 17, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (70, 'Warriors', 274, 18, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (71, 'Battle Cry', 274, 19, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (72, 'Monster', 274, 20, '/home', 8, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (73, 'Who We Are', 274, 21, '/home', 8, 5);
  
insert into album(album_id, name) values
  (9, 'Evolve');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (74, 'I Don\'t Know Why', 253, 1, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (75, 'Whatever It Takes', 253, 2, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (76, 'Believer', 253, 3, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (77, 'Walking the Wire', 253, 4, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (78, 'Rise Up', 253, 5, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (79, 'I\'ll Make It Up to You', 253, 6, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (80, 'Yesterday', 253, 7, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (81, 'Mouth of the River', 253, 8, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (82, 'Thunder', 253, 9, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (83, 'Start Over', 253, 10, '/home', 9, 5);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (84, 'Dancing in the Dark', 253, 11, '/home', 9, 5);
  
insert into artist(artist_id, name) values
  (6, 'The Weeknd');
  
insert into album(album_id, name) values
  (10, 'Starboy');
  
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (85, 'Starboy', 312, 1, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (86, 'Party Monster', 312, 2, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (87, 'False Alarm', 312, 3, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (88, 'Reminder', 312, 4, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (89, 'Rockin\'', 312, 5, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (90, 'Secrets', 312, 6, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (91, 'True Colors', 312, 7, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (92, 'Stargirl Interlude', 312, 8, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (93, 'Sidewalks', 312, 9, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (94, 'Six Feet Under', 312, 10, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (95, 'Love To Lay', 312, 11, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (96, 'A Lonely Night', 312, 12, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (97, 'Attention', 312, 13, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (98, 'Ordinary Life', 312, 14, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (99, 'Nothing Without You', 312, 15, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (100, 'All I Know', 312, 16, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (101, 'Die For You', 312, 17, '/home', 10, 6);
insert into song(song_id, name, duration, num, file_loc, album_id, artist_id) values
  (102, 'I Feel It Coming', 312, 1, '/home', 10, 6);

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
    
insert into playlist(playlist_id, name, user_id) values 
  (2, 'Workout', 2);

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
  
insert into playlist(playlist_id, name, user_id) values 
  (3, 'In My Feels', 1);
  
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
  
insert into playlist(playlist_id, name, user_id) values 
  (4, 'Sleepy Time', 1);
  
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 74, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 8, 1);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 85, 1);
  
insert into playlist(playlist_id, name, user_id) values 
  (4, 'Sleepy Time', 2);
  
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 74, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 8, 2);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 85, 2);
  
insert into playlist(playlist_id, name, user_id) values 
  (4, 'Sleepy Time', 3);
  
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 74, 3);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 8, 3);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 85, 3);
  
insert into playlist(playlist_id, name, user_id) values 
  (4, 'Sleepy Time', 4);
  
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 74, 4);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 8, 4);
insert into in_playlist(playlist_id, song_id, added_by) values
  (4, 85, 4);
  
-- insert into has_playlist(user_id, playlist_id) values 
--  (1, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (2, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (3, 4);
-- insert into has_playlist(user_id, playlist_id) values 
--  (4, 4);
  
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


-- 3rd batch of input with playable songs 
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
