from src import app
from flask import Flask, jsonify

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/index.json')
def return_json():
    return jsonify(message="hello, world")