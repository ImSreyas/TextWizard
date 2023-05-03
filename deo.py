from flask import *
from flask_mysqldb import MySQL
import database as database
import re, hashlib
import os
import uuid
from flask import request
from datetime import datetime
import json as json



deo = Blueprint('deo', __name__)

@deo.route('/deo/home')
def deoIndex():
    if session.get('deo'):
        deoId = session.get('deo')
        dataEntryItems = database.select("SELECT t.*, u.* FROM `text` t INNER JOIN `user` u ON t.user_id = u.user_id WHERE t.file_given=true")
        return render_template('deo/deoIndex.html', dataEntryItems = dataEntryItems, deoId = deoId)
    else:
        return redirect('/index')

@deo.route('/deo/updateText', methods = ["POST", "GET"])
def updateText():
    if session.get('deo'):
        if request.method == 'POST':
            textId = request.form.get('textId')
            textContent = request.form.get('textContent')
            result = database.update("UPDATE text SET new_text='%s', last_edited=NOW(), file_given_done='1' WHERE text_id='%s'" % (textContent, textId))
            return 'success'
        else: 
            return redirect('/home')
    else:
        return redirect('/home')

@deo.route('/deo/updateProfile', methods = ['POST', 'GET'])
def deoUpdateProfile():
    if session.get('deo'):
        if request.method == 'POST' :
            deoId = session.get('deo')
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
            
            selectUsernameAndPasswordQuery = "SELECT COUNT(*) FROM (SELECT username FROM user WHERE username = '%s' UNION ALL SELECT username FROM deo WHERE username = '%s' AND id != '%s') AS subquery" % (username, username, str(deoId))
            result = database.select(selectUsernameAndPasswordQuery)
            if username == None or username == "" :
                username = ""
                x[4] = 'please enter a username'
            elif result[0]['COUNT(*)'] > 0 :
                x[4] = 'username has been already taken...!'
                    
            for val in x :
                if val == '' :
                    continue
                else :
                    return x
            if submit == 'true':
                q = "UPDATE deo SET username='" + username + "', name='" + name + "', gender='" + gender + "', address='" + address + "', phone='" + phone + "', email='" + email + "' WHERE id='" + str(deoId) + "'"
                result = database.insert(q)
                return 'success'
            else : return y
    return redirect('/index')

@deo.route('/deo/updatePassword', methods = ["POST", "GET"])
def updateDeoPassword():
    if session.get('deo'):
        deoId = session.get('deo')
        op = request.form.get('oldPassword')
        np = request.form.get('newPassword')
        cp = request.form.get('confirmPassword')
        submit = request.form.get('submit')
        
        opM = (hashlib.md5(op.encode())).hexdigest()
        
        
        x = ['', '', '']
        y = x
        
        opQuery = database.select("SELECT * FROM deo WHERE id='%s' && password='%s'" % (deoId, opM))
        if len(opQuery) == 0 :
            x[0] = 'old password is wrong'
        if np == None or np == "" :
            np = ""
            x[1] = 'please enter a password'
        elif not re.fullmatch(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$', np) :
            x[1] = 'read the note below'
        else : 
            if np == cp :
                x[2] = ''
            else :
                x[2] = 'enter the password again' 
        for val in x :
           if val == '' :
               continue
           else :
               return x
        if submit == 'true' :
            password = (hashlib.md5(np.encode())).hexdigest()
            q = "UPDATE deo set password='%s' WHERE id='%s'" % (password, deoId)
            result = database.insert(q)
            return 'success'
        else : return y
        
    else:
        return redirect('/index')
        
@deo.route('/deo/sendFeedback', methods = ["POST", "GET"])
def sendFeedback():
    if(session.get('deo')):
        deoId = session.get('deo')
        feedbackSub = request.form.get('feedbackSub')
        feedbackContent = request.form.get('feedbackContent')
        
        x = ['', '']
        if feedbackSub == '' or feedbackSub == None :
            x[0] = 'subject should not be empty'
        if feedbackContent == '' or feedbackContent == None :
            x[1] = 'feedback should not be empty'
        for val in x :
           if val is not '' : return x
        database.insert("INSERT INTO feedback set user_id='%s', subject='%s', message='%s', user_type='deo'" % (str(deoId), feedbackSub.replace("'", "\\'"), feedbackContent.replace("'", "\\'")))
        return 'success'
    

@deo.route('/deo/profile')
def deoProfile() :
    if session.get('deo'):
        deoId = session.get('deo')
        deoData = database.select("SELECT * FROM deo where id='%s'" % (deoId))
        return render_template('deo/profile.html', deoData = deoData)
    else:
        return redirect('/index')
    
@deo.route('/deo/deoLogout')
def deoLogout():
    if session.get('deo'):
        session['deo'] = None
        return 'success'
    else:
        return redirect('/index')