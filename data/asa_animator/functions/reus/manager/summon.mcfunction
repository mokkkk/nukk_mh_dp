
execute unless entity @e[type=armor_stand,tag=ReusRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=ReusRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reus/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reus/manager/health/summon

# HPセット
scoreboard players set #mhdp_reus_health AsaMatrix 50000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:reus_health {"text": "火竜"}
bossbar set asa_animator:reus_health max 50000
bossbar set asa_animator:reus_health players @a
bossbar set asa_animator:reus_health visible true
execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix

# スコア初期化
scoreboard players set #mhdp_reus_flying_damage AsaMatrix 0

# タイマーセット
scoreboard players set #mhdp_reus_kill_timer AsaMatrix 0

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に火竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b