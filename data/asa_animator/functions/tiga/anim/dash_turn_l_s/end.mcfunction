scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashTurnLS
function asa_animator:tiga/manager/change_normal/_/dash
scoreboard players set #mhdp_tiga_dash_count AsaMatrix 5
summon marker ^ ^ ^10 {Tags:["TigaDashTarget"]}
execute positioned as @e[tag=TigaAttackTarget] as @e[type=marker,tag=TigaDashTarget] run tp @s ~ ~ ~