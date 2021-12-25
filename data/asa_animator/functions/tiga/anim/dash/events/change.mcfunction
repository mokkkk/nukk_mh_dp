# 4 Damage
tag @s remove AnmDash
kill @e[type=marker,tag=TigaDashTarget]
execute if entity @s[tag=DashSpin] run tag @s add AnmDashSpin
execute if entity @s[tag=DashBite] run tag @s add AnmDashBite
execute if entity @s[tag=DashStop] run tag @s add AnmDashStop

execute if entity @s[tag=!DashSpin,tag=!DashBite,tag=!DashStop] run function asa_animator:tiga/manager/change_normal/_/turn
