function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^1.1 ^0 ~ ~
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 750
scoreboard players set #asa_child_pos_y AsaMatrix -650
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -750
scoreboard players set #asa_child_pos_y AsaMatrix -650
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix -1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -150
scoreboard players set #asa_child_pos_z AsaMatrix 1150
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 1800
scoreboard players set #asa_child_pos_y AsaMatrix 1570
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -1800
scoreboard players set #asa_child_pos_y AsaMatrix 1570
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -750
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -950
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -750
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -950
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReiaParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
