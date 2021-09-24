
scoreboard objectives add AsaMatrix dummy

scoreboard players set #asam_const_1000 AsaMatrix 1000

scoreboard players set #asam_const_95 AsaMatrix 95
scoreboard players set #asam_const_100 AsaMatrix 100
scoreboard players set #asam_const_120 AsaMatrix 120

scoreboard players set #asam_const_min AsaMatrix 1200
scoreboard players set #asam_const_sec AsaMatrix 20

# forceload
forceload add -1 -1 1 1

# 設定
execute unless data storage mhdp: EnableBossSpawn run data modify storage mhdp: EnableBossSpawn set value 1b