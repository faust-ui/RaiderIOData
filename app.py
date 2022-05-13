import IOData
from flask import Flask, render_template, jsonify, request
import spider_m

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template("index.html")


@app.route('/show')
def show():
    return render_template("main.html")


@app.route('/homeround', methods=['GET', 'POST'])
def home_round():
    return "hello"


@app.route('/center_up', methods=['GET', 'POST'])
def center_up():
    ids = request.form["id"]
    times = IOData.get_center1_up(ids)
    print(ids)
    return jsonify({"nws": times[0], "pf": times[1], "tsw": times[2], "ha": times[3],
                    "tsg": times[4], "tp": times[5], "dos": times[6], "sd": times[6],
                    "mts": times[8], "sa": times[9]})


@app.route('/echart_left', methods=['GET', 'POST'])
def echart_left():
    ids = request.form["id"]
    return IOData.get_echart_left_data(ids)


@app.route('/echart_center', methods=['GET', 'POST'])
def echart_center():
    ids = request.form["id"]
    return IOData.get_echart_center_data(ids)


@app.route('/echart_right', methods=['GET', 'POST'])
def echart_right():
    ids = request.form["id"]
    return IOData.get_echart_right_data(ids)


@app.route('/right_up', methods=['GET', 'POST'])
def right_up_table():
    ids = request.form["id"]
    data = IOData.get_ecahrt_right_up(ids)
    return jsonify({"value": data})


@app.route('/img', methods=['GET', 'POST'])
def change_image():
    ids = request.form["id"]
    chara_info = IOData.get_character_info_img(ids)
    url = "https://raider.io/snapshots/characters/twitter/" + str(chara_info[0]) + "/" + chara_info[1] + ".jpg"
    print(url)

    return url


@app.route('/search', methods=['GET', 'POST'])
def search():
    c_name = request.form["name"]
    c_realm = request.form["realm"]
    c_faction = request.form["faction"]
    c_class = request.form["clas"]
    c_region = request.form["region"]
    print(c_name)
    print(c_realm)
    print(c_faction)
    print(c_class)
    print(c_region)
    result = spider_m.spiders(c_name, c_faction, c_class, c_region, c_realm)
    return jsonify({"returns": result})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8787, debug=True)
