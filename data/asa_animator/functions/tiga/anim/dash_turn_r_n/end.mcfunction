scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashTurnRN
tag @s add AnmDash
scoreboard players set #mhdp_tiga_dash_count AsaMatrix 10
summon marker ^ ^ ^10 {Tags:["TigaDashTarget"]}
execute positioned as @e[tag=TigaAttackTarget] as @e[type=marker,tag=TigaDashTarget] run tp @s ~ ~ ~