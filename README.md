# datify
A music streaming service built from the ground up during EECS 341, Introduction to Database Systems 
The core functionality of this will be a user based system, which will include the ability to save and organize songs, specific to the user. Backend work such as song predictions based off of other users and searches already cached can also be implemented. Front-End will include a login system and a UI. Database will organize all users, songs, and playlists. This project provides many opportunities to develop further functionality, time permitting of course. 
Users will land on a homepage, and after logging in, they will see a list of all saved songs. They will be able to create playlists of songs stored in their library, they will also be able to update and delete playlists they have already created. The database design will have to include saving audio files which may involve saving locations of audio files in a structured form. Songs will be related to artists, albums, and total plays. Web design will be a bit involved due to many pages and actions necessary for the user, as well as streaming audio. Backend design will have to handle the login service as well as a variety of calls necessary to manage everything. Finally the analytics will be an involved process, optimizing searches across songs, artists and albums. Recommendations will be complex due to prioritizing friends picks and song relations. 
This project is ultimately rooted in database design and relations. Intelligent structure, querying, and maintenance will be key to a well performing application. 


.gitignore file functions to ignore the venv folder so it is not uploaded

config.ini acts as the configuration file for the python server which runs on the backend 

data.sql is a sql file containing sample data for the server to function 

run.py is a python program which runs the backend of the server, accessing the database and serving the webpages 

set-up is a text file with a list of terminal commands to create a space to functionally run this program 

setup-script is a bash script which eases the setup greatly if you have sudo priviledges 

setup.sql is the sql command to generate all the tables necessary for this server to function 

sql queries.txt is a text file where we designed and saved sql queries used by the server 
