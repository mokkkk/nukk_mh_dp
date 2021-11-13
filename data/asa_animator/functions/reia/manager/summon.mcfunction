
execute unless entity @e[type=armor_stand,tag=ReiaRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=ReiaRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reia/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ~ ~50 ~ run function asa_animator:reia/manager/health/summon

# HPセット
scoreboard players set #mhdp_reia_health AsaMatrix 48000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:reia_health {"text": "雌火竜"}
bossbar set asa_animator:reia_health max 48000
bossbar set asa_animator:reia_health players @a
bossbar set asa_animator:reia_health visible true
execute store result bossbar asa_animator:reia_health value run scoreboard players get #mhdp_reia_health AsaMatrix

# スコア初期化
scoreboard players set #mhdp_reia_flying_damage AsaMatrix 0
scoreboard players set #mhdp_reia_head_damage AsaMatrix 12000
scoreboard players set #mhdp_reia_body_damage AsaMatrix 14000
scoreboard players set #mhdp_reia_tail_damage AsaMatrix 10000

# タイマーセット
scoreboard players set #mhdp_reia_kill_timer AsaMatrix 0

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に雌火竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b