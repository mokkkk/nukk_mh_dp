function #asa_matrix:matrix
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^2.3 ^0 ~ ~
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 1500
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1000
scoreboard players set #asa_child_pos_y AsaMatrix -1000
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1000
scoreboard players set #asa_child_pos_y AsaMatrix -1000
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -500
scoreboard players set #asa_child_pos_z AsaMatrix -1700
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 1200
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1400
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1400
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 900
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 900
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 800
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -500
scoreboard players set #asa_child_pos_z AsaMatrix -50
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 2200
scoreboard players set #asa_child_pos_y AsaMatrix 1950
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -2200
scoreboard players set #asa_child_pos_y AsaMatrix 1950
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -2400
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -2100
function #asa_matrix:rotate
execute as @e[distance=0..25,type=armor_stand,tag=DiablosParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
