function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^1.75 ^0 ~ ~
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix -1300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -201
scoreboard players set #asa_child_pos_z AsaMatrix 1800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 900
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -901
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 599
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 750
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 650
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -21
scoreboard players set #asa_child_pos_z AsaMatrix 450
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 2150
scoreboard players set #asa_child_pos_y AsaMatrix 70
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 1600
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -2150
scoreboard players set #asa_child_pos_y AsaMatrix 70
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 1600
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -900
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -900
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -2600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
