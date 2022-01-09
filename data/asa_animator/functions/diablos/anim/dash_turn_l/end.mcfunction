scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashTurnL
tag @s add AnmDash
scoreboard players set #mhdp_diablos_dash_count AsaMatrix 5
summon marker ^ ^ ^10 {Tags:["DiablosDashTarget"]}
execute positioned as @e[tag=DiablosAttackTarget] rotated ~ 0 positioned ^ ^ ^3 run tp @e[type=marker,tag=DiablosDashTarget] ~ ~ ~
execute as @e[type=marker,tag=DiablosDashTarget] at @s run function asa_animator:zinogre/manager/check_ground