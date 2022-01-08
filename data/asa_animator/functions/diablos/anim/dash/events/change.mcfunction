scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
kill @e[type=marker,tag=DiablosDashTarget]
tag @s remove AnmDash
tag @s add AnmDashAttack