from src import app
from flask import Flask, jsonify

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/api/')
def hello_api():
    return jsonify('Hello, World!')
