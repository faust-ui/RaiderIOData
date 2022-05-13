import IOData
from flask import Flask, render_template, jsonify, request
import time

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template("test.html")


@app.route('/ajax', methods=['GET', 'POST'])
def home_round():
    c_name = request.form["name"]
    print(c_name)
    ret = "这是填写的内容" + c_name
    return ret


@app.route('/img', methods=['GET', 'POST'])
def change_image():
    url = "https://raider.io/snapshots/characters/twitter/42254052/浮士德遊魂.jpg"
    time.sleep(15)
    print(url)

    return url


if __name__ == '__main__':
    app.run()
