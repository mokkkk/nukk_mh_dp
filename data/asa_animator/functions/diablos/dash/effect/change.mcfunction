scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tag @s remove AnmDash
execute if entity @s[tag=StartDash1] run tag @s add AnmDashAttack
execute if entity @s[tag=StartDash2] run tag @s add AnmDashStop
tag @s remove StartDash1
tag @s remove StartDash2
kill @e[type=marker,tag=DiablosDashTarget]