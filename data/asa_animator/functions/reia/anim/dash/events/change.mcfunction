scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate_reset
tag @s remove AnmDash

execute if entity @s[tag=DashTurned] run tag @s add AnmDashStop
execute unless entity @s[tag=DashTurned] run function asa_animator:reia/manager/change/_/turn_dash
tag @s remove DashTurned