
execute unless entity @e[type=armor_stand,tag=ReusRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=ReusRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reus/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reus/manager/health/summon

# HPセット
execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:reus/manager/summon_hp

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に火竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b