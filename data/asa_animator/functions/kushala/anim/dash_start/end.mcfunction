scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashStart
tag @s add AnmDash
scoreboard players set #mhdp_kushala_dash_count AsaMatrix 5
