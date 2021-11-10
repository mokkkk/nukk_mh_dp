
execute unless entity @e[type=armor_stand,tag=NargaRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=NargaRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^30 ^4 run function asa_animator:narga/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^30 ^4 run function asa_animator:narga/manager/health/summon

# HPセット
scoreboard players set #mhdp_narga_health AsaMatrix 45000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:narga_health {"text": "迅竜"}
bossbar set asa_animator:narga_health max 45000
bossbar set asa_animator:narga_health players @a
bossbar set asa_animator:narga_health visible true
execute store result bossbar asa_animator:narga_health value run scoreboard players get #mhdp_narga_health AsaMatrix

scoreboard players set #mhdp_narga_anger_damage AsaMatrix 0

# タイマーセット
scoreboard players set #mhdp_narga_kill_timer AsaMatrix 0

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に迅竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b