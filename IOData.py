import pymysql
import json

from flask import jsonify


def get_conn():
    # 建立连接
    conn = pymysql.connect(host="localhost", user="root", password="K715492d", db="dungeon_data", charset="utf8")
    # 创建游标
    cursor = conn.cursor()
    return conn, cursor


def close_conn(conn, cursor):
    if cursor:
        cursor.close()
    if conn:
        conn.close()


def query(sql, *args):
    """
    :param sql:
    :param args:
    :return:
    """
    conn, cursor = get_conn()
    cursor.execute(sql, args)
    res = cursor.fetchall()
    close_conn(conn, cursor)
    return res


def get_center1_up(ids):
    sql = f"select count(dungeon_name) from dungeon_data WHERE character_id='{ids}' group by dungeon_name"
    res = query(sql)
    times = [re[0] for re in res]
    return times


all_dungeon_name = ['NW', 'PF', 'STRT', 'HOA', 'GMBT', 'TOP', 'DOS', 'SD', 'MISTS', 'SOA']


def get_echart_left_data(ids):
    character_info = ids
    sql_dps = f"select dungeon_name,count(dungeon_name) from dungeon_data where role='dps' " \
              f"and character_id='{character_info}' group by dungeon_name"

    all_dps_times = get_data_list(sql_dps)

    sql_tank = f"select dungeon_name,count(dungeon_name) from dungeon_data where role='tank' " \
               f"and character_id='{character_info}' group by dungeon_name"
    all_tank_times = get_data_list(sql_tank)
    sql_healer = f"select dungeon_name,count(dungeon_name) from dungeon_data where role='healer' " \
                 f"and character_id='{character_info}' group by dungeon_name"
    all_healer_times = get_data_list(sql_healer)

    infos_list = [('names', all_dungeon_name), ('tank', all_tank_times),
                  ('dps', all_dps_times), ('healer', all_healer_times)]
    infos_dict = {key: value for key, value in infos_list}
    return json.dumps(infos_dict)


def get_echart_center_data(ids):
    character_info = ids
    # 计算每个副本在不同词缀下的通关次数
    sql_boss = f"select dungeon_name,count(dungeon_name) from dungeon_data " \
               f"where weekly_modify1='Tyrannical' and character_id='{character_info}' " \
               f"group by dungeon_name"
    all_result_boss = get_data_list(sql_boss)
    sql_trush = f"select dungeon_name,count(dungeon_name) from dungeon_data " \
                f"where weekly_modify1='Fortified' and character_id='{character_info}' " \
                f"group by dungeon_name"
    all_result_trush = get_data_list(sql_trush)

    # 计算每个副本的限时率
    sql_in_time = f"select dungeon_name,count(dungeon_name) from dungeon_data " \
                  f"where time_remaining>0 and character_id='{character_info}' " \
                  f"group by dungeon_name"
    count_in_time_list = get_data_list(sql_in_time)
    sql_all_pulls = f"select dungeon_name,count(dungeon_name) from dungeon_data " \
                    f"where character_id='{character_info}' group by dungeon_name"
    count_all_pulls_list = get_data_list(sql_all_pulls)

    winning_rate = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    for i in range(10):
        winning_rate[i] = round(count_in_time_list[i] / count_all_pulls_list[i] * 100, 1)

    infos_list = [('names', all_dungeon_name), ('boss', all_result_boss),
                  ('trush', all_result_trush), ("rate", winning_rate)]
    infos_dict = {key: value for key, value in infos_list}

    return json.dumps(infos_dict)


# 从数据库dungeon_data抽取数据后，有2列，副本名称+数据，按统一顺序将副本数据变成list，并返回
def get_data_list(sql):
    sql = sql
    result = query(sql)
    # 数据为0时，会导致数据错位，以下算法将空位填充为0
    data_list = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    for i in range(10):
        for it in result:
            if all_dungeon_name[i] == it[0]:
                data_list[i] = it[1]
    return data_list


def get_echart_right_data(ids):
    character_info = ids
    # 限时能力 = 所有记录中的限时率
    sql_count_in_time = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and character_id='{character_info}'"
    count_in_time = query(sql_count_in_time)
    sql_count_all_pulls = f"select count(dungeon_name) from dungeon_data where character_id='{character_info}'"
    count_all_pulls = query(sql_count_all_pulls)
    in_time_ability = rate_in_time(count_in_time[0][0], count_all_pulls[0][0])  # 限时能力

    # AOE能力 = 小怪周限时率
    sql_count_in_time_in_trush = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and character_id='{character_info}' and weekly_modify1='Fortified'"
    count_in_time_in_trush = query(sql_count_in_time_in_trush)
    sql_count_all_pulls_trush = f"select count(dungeon_name) from dungeon_data  where weekly_modify1='Fortified' and character_id='{character_info}'"
    count_all_pulls_trush = query(sql_count_all_pulls_trush)
    aoe_alibity = rate_in_time(count_in_time_in_trush[0][0], count_all_pulls_trush[0][0])  # 小怪周限时率

    # 生存能力 = （尸爆周限时率 + 周限时率）/2
    sql_count_in_time_in_brusting = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and weekly_modify2='Bursting' and character_id='{character_info}'"
    count_in_time_in_brusting = query(sql_count_in_time_in_brusting)
    sql_count_all_pulls_brusting = f"select count(dungeon_name) from dungeon_data  where weekly_modify2='Bursting' and character_id='{character_info}'"
    count_all_pulls_brusting = query(sql_count_all_pulls_brusting)
    rate_brusting = rate_in_time(count_in_time_in_brusting[0][0], count_all_pulls_brusting[0][0])  # 尸爆周限时率

    sql_count_in_time_in_explosive = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and weekly_modify3='Explosive' and character_id='{character_info}'"
    count_in_time_in_explosive = query(sql_count_in_time_in_explosive)
    sql_count_all_pulls_explosive = f"select count(dungeon_name) from dungeon_data  where weekly_modify3='Explosive' and character_id='{character_info}'"
    count_all_pulls_explosive = query(sql_count_all_pulls_explosive)
    rate_explosive = rate_in_time(count_in_time_in_explosive[0][0], count_all_pulls_explosive[0][0])  # 易爆周限时率
    servive_ability = round((rate_brusting + rate_explosive) / 2, 1)  # 生存能力

    # 冲层能力 = 24层以上限时率
    sql_count_in_time_high_level = f"select count(dungeon_name) from dungeon_data  where myth_level >24 and time_remaining>0 and character_id='{character_info}'"
    count_in_time_high_level = query(sql_count_in_time_high_level)
    sql_count_all_pulls_high_level = f"select count(dungeon_name) from dungeon_data  where myth_level >24 and character_id='{character_info}'"
    count_all_pulls_high_level = query(sql_count_all_pulls_high_level)
    high_level_ability = rate_in_time(count_in_time_high_level[0][0], count_all_pulls_high_level[0][0])  # 冲层能力

    # 团队配合能力 = （激励周限时率+鼓舞周限时率）/2
    sql_count_in_time_in_bolstering = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and weekly_modify2='Bolstering' and character_id='{character_info}'"
    count_in_time_in_bolstering = query(sql_count_in_time_in_bolstering)
    sql_count_all_pulls_bolstering = f"select count(dungeon_name) from dungeon_data  where weekly_modify2='Bolstering' and character_id='{character_info}'"
    count_all_pulls_bolstering = query(sql_count_all_pulls_bolstering)
    rate_bolstering = rate_in_time(count_in_time_in_bolstering[0][0], count_all_pulls_bolstering[0][0])  # 激励周限时率

    sql_count_in_time_in_inspiring = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and weekly_modify2='Inspiring' and character_id='{character_info}'"
    count_in_time_in_inspiring = query(sql_count_in_time_in_inspiring)
    sql_count_all_pulls_inspiring = f"select count(dungeon_name) from dungeon_data  where weekly_modify2='Inspiring' and character_id='{character_info}'"
    count_all_pulls_inspiring = query(sql_count_all_pulls_inspiring)
    rate_inspiring = rate_in_time(count_in_time_in_inspiring[0][0], count_all_pulls_inspiring[0][0])  # 激励周限时率
    team_work_ability = round((rate_bolstering + rate_inspiring) / 2, 1)  # 团队配合能力

    # 单体输出能力
    sql_count_in_time_in_boss = f"select count(dungeon_name) from dungeon_data  where time_remaining >0 and weekly_modify1='Tyrannical' and character_id='{character_info}'"
    count_in_time_in_boss = query(sql_count_in_time_in_boss)
    sql_count_all_pulls_boss = f"select count(dungeon_name) from dungeon_data  where weekly_modify1='Tyrannical' and character_id='{character_info}'"
    count_all_pulls_boss = query(sql_count_all_pulls_boss)
    single_target_alibity = rate_in_time(count_in_time_in_boss[0][0], count_all_pulls_boss[0][0])  # 暴君周限时率

    ability_list = [in_time_ability, aoe_alibity, servive_ability, high_level_ability, team_work_ability,
                    single_target_alibity]

    infos_list = [('datas', ability_list)]
    infos_dict = {key: value for key, value in infos_list}
    return json.dumps(infos_dict)


def rate_in_time(in_time, total):
    in_time = in_time
    total = total
    rate = 0
    if total != 0:
        rate = round(in_time / total * 100, 1)
    return rate


def get_ecahrt_right_up(ids):
    character_info = ids
    sql = f"select weekly_modify2, count(weekly_modify2) from dungeon_data " \
          f"where character_id='{character_info}' group by weekly_modify2 " \
          f"union select weekly_modify3, count(weekly_modify3) from dungeon_data " \
          f"where character_id='{character_info}' group by weekly_modify3"
    result = query(sql)
    data = []
    for it in result:
        name = it[0]
        value = it[1]
        data.append({"value": value, "name": name})
        print(name)
        print(value)
    return data


def get_character_info_img(ids):
    sql = f"select character_id, character_name from dungeon_data where character_id='{ids}' group by character_id"
    result = query(sql)
    character_info = result[0]
    return character_info


if __name__ == '__main__':
    data = get_echart_right_data(42254052)
    print(data)
