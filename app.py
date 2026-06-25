from flask import Flask, request
from pymongo import MongoClient

app = Flask(__name__)

client = MongoClient("mongodb://mongo:27017/")
db = client.notesdb
notes = db.notes

@app.route('/')
def home():
    all_notes = notes.find()

    html = """
    <h1>Pesara Notes App</h1>

    <form action="/add" method="post">
        <input name="note">
        <input type="submit" value="Add Note">
    </form>

    <ul>
    """

    for n in all_notes:
        html += f"<li>{n['text']}</li>"

    html += "</ul>"

    return html

@app.route('/add', methods=['POST'])
def add():
    notes.insert_one({"text": request.form['note']})
    return home()

app.run(host="0.0.0.0", port=5000)
