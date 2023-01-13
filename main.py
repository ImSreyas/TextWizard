from flask import Flask, render_template, redirect
from flask_mysqldb import MySQL
from public import public

app = Flask(__name__)
app.register_blueprint(public)

if __name__ == "__main__" : 
    app.run(debug=True)

