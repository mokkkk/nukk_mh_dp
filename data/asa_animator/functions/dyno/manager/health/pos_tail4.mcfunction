
execute as @e[type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
function #asa_matrix:set_child_pos
