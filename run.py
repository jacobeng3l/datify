import configparser
from flask import Flask, render_template, request
import mysql.connector

# Read configuration from file.
config = configparser.ConfigParser()
config.read('config.ini')

# Set up application server.
app = Flask(__name__, static_url_path='/static')

# Create a function for fetching data from the database.
def sql_query(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    db.close()
    return result


def sql_execute(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    cursor.close()
    db.close()

@app.route('/', methods=['GET', 'POST'])
def template_response_with_data():
    print(request.form)
    data = {}
    if "login" in request.form:
        email = str(request.form["email"])
        password = str(request.form["psw"])
        sql = "select user_id from user where user.email={email} and user.password={password}".format(email=email, password=password)
        user = sql_query(sql)
        data['user'] = user
        return render_template('homepage.html', data=data)
    if "delete-song" in request.form:
        delete_song_id = int(request.form["delete-song"])
        sql = "delete from song where song_id={delete_song_id}".format(delete_song_id=delete_song_id)
        sql_execute(sql)
    if "library" in request.form:
        user_id = int(request.form["library"])
        sql = "select song_id, explicit, song.name, song.album_id, album.name, plays, duration, file_loc from song, album where song.album_id = album.album_id order by song.name"
        songs = sql_query(sql)
        data['songs'] = songs
        data['user'] = user_id
        return render_template('library.html', data=data)
    if "playlists" in request.form:
        user_id = int(request.form["playlists"])
        sql = "select song_id, explicit, song.name, song.album_id, album.name, plays, duration, file_loc from song, album where song.album_id = album.album_id order by song.name"
        songs = sql_query(sql)
        data['songs'] = songs
        data['user'] = user_id
        return render_template('playlists.html', data=data)
    if "friends" in request.form:
        return render_template('friends.html', data=data)
    return render_template('login_page.html')

if __name__ == '__main__':
    app.run(**config['app'])