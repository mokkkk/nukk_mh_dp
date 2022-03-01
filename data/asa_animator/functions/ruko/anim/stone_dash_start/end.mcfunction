scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmStoneDashStart
tag @s add AnmStoneDash
scoreboard players set #mhdp_ruko_dash_count AsaMatrix 5