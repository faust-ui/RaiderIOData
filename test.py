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

dungeon_url = f"https://raider.io/api/characters/mythic-plus-runs?season=season-sl-3&" \
              f"characterId=42254052&dungeonId=12916" \
              f"&role=all&specId=0&mode=scored&affixes=all&date=all"

request_dungeon = requests.get(dungeon_url, headers=headers)

dungeon_data_coded = request_dungeon.text
print(dungeon_data_coded)
request_dungeon.close()

analyse = re.compile(
    r'"summary".*?"dungeon".*?"name":"(?P<dungeon_name>.*?)","short_name".*?"mythic_level":(?P<mythLevel>.*?),"clear_time_ms".*?completed_at":"(?P<playAt>.*?)",'
    r'"num_chests".*?"time_remaining_ms":(?P<timeRemain>.*?),"faction".*?"weekly_modifiers".*?"id".*?'
    r'"name":"(?P<weekly1>.*?)","description".*?"icon".*?"name":"(?P<weekly2>.*?)","description".*?'
    r'"id".*?"name":"(?P<weekly3>.*?)","description".*?"role":"(?P<role>.*?)"},"score":(?P<score>.*?)}', re.S)
result = analyse.finditer(dungeon_data_coded)
for i in result:
    print(i.group("playAt"))
    # 提取到的时间格式需要重新匹配数据库格式 e.g.: '2022-03-31T15:21:58.000Z' >>> '2022-03-31 15:21:58'
    playtime = datetime.strptime(i.group("playAt"), '%Y-%m-%dT%H:%M:%S.000Z')
    playtime.strftime('%Y-%m-%dT%H:%M:%S')
    print(playtime)

    print(i.group("dungeon_name"))
