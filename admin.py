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



admin = Blueprint('admin', __name__)

@admin.route('/admin')
def adminIndex():
    if session.get('admin'):
        adminId = session.get('admin')
        userData = database.select("SELECT * FROM admin where id='%s'" % (adminId))
        history = database.select("SELECT t.*, u.* FROM `text` t INNER JOIN `user` u ON t.user_id = u.user_id;")
        return render_template('admin/adminIndex.html', userData = userData, history = history)
    else:
        return redirect('/index')
    
@admin.route('/admin/updateText', methods = ["POST", "GET"])
def updateText():
    if session.get('admin'):
        if request.method == 'POST':
            textId = request.form.get('textId')
            textContent = request.form.get('textContent')
            database.update("UPDATE text SET new_text='%s' WHERE text_id='%s'" % (textContent, textId))
            return 'success'
        else: 
            return redirect('/index')
    else:
        return redirect('/index')

@admin.route('/admin/user')
def user():
    if session.get('admin'):
        usersData = database.select("SELECT * FROM user")
        return render_template('admin/user.html', usersData = usersData)
    else:
        return redirect('/index')
    
@admin.route('/admin/deleteUser', methods = ['POST', 'GET'])
def deleteUser():
    if session.get('admin'):
        userId = request.form.get('userId')
        database.delete("DELETE FROM user WHERE user_id='%s'" % (userId))
        return 'success'
    else:
        return redirect('/index')
    
@admin.route('/admin/deleteDeo', methods = ['POST', 'GET'])
def deleteDeo():
    if session.get('admin'):
        deoId = request.form.get('deoId')
        database.delete("DELETE FROM deo WHERE id='%s'" % (deoId))
        return 'success'
    else:
        return redirect('/index')
    
@admin.route('/admin/blockDeo', methods = ['POST', 'GET'])
def blockDeo():
    if session.get('admin'):
        deoId = request.form.get('deoId')
        database.update("UPDATE deo SET block = NOT block WHERE id='%s'" % (deoId))
        return 'success'
    else:
        return redirect('/index')

@admin.route('/admin/verifyDeo', methods = ['POST', 'GET'])
def verifyDeo():
    if session.get('admin'):
        deoId = request.form.get('deoId')
        database.update("UPDATE deo SET status = NOT status WHERE id='%s'" % (deoId))
        return 'success'
    else:
        return redirect('/index')

@admin.route('/admin/deo')
def deo():
    if session.get('admin') :
        deoData = database.select("SELECT * FROM deo WHERE status='1'")
        return render_template('admin/deo.html', deoData = deoData)
    else:
        return redirect('/index')

@admin.route('/admin/req')
def req():
    if session.get('admin') :
        deoData = database.select("SELECT * FROM deo WHERE status='0'")
        return render_template('admin/request.html', deoData = deoData)
    else:
        return redirect('/index')

@admin.route('/admin/feedback')
def feedback():
    if session.get('admin'):
        feedbacks = database.select("SELECT f.*, u.name, u.username FROM feedback f JOIN user u ON f.user_id = u.user_id AND f.user_type = 'user' UNION SELECT f.*, d.name, d.username FROM feedback f JOIN deo d ON f.user_id = d.id AND f.user_type = 'deo'")
        return render_template('admin/feedback.html', feedbacks = feedbacks)
    else:
        return redirect('/index')

@admin.route('/admin/logout')
def ocrResults():
    if session.get('admin') :
        session['admin'] = None
        return 'success'
    else:
        return redirect('/index')
