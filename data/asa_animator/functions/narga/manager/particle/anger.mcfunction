execute as @e[type=armor_stand,tag=NargaParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=NargaParts,tag=HeadU,limit=1] run function #asa_matrix:matrix
scoreboard players set #asa_child_pos_x AsaMatrix 300
scoreboard players set #asa_child_pos_y AsaMatrix 1450
scoreboard players set #asa_child_pos_z AsaMatrix 350
function #asa_matrix:rotate
execute as @e[type=marker,tag=NargaAngerEye,tag=L,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -300
scoreboard players set #asa_child_pos_y AsaMatrix 1450
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=marker,tag=NargaAngerEye,tag=R,limit=1] run function #asa_matrix:set_child_pos

execute as @e[type=marker,tag=NargaAngerEye] at @s run particle dust 1 0.337 0.337 1 ~ ~ ~ 0 0 0 0 1 force