
execute unless entity @e[type=armor_stand,tag=DynoRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=DynoRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^-10 ^6 run function asa_animator:dyno/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^-10 ^6 run function asa_animator:dyno/manager/health/summon

# HPセット
execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:dyno/manager/summon_hp

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に斬竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b