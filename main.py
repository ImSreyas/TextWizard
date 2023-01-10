from flask import Flask, render_template, redirect
from flask_mysqldb import MySQL
from public import public

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'test'

mysql = MySQL(app)

@app.route("/")
def root():
    return redirect('/index')

@app.route('/index')
def landingPage():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM test_names")
    f = cur.fetchall()
    cur.close()
    return render_template('index.html', data = f)

@app.route('/ocr')
def OCRpage():
    return render_template('ocr.html')

@app.route('/blog')
def blog():
    return render_template('blog.html')

@app.route('/profile')
def profile():
    return render_template('profile.html')

@app.route('/login')
def testPage():
    return render_template('login.html')

@app.route('/personalPage')
def ownPage():
    return "<h1>Hello i'm SREYAS SATHEESH.</h1>"


app.register_blueprint(public)

if __name__ == "__main__" : 
    app.run(debug=True)

