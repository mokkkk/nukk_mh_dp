
execute unless entity @e[type=armor_stand,tag=DynoRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=DynoRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^-10 ^6 run function asa_animator:dyno/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} positioned ^ ^-10 ^6 run function asa_animator:dyno/manager/health/summon

# HPセット
scoreboard players set #mhdp_dyno_health AsaMatrix 55000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:dyno_health {"text": "斬竜"}
bossbar set asa_animator:dyno_health max 55000
bossbar set asa_animator:dyno_health players @a
bossbar set asa_animator:dyno_health visible true
execute store result bossbar asa_animator:dyno_health value run scoreboard players get #mhdp_dyno_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_dyno_kill_timer AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_head AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_tail AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_generic AsaMatrix 0

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に斬竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b