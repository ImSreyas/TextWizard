from flask import *
from flask_mysqldb import MySQL
import database
import json

public = Blueprint('public', __name__)

# public.register_blueprint(public)
# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = ''
# app.config['MYSQL_DB'] = 'test'
# mysql = MySQL(public)

@public.route("/")
def root():
    return redirect('/index')

@public.route('/index')
def landingPage():
    data = database.select('SELECT * FROM test')
    return render_template('index.html', data = data[len(data) - 2]['name'])

@public.route('/ocr')
def OCRpage():
    return render_template('ocr.html')

@public.route('/blog')
def blog(): return render_template('blog.html') 

@public.route('/profile')
def profile():
    return render_template('profile.html')

@public.route('/login', methods = ['POST', 'GET'])
def testPage():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form("password")
    return render_template('login.html')

@public.route('/registration', methods = ['POST', 'GET'])
def registration():
    if request.method == 'POST' : 
        name = request.form['name']
        address = request.form['address']
        email = request.form['email']
        phone = request.form['phone']
        username = email
        password = request.form['password']
        query = "INSERT INTO user SET name='"+name+"', address='"+address+"', email='"+ email +"', phone='"+ phone +"'"
        result = database.insert(query)
    return render_template('registration.html')

@public.route('/test')
def test():
    return '<h1>test successful</h1>'