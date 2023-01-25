from flask import *
from flask_mysqldb import MySQL
import database
import re, hashlib


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
        x = ['', '']
        username = request.form.get('username')
        password = request.form.get('password')
        if username == None or username == "":
            x[0] = "enter the username"
            return x
        result = database.select("SELECT * FROM login WHERE username='%s'" % (username))
        if len(result) > 0 :
            if password == None or password == "" :
                x[1] = "enter the password"
                return x
            password = (hashlib.md5(password.encode())).hexdigest()
            if result[0]['password'] == password :
                if result[0]['user_type'] == 'user' :
                    session['admin'] = result[0]['id']
                    return 'user'
                else : 
                    session['user'] = result[0]['id']
                    return 'admin'
            else :
                x[1] = 'wrong password'
                return x
        else : 
            x[0] = 'invalid username'
            return x
    return render_template('login.html')

@public.route('/registration', methods = ['POST', 'GET'])
def registration():
    if request.method == 'POST' :
        name = request.form.get('name')
        gender = request.form.get('gender')
        address = request.form.get('address')
        email = request.form.get('email')
        phone = request.form.get('phone')
        username = request.form.get('username')
        password = request.form.get('password')
        confirm_password = request.form.get('confirmPassword')
        submit = request.form.get('submit')
        
        

        x = ['', '', '', '', '', '', '']
        y = x
        
        if name == None or name == "" :
            name = ""
            x[0] = 'please enter a name' 
             
        if address == None or address == "" :
            address = ""
            x[1] = 'please enter an address'
            
        if phone == None or phone == "" :
            phone = ""
            x[2] = 'please enter a phone number'
        elif not re.fullmatch(r'^[0-9]{10}$', phone) :
            x[2] = 'invalid phone number...!'
            
        if email == None or email == "" :
            email = ""
            x[3] = 'please enter an email'
        elif not re.fullmatch(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b', email) :
            x[3]  = 'invalid email id...!'
            
        result = database.select("SELECT * FROM login WHERE username='"+ username +"'")
        if username == None or username == "" :
            username = ""
            x[4] = 'please enter a username'
        elif len(result) > 0 :
            x[4] = 'username has been already taken...!'
            
        if confirm_password == None or confirm_password == "" :
            confirm_password = ""
        if password == None or password == "" :
            password = ""
            x[5] = 'please enter a password'
        elif not re.fullmatch(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$', password) :
            x[5] = 'read the note below'
        else : 
            if password == confirm_password :
                x[6] = ''
            else :
                x[6] = 'enter the password again' 
                
        for val in x :
           if val == '' :
               continue
           else :
               return x
        if submit == 'true' :
            password = (hashlib.md5(password.encode())).hexdigest()
            q = "INSERT INTO login SET username='"+ username +"', password='"+ password +"', user_type='user'"
            result = database.insert(q)
            q = "SELECT id FROM login WHERE username='"+ username+"'"
            result = database.select(q)
            result = str(result[0]['id'])
            q = "INSERT INTO user SET id='"+ result +"', name='"+name+"', gender='"+gender+"', address='"+address+"', phone='"+phone+"', email='"+email+"'"
            result = database.insert(q)
            return 'success'
        else : return y
    return render_template('registration.html')

@public.route('/theme/<mode>')
def theme(mode):
    session['theme'] = mode
    return 'success'
    