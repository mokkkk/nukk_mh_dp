scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tp @s ~ ~-9 ~ ~ 0
tag @s remove AnmDive
tag @s add AnmDiveJump
tag @s remove InGround