import os
from flask import Flask
app = Flask(_name_)

@app.route("/")

def main():
    return "Welcome!"

@app.route('/how are you')

def hello():
    return 'I am good, how are you?'

if __name__ == "__name__":
    app.run(host="0.0.0.0", port=8080)