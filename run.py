import configparser
from flask import Flask, render_template, request, url_for, redirect, session
import mysql.connector

# Read configuration from file.
config = configparser.ConfigParser()
config.read('config.ini')

# Set up application server.
app = Flask(__name__, static_url_path='/static')

# Secret key for unique user sessions
app.secret_key = b'_5#y2L"F4Q8z\n\xec]/'

# Create a function for fetching data from the database.
def sql_query(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    db.close()
    return result

# Execute a sql query in the database
def sql_execute(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    cursor.close()
    db.close()

# Redirect default URL to the login page
@app.route('/')
def redir():
    error = None
    return redirect(url_for('login', error=error))

# Login page
@app.route('/login', defaults={'error': None}, methods=['GET', 'POST'])
@app.route('/login/<error>', methods=['GET', 'POST'])
def login(error):
    if request.method == 'GET':
        session.clear()
    if request.method == 'POST':
        email = str(request.form["email"])
        password = str(request.form["psw"])
        # sql query to obtain user_id of an email/psw from login attempt
        sql = "select user_id from user where user.email='{email}' and user.password='{password}'".format(email=email, password=password)
        user = sql_query(sql)
        if not user:
            error = 'Invalid credentials. Please try again.'
        else:
            session['user_id'] = user[0][0]
            return redirect(url_for('homepage'))
    return render_template('login_page.html', error=error)

# Home page
@app.route('/homepage', methods=['GET', 'POST'])
def homepage():
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    data = {}
    # get user's name from ID
    sql = "select u.name from user u where u.user_id={user_id}".format(user_id=session['user_id'])
    data['username'] = sql_query(sql)[0][0]
    # get user's most played song
    sql = "select s.song_id, s.name from plays p, song s, user u where s.song_id=p.current_song_id and u.user_id=p.user_id and u.user_id={user_id} group by s.song_id order by count(p.current_song_id) desc limit 1".format(user_id=session['user_id'])
    data['mostplayed'] = sql_query(sql)[0][1]
    # sql query to return all playlists a user has
    sql = "select p.playlist_id, p.name, p.date_created, p.description, p.plays from playlist p where p.user_id={user_id}".format(user_id=session['user_id'])
    playlists = sql_query(sql)
    data['playlists'] = playlists
    return render_template('homepage.html', data=data)

# Song library page
@app.route('/library', methods=['GET', 'POST'])
def library():
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    data = {}
    if "items" in request.form:
        for song_id in request.form["items"].split(','):
            # sql query to increase play count by 1 for each song played
            sql = "update song set song.plays = song.plays + 1 where song.song_id={song_id}".format(song_id=song_id)
            sql_execute(sql)
            # sql query to find previous song listened to by the user
            sql = "select plays_id from plays p inner join user u on p.user_id=u.user_id where u.user_id={user_id} order by plays_id desc limit 1".format(user_id=session['user_id'])
            prev = sql_query(sql)
            # sql query to update plays table with previous song
            sql = "update plays set next_song_id={song_id} where plays_id={prev}".format(song_id=song_id, user_id=session['user_id'], prev=prev[0][0])
            sql_execute(sql)
            # sql query to insert new song into plays
            sql = "insert into plays(user_id, current_song_id, times) values({user_id}, {song_id}, current_timestamp)".format(song_id=song_id, user_id=session['user_id'])
            sql_execute(sql)
    if "add-song" in request.form:
        add_song_id = int(request.form["add-song"])
        # sql query to check if song to add is in library already
        sql = "select count(1) from in_library where song_id={add_song_id} and user_id={user_id}".format(user_id=session['user_id'], add_song_id=add_song_id)
        if not sql_query(sql)[0][0]:
            # sql query for adding a song to a user's library
            sql = "insert into in_library(user_id, song_id) values({user_id}, {add_song_id})".format(user_id=session['user_id'], add_song_id=add_song_id)
            sql_execute(sql)
            data['error'] = False
        else:
            data['error'] = True
    if "delete-song" in request.form:
        delete_song_id = int(request.form["delete-song"])
        # sql query for deleting a song in a user's library
        sql = "delete from in_library where user_id={user_id} and song_id={delete_song_id}".format(user_id=session['user_id'], delete_song_id=delete_song_id)
        sql_execute(sql)
    if "addto-playlist" in request.form:
        pname = str(request.form['addto-playlist'])
        data['addToPlaylist'] = pname
        # sql query to return all songs a user has in their library NOT in the current playlist
        sql = "select s.song_id, s.explicit, s.name, s.album_id, al.name, s.plays, s.duration, s.file_loc, ar.name from song s, album al, in_library il, user u, artist ar where ar.artist_id=s.artist_id and u.user_id={user_id} and s.album_id=al.album_id and il.user_id=u.user_id and s.song_id=il.song_id and s.name not in (select s2.name from user u2, song s2, in_playlist ip2, playlist p where ip2.playlist_id=p.playlist_id and s2.song_id=ip2.song_id and p.name='{pname}' and u2.user_id = {user_id}) order by s.name".format(user_id=session['user_id'], pname=pname)
        songs = sql_query(sql)
        data['songs'] = songs
    else:
        data['addToPlaylist'] = None
        # sql query to return all songs a user has in their library
        sql = "select song.song_id, song.explicit, song.name, song.album_id, album.name, song.plays, song.duration, song.file_loc, artist.name from song, album, in_library, user, artist where artist.artist_id=song.artist_id and song.album_id=album.album_id and user.user_id={user_id} and user.user_id=in_library.user_id and in_library.song_id = song.song_id order by song.name".format(user_id=session['user_id'])
        songs = sql_query(sql)
        data['songs'] = songs
    
    # sql query to return all playlists a user has
    sql = "select p.playlist_id, p.name, p.date_created, p.description, p.plays from playlist p where p.user_id={user_id}".format(user_id=session['user_id'])
    playlists = sql_query(sql)
    data['playlists'] = playlists
    return render_template('library.html', data=data)

@app.route('/library/addToPlaylist', defaults={'name': None}, methods=['GET', 'POST'])
@app.route('/library/addToPlaylist/<name>', methods=['GET', 'POST'])
def libraryAddToPlaylist(name):
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    # sql query to add a given song to a playlist
    song_id = str(request.form["add-song-to-playlist"])
    # get the playlist ID
    sql = "select p.playlist_id from playlist p where p.user_id={user_id} and p.name='{pname}'".format(user_id=session['user_id'], pname=name)
    pid = int(sql_query(sql)[0][0])
    sql = "insert into in_playlist (playlist_id, song_id, added_by) values ({pid}, {song_id}, {user_id})".format(pid=pid, song_id=song_id, user_id=session['user_id'])
    sql_execute(sql)
    return redirect(url_for('playlists', name=name))

# User's playlists page
@app.route('/playlists', defaults={'name': None}, methods=['GET', 'POST'])
@app.route('/playlists/<name>', methods=['GET', 'POST'])
def playlists(name):
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    data = {}
    # delete a song in a user's playlist
    if 'delete-song' in request.form:
        # get the playlist ID
        sql = "select p.playlist_id from playlist p where p.user_id={user_id} and p.name='{pname}'".format(user_id=session['user_id'], pname=name)
        pid = int(sql_query(sql)[0][0])
        song_id = int(request.form["delete-song"])
        # delete the song from the playlist
        sql = "delete from in_playlist where song_id={song_id} and added_by={user_id} and playlist_id={pid}".format(song_id=song_id, user_id=session['user_id'], pid=pid)
        sql_execute(sql)
    # create and display a playlist
    if 'delete-playlist' in request.form:
        pname = str(request.form["delete-playlist"])
        # sql query to delete a user's playlist
        sql = "delete from playlist where name='{pname}' and user_id={user_id}".format(pname=pname, user_id=session['user_id'])
        sql_execute(sql)
        return redirect(url_for('library'))
    if 'pname' in request.form:
        pname = str(request.form["pname"])
        pdesc = str(request.form["pdesc"])
        # sql query to create a playlist specific to a user with a pname, pdesc, and user_id
        sql = "insert into playlist(user_id, name, description) values({user_id}, '{pname}', '{pdesc}')".format(user_id=session['user_id'], pname=pname, pdesc=pdesc)
        sql_execute(sql)
        # sql query to return the songs of the new playlist of a specific user (will be empty)
        sql = "select s.song_id, s.explicit, s.name, s.album_id, al.name, s.plays, s.duration, s.file_loc, ar.name from song s, artist ar, album al, playlist p, in_playlist ip where s.artist_id=ar.artist_id and s.album_id=al.album_id and p.playlist_id=ip.playlist_id and p.name='{pname}' and p.user_id={user_id} and s.song_id=ip.song_id".format(pname=pname, user_id=session['user_id'])
        songs = sql_query(sql)
        data['songs'] = songs
        data['currentPlaylist'] = pname
    else:
        # sql query to return the songs of the requested playlist of a specific user
        ## NEED TO REQUEST SPECIFIC USER ##
        sql = "select s.song_id, s.explicit, s.name, s.album_id, al.name, s.plays, s.duration, s.file_loc, ar.name from song s, artist ar, album al, playlist p, in_playlist ip where s.artist_id=ar.artist_id and s.album_id=al.album_id and p.playlist_id=ip.playlist_id and p.name='{name}' and p.user_id={user_id} and s.song_id=ip.song_id".format(name=name, user_id=session['user_id'])
        songs = sql_query(sql)
        data['songs'] = songs
        data['currentPlaylist'] = name
    # sql query to return all playlists a user has
    sql = "select p.playlist_id, p.name, p.date_created, p.description, p.plays from playlist p where p.user_id={user_id}".format(user_id=session['user_id'])
    playlists = sql_query(sql)
    data['playlists'] = playlists
    return render_template('playlists.html', data=data)

# Friends page
#@app.route('/friends', methods=['GET', 'POST'])
def friends():
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    data = {}
    # sql query to return friends of a user
    ## wrong current sql query ##
    sql = "select u.name, u.email from user u, is_friend f where f.follower={user_id}".format(user_id=session['user_id'])
    friends = sql_query(sql)
    data['friends'] = friends
    # sql query to return all playlists a user has
    sql = "select p.playlist_id, p.name, p.date_created, p.description, p.plays from playlist p where p.user_id={user_id}".format(user_id=session['user_id'])
    playlists = sql_query(sql)
    data['playlists'] = playlists
    return render_template('friends.html', data=data)

# Search page
@app.route('/search', methods=['GET', 'POST'])
def search():
    if 'user_id' not in session:
        error = 'You are not logged in.'
        return redirect(url_for('login', error=error))
    data = {}
    if "items" in request.form:
        for song_id in request.form["items"].split(','):
            sql = "update song set song.plays=song.plays+1 where song.song_id={song_id}".format(song_id=song_id)
            sql_execute(sql)
    data['query'] = str(request.form['search'])
    clean_query = string_cleaner(str(request.form['search']))
    print(data['query'])
    # sql query to return search results
    sql = "select s.song_id, s.explicit, s.name, s.album_id, al.name, s.plays, s.duration, s.file_loc, ar.name from song s INNER JOIN album al ON s.album_id=al.album_id INNER JOIN artist ar ON s.artist_id=ar.artist_id where al.name like '%{query}%' OR  ar.name like '%{query}%' OR s.name like '%{query}%'".format(query=clean_query)
    results = sql_query(sql)
    data['results'] = results
    # sql query for selecting the 5 reccomended songs (OLAP)
    sql = "select s.song_id, s.explicit, s.name, s.album_id, al.name, s.plays, s.duration, s.file_loc, ar.name from song s, artist ar, album al, user u, plays p where s.artist_id=ar.artist_id	and s.album_id=al.album_id and u.user_id={user_id} and p.next_song_id=s.song_id	and p.current_song_id=(select p.current_song_id	from plays p where p.user_id={user_id} order by times desc limit 1) and s.song_id not in (select s2.song_id from song s2, in_library il, user u2 where s2.song_id=il.song_id and u2.user_id={user_id} and u2.user_id = il.user_id) group by s.song_id order by count(p.next_song_id) desc limit 5".format(user_id=session['user_id'])
    recommendation = sql_query(sql)
    data['recommendation'] = recommendation
    # sql query to return all playlists a user has
    sql = "select p.playlist_id, p.name, p.date_created, p.description, p.plays from playlist p where p.user_id={user_id}".format(user_id=session['user_id'])
    playlists = sql_query(sql)
    data['playlists'] = playlists
    return render_template('search.html', data=data)

def string_cleaner(phrase):
    new = ""
    for i in phrase:
        if i == '\'':
            new = new + "\\\'"
        elif i == '\\':
            new = new + "\\\\"
        else:
            new = new + i
    return new

if __name__ == '__main__':
    app.run(**config['app'])
