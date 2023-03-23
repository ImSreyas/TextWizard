from flask import *
from flask_mysqldb import MySQL
import database as database
import re, hashlib
import os
import uuid
from ocr_core import ocr_core
from flask import request
import myModule as myModule
from werkzeug.utils import secure_filename
from datetime import datetime
import json as json



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
    return render_template('index.html')

@public.route('/ocr')
def OCRpage():
    userData = database.select("SELECT * FROM USER")
    if(session.get('user')) : return render_template('ocr.html', userData = userData, userLoginStatus = True)
    return render_template('ocr.html', userData = userData, userLoginStatus = False)
@public.route('/share', methods=['POST', 'GET'])
def share():
    if(session.get('user')):
        if(request.method == 'POST'):
            user = session.get('user')
            receiverList = request.form.get('userList')
            text = str(request.form.get('text'))
            fileName = request.form.get('fileName')
            fileFormat = request.form.get('fileFormat')
            
            receiverListNew = json.loads(receiverList)
            
            for receiver in receiverListNew :                 
                database.insert("INSERT INTO message SET sender_id='%s', receiver_id='%s', text='%s', file_name='%s', file_type='%s'" % (user, receiver, text, fileName, fileFormat))

            return 'success'
        else: return 'get method is called, post required'


@public.route('/message', methods = ['POST', 'GET'])
def message():
    if session.get('user'):
        today = datetime.now().strftime("%d-%m-%Y")
        userListQuery = "SELECT * FROM user"
        userData = database.select(userListQuery)
        chats = database.select("SELECT * FROM message")
        return render_template('message.html', userData = userData, chats = chats, today = today)
    return root()

@public.route('/sendMessage', methods = ['POST', 'GET'])
def sendMessage():
    if request.method == 'POST':
        message = request.form.get('message')
        sender = session.get('user')
        receiver = request.form.get('receiver')
        
        database.insert("INSERT INTO message SET sender_id='%s', receiver_id='%s', text='%s'" % (sender, receiver, message))
        return 'success'
        
@public.route('/post')
def post(): 
    return render_template('post.html') 

@public.route('/profile')
def profile():
    if(session.get('user')):
        userId = session.get('user')
        ud = database.select("SELECT * FROM USER")
        userData = database.select("SELECT * FROM user where user_id='%s'" % (userId))
        history = database.select("SELECT * FROM text WHERE user_id='%s'" % (userId))
        print(history)
        return render_template('profile.html', userData = userData, ud = ud, history = history)
    
@public.route('/updateProfile', methods = ['POST', 'GET'])
def updateProfile():
    if session.get('user'):
        if request.method == 'POST' :
            userId = session.get('user')
            name = request.form.get('name')
            gender = request.form.get('gender')
            address = request.form.get('address')
            email = request.form.get('email')
            phone = request.form.get('phone')
            username = request.form.get('username')
            submit = request.form.get('submit')
            
            
            x = ['', '', '', '', '']
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
            
            selectUsernameAndPasswordQuery = "SELECT user_id, username, password FROM user WHERE username='"+ username +"' && user_id!='"+ str(userId) +"'"
            result = database.select(selectUsernameAndPasswordQuery)
            if username == None or username == "" :
                username = ""
                x[4] = 'please enter a username'
            elif len(result) > 0 :
                x[4] = 'username has been already taken...!'
                    
            for val in x :
                if val == '' :
                    continue
                else :
                    return x
            if submit == 'true' :
                q = "UPDATE user SET username='" + username + "', name='" + name + "', gender='" + gender + "', address='" + address + "', phone='" + phone + "', email='" + email + "' WHERE user_id='" + str(userId) + "'"
                result = database.insert(q)
                return 'success'
            else : return y
    return 'failed'

@public.route('/login', methods = ['POST', 'GET'])
def login():
    if request.method == 'POST':
        x = ['', '']
        username = request.form.get('username')
        password = request.form.get('password')
        if username == None or username == "":
            x[0] = "enter the username"
            return x
        selectUserAndPasswordQuery = "SELECT user_id, username, password, 'user' as userType FROM user WHERE username='"+ username +"' UNION ALL SELECT id, username, password, 'deo' as userType FROM deo WHERE username='"+ username +"'"
        result = database.select(selectUserAndPasswordQuery)
        if len(result) > 0 :
            if password == None or password == "" :
                x[1] = "enter the password"
                return x
            password = (hashlib.md5(password.encode())).hexdigest()
            if result[0]['password'] == password :
                if result[0]['userType'] == 'user' :
                    session['user'] = result[0]['user_id']
                    return 'user'
                else : 
                    session['deo'] = result[0]['user_id']
                    return 'deo'
            else :
                x[1] = 'wrong password'
                return x
        else : 
            x[0] = 'invalid username'
            return x
    return render_template('login.html')

@public.route('/logout')
def logout():
    session['user'] = None
    return 'success'

@public.route('/registration', methods = ['POST', 'GET'])
def registration():
    if request.method == 'POST' :
        name = request.form.get('name')
        userType = request.form.get('userType')
        gender = request.form.get('gender')
        address = request.form.get('address')
        email = request.form.get('email')
        phone = request.form.get('phone')
        username = request.form.get('username')
        password = request.form.get('password')
        confirm_password = request.form.get('confirmPassword')
        submit = request.form.get('submit')
        
        
        userType = "user" if userType == "user" else "deo"

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
        
        selectUsernameAndPasswordQuery = "SELECT username, password FROM user WHERE username='"+ username +"' UNION SELECT username, password FROM deo WHERE username='"+ username +"'"
        result = database.select(selectUsernameAndPasswordQuery)
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
            q = "INSERT INTO "+ userType +" SET username='"+ username +"', password='"+ password +"', name='"+name+"', gender='"+gender+"', address='"+address+"', phone='"+phone+"', email='"+email+"'"
            result = database.insert(q)
            return 'success'
        else : return y
    return render_template('registration.html')


UPLOAD_FOLDER = '/static/uploads/'
ALLOWED_EXTENSIONS = {'pdf', 'png', 'jpg', 'jpeg', 'gif'}
user=Blueprint('user',__name__)
@public.route('/ocrCore', methods=['GET', 'POST'])
def upload_page():
    if request.method == 'POST':
        # check if the post request has the file part
        if 'file' not in request.files:
            return "no file selected"
        file = request.files.get('file')
        # if user does not select file, browser also
        # submit a empty part without filename
        if file.filename == '':
            return "no file name"
        # check if the file extension is allowed
        if not allowed_file(file.filename):
            return "invalid file type"
        # save the file
        lang = request.form.to_dict()
        
        filename = secure_filename(file.filename) # assuming you have imported the `secure_filename` function from the appropriate module
        unique_id = str(uuid.uuid4())
        file_ext = os.path.splitext(filename)[1]
        new_filename = unique_id + file_ext
        file.save(os.path.join(os.getcwd() + UPLOAD_FOLDER, new_filename))
        text = ocr_core(file, lang['language'])
        if(session.get('user')):
            userId = session.get('user')
            database.insert("INSERT INTO text SET user_id='"+ str(userId) +"', text='"+ text +"', new_text='"+ text +"', language='"+ lang['language'] +"', file_name='"+ new_filename +"'")   
        return text
    elif request.method == 'GET':
        return "get method is called"

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@public.route('/adminLogin', methods = ['POST', 'GET'])
def adminLogin():
    if request.method == 'POST':
        x = ['', '']
        username = request.form.get('username')
        password = request.form.get('password')
        if username == None or username == "":
            x[0] = "enter the username"
            return x
        selectUserAndPasswordQuery = "SELECT id, username, password FROM admin WHERE username='"+ username +"'"
        result = database.select(selectUserAndPasswordQuery)
        if len(result) > 0 :
            if password == None or password == "" :
                x[1] = "enter the password"
                return x
            # password = (hashlib.md5(password.encode())).hexdigest()
            if result[0]['password'] == password :
                session['admin'] = result[0]['id']
                return 'success'  
            else :
                x[1] = 'wrong password'
                return x
        else : 
            x[0] = 'invalid username'
            return x
    return render_template('adminLogin.html')

@public.route('/theme/<mode>')
def theme(mode):
    session['theme'] = mode
    return 'success'
    