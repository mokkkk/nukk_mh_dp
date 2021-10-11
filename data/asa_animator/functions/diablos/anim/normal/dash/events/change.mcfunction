scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
kill @e[type=marker,tag=DiablosDashTarget]
tag @s remove AnmDash
execute if entity @s[tag=StartD1] run tag @s add AnmDashAttack
execute if entity @s[tag=StartD2] run tag @s add AnmDashStop
tag @s remove StartD1
tag @s remove StartD2