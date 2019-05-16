# Song Importer for Datify
# Created by Jacob Engelbrecht 

#Imports
import os
from mutagen.mp3 import MP3
from eyed3 import id3
from random import randint
import mysql.connector

# !!!! Path to songs to import !!!
#path = "/home/jacob/Music/Copyright_Free"
path = "/home/jacob/Documents/database/datify/static"

# SQL Query Helper
def sql_query(sql):
    db = mysql.connector.connect(user = 'team_8', password = '3fd293d9', host = 'localhost', database = 'team_8')
    cursor = db.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    db.close()
    return result

# Execute a sql query in the database
def sql_execute(sql):
    db = mysql.connector.connect(user = 'team_8', password = '3fd293d9', host = 'localhost', database = 'team_8')
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    cursor.close()
    db.close()

# Checks if an artist already exists by name, if not creates and always returns artist ID
def find_artist(name):
	sql = "SELECT artist_id from artist WHERE name = '{name}'".format(name = name)
	result = sql_query(sql)
	if len(result) > 0:
		return result[0][0]
	else:
		sql = "INSERT into artist(name) values('{name}')".format(name = name)
		sql_execute(sql)
		return(find_artist(name))

# Checks if an album already exists by name, if not creates and always returns album ID
def find_album(name, artist):
	sql = "SELECT album_id from album WHERE name = '{name}' and artist_id = {art}".format(name = name, art = artist)
	result = sql_query(sql)
	if len(result) > 0:
		return result[0][0]
	else:
		sql = "INSERT into album(name, artist_id) values('{name}', {artist})".format(name = name, artist = artist)
		sql_execute(sql)
		return(find_album(name, artist))

# Checks if given song is in library 
def in_library(name, artist, album, length):
	name = string_cleaner(name)
	sql = "SELECT artist_id, album_id, duration from song WHERE name = '{name}'".format(name = name)
	result = sql_query(sql)
	if len(result) is 0:
		return False
	else:
		for song in result:
			# If the length is the same 
			if song[2] == length:
				# If the album is the same 
				if song[1] == int(album):
					# If the song is the same
					if song[0] == int(artist):
						return True
					# If it is a random assigned artist check that it doesn't exist with another random artist
					sql = "SELECT name from artist WHERE artist_id = '{name}'".format(name = artist)
					art_name = sql_query(sql)
					if art_name in pres:
						sql = "SELECT name from artist WHERE artist_id = '{name}'".format(name = song[0])
						song_art_name = sql_query(sql)		
						if song_art_name in pres:
							return True	
		return False

# Checks for ' which would break sql query 
def string_cleaner(phrase):
    new = ""
    for i in phrase:
        if i == '\'':
            new = new + "\\\'"
        else:
            new = new + i
    return new


# List of Commands (Could be removed)
songs = []
# List of presidents to use as artificial 
pres = ["George Washington", "John Adams", "Thomas Jefferson", "James Madison", "James Monroe", "John Quincy Adams", "Andrew Jackson", "Martin Van Buren", "William Henry Harrison", "John Tyler", "James K. Polk", "Zachary Taylor", "Millard Fillmore", "Franklen Pierce", "James Buchanan", "Abraham Lincoln", "Andrew Johnson", "Ulysses S. Grant", "Rutherford B. Hayes", "James A. Garfield", "Chester A. Arthur", "Grover Cleveland", "Benjamin Harrison", "William McKinley", "Theodore Roosevelt", "William Howard Taft", "Woodrow Wilson", "Warren G. Harding", "Calvin Coolidge", "Herbert Hoover", "Franklin D. Roosevelt", "Harry S. Truman", "Dwight D. Eisenhower", "John F. Kennedy", "Lyndon B. Johnson", "Richard M. Nixon", "Gerald R. Ford", "Jimmy Carter", "Ronald Reagan", "George Bush", "Bill Clinton", "George W. Bush", "Barack H. Obama"]
i = 1

for file in os.listdir(path):
	if '.mp3' in file:
		# Set Up parsers for length and meta-data
		audio = MP3(path + '/' + file)
		tag = id3.Tag()
		tag.parse(path + '/' + file)
		# Initialize SQL Command 
		command = "INSERT INTO song(name, duration, num, file_loc, album_id, artist_id) values ("
		# Name
		if tag.title is None:
			name = (file.replace("_", " ")[:-4])
		else:
			name = (tag.title)
		command = command + "'" + string_cleaner(str(name)) + "', "

		# Length
		length = int(audio.info.length)
		command = command + (str(length)) + ", "

		# Track Number
		if tag.track_num[0] is not None:
			track_number = tag.track_num[0]
		else:
			track_number = 0
		command = command + str(track_number) + ", "

		# Location 
		command = command + "'" + str(file) + "', "

		# Artist, need artist before album
		if tag.artist is None:
			art = str(find_artist(pres[randint(0, len(pres) - 1)]))
		else:
			art = str(find_artist(string_cleaner(str(tag.artist))))

		# Album 
		if tag.album is None:
			alb = str(find_album("YouTube Audio Library", art))
		else:
			alb = str(find_album(string_cleaner(str(tag.album)), art))
		command = command + alb + ", "

		# Finish Adding in correct order
		command = command + art + ")"

		# Check if in library already 
		if not in_library(name, art, alb, length):
			# Finish and run
			#songs.append(command)
			sql_execute(command)
		else:
			print(i)
			i = i + 1

# Debug check 
for song in songs:
	print(song)