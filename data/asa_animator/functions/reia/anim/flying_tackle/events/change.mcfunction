scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDash

execute if entity @s[tag=DashTurned] run tag @s add AnmDashBite
execute unless entity @s[tag=DashTurned] run tag @s add AnmDashTurn
tag @s remove DashTurned