scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyTackleC2
kill @e[type=marker,tag=TeoMoveRotate]