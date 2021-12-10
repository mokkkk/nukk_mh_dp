
execute unless entity @e[type=armor_stand,tag=BrachyRRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=BrachyRRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachyr/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachyr/manager/health/summon

# HP設定
execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:brachyr/manager/summon_hp

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に砕竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b