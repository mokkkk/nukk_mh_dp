scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate_reset
tag @s remove AnmMovePunchL
kill @e[type=marker,tag=BrachyMoveRotate]