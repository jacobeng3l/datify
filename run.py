import configparser
from flask import Flask, render_template, request, url_for
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
#    if "buy-book" in request.form:
#        book_id = int(request.form["buy-book"])
#        sql = "delete from book where id={book_id}".format(book_id=book_id)
#        sql_execute(sql)
    template_data = {}
    sql = "select song_id, explicit, song.name, song.album_id, album.name, plays, duration, file_loc from song, album where song.album_id = album.album_id order by song.name"
    songs = sql_query(sql)
    template_data['songs'] = songs
    if "login" in request.form:
      return render_template('homepage.html', template_data=template_data)
    if "library" in request.form:
      return render_template('library.html', template_data=template_data)
    return render_template('login_page.html', template_data=template_data)

if __name__ == '__main__':
    app.run(**config['app'])
