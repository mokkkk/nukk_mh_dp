scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashJump
tag @s add AnmDash
scoreboard players set #mhdp_tiga_dash_count AsaMatrix 1