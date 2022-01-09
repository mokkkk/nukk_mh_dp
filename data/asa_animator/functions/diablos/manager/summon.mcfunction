
execute unless entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-12 ^5 run function asa_animator:diablos/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-12 ^5 run function asa_animator:diablos/manager/health/summon

# HPセット
execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:diablos/manager/summon_hp

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に角竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b