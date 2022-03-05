
# 確認
    execute unless entity @e[type=armor_stand,tag=ReiaRoot] run data modify storage mhdp: ExistMonster set value 0b
    execute if entity @e[type=armor_stand,tag=ReiaRoot] run data modify storage mhdp: ExistMonster set value 1b

# 召喚処理 
    execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:reia/manager/summon_

# エラーメッセージ
    execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に雌火竜が存在するため，召喚できません】"}

# 終了
    data modify storage mhdp: ExistMonster set value 0b