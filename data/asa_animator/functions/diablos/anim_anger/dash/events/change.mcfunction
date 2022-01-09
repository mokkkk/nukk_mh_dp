scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
kill @e[type=marker,tag=DiablosDashTarget]
tag @s remove AnmDash
execute if entity @s[tag=DashTurned] run tag @s add AnmDashAttack
execute unless entity @s[tag=DashTurned] run function asa_animator:diablos/manager/change_normal/_/dash_turn
tag @s add DashTurned