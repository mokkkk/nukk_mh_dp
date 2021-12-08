
execute unless entity @e[type=armor_stand,tag=ZinogreRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=ZinogreRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~20 ~ run function asa_animator:zinogre/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~20 ~ run function asa_animator:zinogre/manager/health/summon

# HPセット
scoreboard players set #mhdp_zinogre_health AsaMatrix 42000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:zinogre_health {"text": "雷狼竜"}
bossbar set asa_animator:zinogre_health max 42000
bossbar set asa_animator:zinogre_health players @a
bossbar set asa_animator:zinogre_health visible true
execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix

scoreboard players set #asa_zinogre_charge AsaMatrix 0
scoreboard players set #asa_zinogre_charge_damage AsaMatrix 0
scoreboard players set #mhdp_zinogre_head_damage AsaMatrix 10000
scoreboard players set #mhdp_zinogre_arml_damage AsaMatrix 9000
scoreboard players set #mhdp_zinogre_armr_damage AsaMatrix 9000
scoreboard players set #mhdp_zinogre_tail_damage AsaMatrix 10000

# タイマーセット
scoreboard players set #mhdp_zinogre_kill_timer AsaMatrix 0

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に雷狼竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b