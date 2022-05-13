import requests
import re
import time
import pymysql
import sys
import threading
from datetime import datetime

headers = {
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) "
                  "Chrome/100.0.4896.75 Safari/537.36"
}


def get_chara_id(name, faction, clas, region, realm):
    input_character_name = name
    input_faction = faction
    input_class_name = clas
    input_region_name = region
    input_realm_name = realm
    output_character_id = 0
    search_url = f"https://raider.io/api/search?term={input_character_name}"  # 搜索欄的下拉菜單
    request_id = requests.get(search_url, headers=headers)  # request：搜索角色名获取的所有近似结果的数据包
    print(request_id, "获取角色ID")  # 验证是否成功 200即成功
    page_code = request_id.text
    print(page_code)
    request_id.close()
    # 解析数据
    if input_region_name == "EU" or input_region_name == "US":
        obj = re.compile(r'"type":"character","name":.*?"id":(?P<characterID>.*?),"name":"(?P<CharaName>.*?)",'
                         r'"faction":"(?P<faction>.*?)","region".*?"short_name":"(?P<region>.*?)"},"realm".*?'
                         r'"name":"(?P<realm>.*?)","altName".*?"class".*?"name":"(?P<class>.*?)","slug"', re.S)
    else:
        obj = re.compile(r'"type":"character","name":.*?"id":(?P<characterID>.*?),"name":"(?P<CharaName>.*?)",'
                         r'"faction":"(?P<faction>.*?)","region".*?"short_name":"(?P<region>.*?)"},"realm".*?'
                         r'"altName":"(?P<realm>.*?)","slug".*?"class".*?"name":"(?P<class>.*?)","slug"', re.S)

    search_result = obj.finditer(page_code)
    # 搜索栏结果 characterID=角色ID，CharaName=角色名称， faction=阵营， region=地区，realm=服务器名称，class=职业
    for it in search_result:
        if it.group("CharaName") == input_character_name and it.group("faction") == input_faction \
                and it.group("region") == input_region_name and it.group("realm") == input_realm_name \
                and input_class_name == it.group("class"):
            print("matched!")
            output_character_id = it.group("characterID")  # 将匹配到的角色id丢给总体变量，让后续程序用于调取所有地城信息
    return output_character_id


def get_dungeon_data(chara_id, chara_name):
    character_name = chara_name
    output_character_id = chara_id
    dungeons = [
        ["The Necrotic Wake", 12916], ["Plaguefall", 13228], ["Tazavesh: Streets of Wonder", 1000000],
        ["Halls of Atonement", 12831], ["Tazavesh: So'leah's Gambit", 1000001], ["Theater of Pain", 12841],
        ["De Other Side ", 13309], ["Sanguine Depths ", 12842], ["Mists of Tirna Scithe", 13334],
        ["Spires of Ascension", 12837]
    ]
    threads = []
    for d_id in dungeons:
        threads.append(
            threading.Thread(target=get_single_dungeon_data, args=(output_character_id, character_name, d_id[1]))
        )
    for thread in threads:
        thread.start()

    for thread in threads:
        thread.join()


def spiders(name, faction, clas, region, realm):
    input_character_name = name
    input_faction = faction
    input_class_name = clas
    input_region_name = region
    input_realm_name = realm
    character_id = get_chara_id(input_character_name, input_faction, input_class_name, input_region_name,
                                input_realm_name)
    if character_id != 0:
        get_dungeon_data(character_id, input_character_name)
    print(character_id)
    return character_id


def get_single_dungeon_data(character_id, character_name, dungeon_id):
    dungeon_id = dungeon_id
    character_id = character_id
    character_name = character_name
    conn = pymysql.connect(host='127.0.0.1', user='root', passwd='K715492d', db='dungeon_data')
    cur = conn.cursor()
    # 刪除数据库中已有的重复数据
    sql_delete = f"delete from dungeon_data where character_id='{character_id}' and dungeon_id='{dungeon_id}'"
    cur.execute(sql_delete)
    conn.commit()
    sql = 'insert into dungeon_data(character_id,character_name,dungeon_id,dungeon_name,myth_level,' \
          'weekly_modify1,weekly_modify2,weekly_modify3,role,score,time_remaining,time) ' \
          'values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'  # 定义一个插入数据的公式

    # 抓取单个副本数据
    dungeon_url = f"https://raider.io/api/characters/mythic-plus-runs?season=season-sl-3&" \
                  f"characterId={character_id}&dungeonId={dungeon_id}" \
                  f"&role=all&specId=0&mode=scored&affixes=all&date=all"
    request_dungeon = requests.get(dungeon_url, headers=headers)
    # 获得数据包
    dungeon_data_coded = request_dungeon.text
    request_dungeon.close()
    analyse = re.compile(
        r'"summary".*?"dungeon".*?"short_name":"(?P<short_name>.*?)","slug".*?"mythic_level":(?P<mythLevel>.*?),"clear_time_ms".*?completed_at":"(?P<playAt>.*?)",'
        r'"num_chests".*?"time_remaining_ms":(?P<timeRemain>.*?),"faction".*?"weekly_modifiers".*?"id".*?'
        r'"name":"(?P<weekly1>.*?)","description".*?"icon".*?"name":"(?P<weekly2>.*?)","description".*?'
        r'"id".*?"name":"(?P<weekly3>.*?)","description".*?"role":"(?P<role>.*?)"},"score":(?P<score>.*?)}', re.S)
    result = analyse.finditer(dungeon_data_coded)
    for i in result:
        # 提取到的时间格式需要重新匹配数据库格式 e.g.: '2022-03-31T15:21:58.000Z' >>> '2022-03-31 15:21:58'
        playtime = datetime.strptime(i.group("playAt"), '%Y-%m-%dT%H:%M:%S.000Z')
        playtime.strftime('%Y-%m-%dT%H:%M:%S')
        print(playtime)
        params = (character_id, character_name, dungeon_id, i.group("short_name"), i.group("mythLevel"),
                  i.group("weekly1"), i.group("weekly2"), i.group("weekly3"),
                  i.group("role"), i.group("score"), i.group("timeRemain"), playtime)
        # 导入数据库
        recount = cur.execute(sql, params)
        conn.commit()
    cur.close()
    conn.close()


if __name__ =="__main__":
    id = spiders("浮士德遊魂", "horde", "Mage", "TW", "水晶之刺")
    id2 = spiders("Mjoker", "horde", "Warlock", "TW", "水晶之刺")
    print(id)
