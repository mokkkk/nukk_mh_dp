
execute unless entity @s[tag=CurrentPunchL] unless entity @s[tag=CurrentPunchR] run function asa_animator:brachyr/manager/change_normal/_/punch_l

execute if entity @s[tag=CurrentPunchR,tag=!Punched] run function asa_animator:brachyr/manager/change_normal/_/punch_l
execute if entity @s[tag=CurrentPunchL,tag=!Punched] run function asa_animator:brachyr/manager/change_normal/_/punch_r
tag @s remove Punched