scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashTurnL
tag @s add AnmDash
tag @s add DashTurned
scoreboard players set #mhdp_reia_dash_count AsaMatrix 0