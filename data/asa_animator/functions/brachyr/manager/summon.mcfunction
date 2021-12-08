
execute unless entity @e[type=armor_stand,tag=BrachyRRoot] run data modify storage mhdp: ExistMonster set value 0b
execute if entity @e[type=armor_stand,tag=BrachyRRoot] run data modify storage mhdp: ExistMonster set value 1b

# パーツ召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachyr/summon

# 当たり判定召喚
execute if data storage mhdp: {ExistMonster:0b} rotated ~ 0 positioned ^ ^-10 ^8 run function asa_animator:brachyr/manager/health/summon

# HPセット
scoreboard players set #mhdp_brachyr_health AsaMatrix 80000
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:brachyr_health {"text": "砕竜"}
bossbar set asa_animator:brachyr_health max 80000
bossbar set asa_animator:brachyr_health players @a
bossbar set asa_animator:brachyr_health visible true
execute store result bossbar asa_animator:brachyr_health value run scoreboard players get #mhdp_brachyr_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_brachyr_kill_timer AsaMatrix 0
scoreboard players set #mhdp_brachyr_head_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_armr_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_tail_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_act_count AsaMatrix 0
scoreboard players set #mhdp_brachyr_head_damage AsaMatrix 18000
scoreboard players set #mhdp_brachyr_arml_damage AsaMatrix 16000
scoreboard players set #mhdp_brachyr_armr_damage AsaMatrix 16000
scoreboard players set #mhdp_brachyr_tail_damage AsaMatrix 18000

# エラーメッセージ
execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に砕竜が存在するため，召喚できません】"}

data modify storage mhdp: ExistMonster set value 0b