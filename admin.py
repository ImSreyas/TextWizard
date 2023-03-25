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

@admin.route('/admin/user')
def user():
    if session.get('admin'):
        return render_template('admin/user.html')

@admin.route('/admin/deo')
def deo():
    if session.get('admin'):
        return render_template('admin/deo.html')


@admin.route('/admin/feedback')
def feedback():
    if session.get('admin'):
        return render_template('admin/feedback.html')

@admin.route('/admin/logout')
def ocrResults():
    if session.get('admin') :
        session['admin'] = None
        return 'success'
