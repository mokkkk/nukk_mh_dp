# 4 Damage
tag @s remove AnmDash
kill @e[type=marker,tag=TigaDashTarget]
execute if entity @s[tag=DashSpin] run tag @s add AnmDashSpin

execute if entity @s[tag=!DashSpin] run function asa_animator:tiga/manager/change_normal/_/turn
