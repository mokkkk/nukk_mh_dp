
execute unless entity @e[type=armor_stand,tag=BrachyRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=BrachyRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachy/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachy/manager/health/summon

# HPセット
scoreboard players set #mhdp_brachy_health AsaMatrix 48000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:brachy_health {"text": "砕竜"}
bossbar set asa_animator:brachy_health max 48000
bossbar set asa_animator:brachy_health players @a
bossbar set asa_animator:brachy_health visible true
execute store result bossbar asa_animator:brachy_health value run scoreboard players get #mhdp_brachy_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_brachy_kill_timer AsaMatrix 0
scoreboard players set #mhdp_brachy_anger_damage AsaMatrix 0
scoreboard players set #mhdp_brachy_bomb_count AsaMatrix 0
scoreboard players set #mhdp_brachy_head_damage AsaMatrix 12000
scoreboard players set #mhdp_brachy_arml_damage AsaMatrix 10000
scoreboard players set #mhdp_brachy_armr_damage AsaMatrix 10000
scoreboard players set #mhdp_brachy_tail_damage AsaMatrix 10000

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に砕竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b