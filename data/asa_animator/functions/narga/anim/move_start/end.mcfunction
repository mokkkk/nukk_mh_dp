scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate_reset
tag @s remove AnmMoveStart
tag @s add AnmMove
scoreboard players set #mhdp_narga_move_count AsaMatrix 0