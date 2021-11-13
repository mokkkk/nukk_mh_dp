scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate_reset
scoreboard players add #mhdp_narga_move_count AsaMatrix 1
execute if score #mhdp_narga_move_count AsaMatrix matches 3.. run function asa_animator:narga/anim/move/events/change