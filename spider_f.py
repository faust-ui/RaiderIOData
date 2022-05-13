import requests
import re
import time
import pymysql
import sys
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

    dungeon_id = int(dungeons[0][1])
    print(dungeon_id)

    # 分析数据包，提取有用数据，并写入数据库

    # 建立数据库连接
    conn = pymysql.connect(host='127.0.0.1', user='root', passwd='K715492d', db='dungeon_data')
    cur = conn.cursor()
    # 重置数据库表格中所有本角色相关记录，之后再重新写入
    # sql_delete = 'delete from dungeon_data where character_id'
    sql_delete = f"delete from dungeon_data where character_id='{output_character_id}'"
    cur.execute(sql_delete)
    conn.commit()

    sql = 'insert into dungeon_data(character_id,character_name,dungeon_id,dungeon_name,myth_level,' \
          'weekly_modify1,weekly_modify2,weekly_modify3,role,score,time_remaining,time) ' \
          'values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'  # 定义一个插入数据的公式
    # 依次抓取每个副本的数据，抓取后马上导入数据库，然后抓取下个副本的数据
    for it in range(len(dungeons)):
        dungeon_id = int(dungeons[it][1])
        dungeon_name = dungeons[it][0]
        print(dungeon_id)
        # 抓取单个副本数据
        dungeon_url = f"https://raider.io/api/characters/mythic-plus-runs?season=season-sl-3&" \
                      f"characterId={output_character_id}&dungeonId={dungeon_id}" \
                      f"&role=all&specId=0&mode=scored&affixes=all&date=all"
        # 发出请求
        request_dungeon = requests.get(dungeon_url, headers=headers)
        # 获得数据包
        dungeon_data_coded = request_dungeon.text
        # 验证是否抓取成功，200即成功
        print(request_dungeon)
        # print(dungeon_data_coded)
        # 关闭请求连接
        request_dungeon.close()
        # 提取有用数据
        analyse = re.compile(
            r'"summary".*?"dungeon".*?"short_name":"(?P<short_name>.*?)","slug".*?"mythic_level":(?P<mythLevel>.*?),"clear_time_ms".*?completed_at":"(?P<playAt>.*?)",'
            r'"num_chests".*?"time_remaining_ms":(?P<timeRemain>.*?),"faction".*?"weekly_modifiers".*?"id".*?'
            r'"name":"(?P<weekly1>.*?)","description".*?"icon".*?"name":"(?P<weekly2>.*?)","description".*?'
            r'"id".*?"name":"(?P<weekly3>.*?)","description".*?"role":"(?P<role>.*?)"},"score":(?P<score>.*?)}', re.S)
        result = analyse.finditer(dungeon_data_coded)
        # 把分析结果导入到数据库
        for i in result:
            print(i.group("playAt"))
            # 提取到的时间格式需要重新匹配数据库格式 e.g.: '2022-03-31T15:21:58.000Z' >>> '2022-03-31 15:21:58'
            playtime = datetime.strptime(i.group("playAt"), '%Y-%m-%dT%H:%M:%S.000Z')
            playtime.strftime('%Y-%m-%dT%H:%M:%S')
            print(playtime)
            params = (output_character_id, character_name, dungeon_id, i.group("short_name"), i.group("mythLevel"),
                      i.group("weekly1"), i.group("weekly2"), i.group("weekly3"),
                      i.group("role"), i.group("score"), i.group("timeRemain"), playtime)
            # 导入数据库
            recount = cur.execute(sql, params)
            conn.commit()
        time.sleep(0.1)
    # 关闭数据库连接
    print("over!")
    cur.close()
    conn.close()


def spiders(name, faction, clas, region, realm):
    c_id = get_chara_id(name, faction, clas, region, realm)
    if c_id != 0:
        get_dungeon_data(c_id, name)
    print(c_id)
    return c_id


if __name__ == "__main__":
    # idss = get_chara_id("浮士德遊魂", "horde", "Mage", "TW", "水晶之刺")  #altName
    # idss = get_chara_id("Brinkss", "horde", "Druid", "US", "Area 52")  #name
    # idss = get_chara_id("Zepie", "alliance", "Druid", "EU", "Stormrage")  #name
    # idss = get_chara_id("소풍나온물소", "horde", "Druid", "KR", "아즈샤라")  # altName
    # idss = get_chara_id("长睫毛丶", "horde", "Warrior", "CN", "凤凰之神")   # altName
    # print(idss)
    # get_dungeon_data(idss)
    # spiders("Midway", "horde", "Paladin", "EU", "Draenor")
    spiders("浮士德遊魂", "horde", "Mage", "TW", "水晶之刺")
