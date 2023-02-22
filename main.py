from flask import Flask, render_template, redirect, session
from flask_mysqldb import MySQL
from public import public

app = Flask(__name__)
app.register_blueprint(public)
app.config['SECRET_KEY'] = 'hello'

if __name__ == "__main__" : 
    app.run(debug=True, port=5000)

