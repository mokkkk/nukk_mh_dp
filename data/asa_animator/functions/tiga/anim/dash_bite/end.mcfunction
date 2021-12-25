scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashBite
tag @s remove DashAct
tag @s remove DashBite