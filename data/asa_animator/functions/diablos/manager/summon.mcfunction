
execute unless entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-9 ^5 run function asa_animator:diablos/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-9 ^5 run function asa_animator:diablos/manager/health/summon

# HPセット
scoreboard players set #mhdp_diablos_health AsaMatrix 52000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:diablos_health {"text": "角竜"}
bossbar set asa_animator:diablos_health max 52000
bossbar set asa_animator:diablos_health players @a
bossbar set asa_animator:diablos_health visible true
execute store result bossbar asa_animator:diablos_health value run scoreboard players get #mhdp_diablos_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_diablos_kill_timer AsaMatrix 0
scoreboard players set #mhdp_diablos_head_damage AsaMatrix 18000
scoreboard players set #mhdp_diablos_body_damage AsaMatrix 14000
scoreboard players set #mhdp_diablos_tail_damage AsaMatrix 12000

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に角竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b