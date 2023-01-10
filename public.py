from flask import *

public = Blueprint('public', __name__)

@public.route("/", methods = ['get', 'post'])
def index():
    return render_template("index.html")
