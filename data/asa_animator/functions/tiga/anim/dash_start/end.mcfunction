scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashStart
tag @s add AnmDash
scoreboard players set #mhdp_tiga_dash_count AsaMatrix 5
summon marker ^ ^ ^10 {Tags:["TigaDashTarget"]}
execute positioned as @e[tag=TigaAttackTarget] as @e[type=marker,tag=TigaDashTarget] run tp @s ~ ~ ~

scoreboard players remove #mhdp_tiga_actcount AsaMatrix 3
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_tiga_anger_count AsaMatrix 3