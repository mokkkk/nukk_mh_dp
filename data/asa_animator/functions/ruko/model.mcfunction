function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=RukoParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^0.8 ^-1 ~ ~
execute as @e[type=armor_stand,tag=RukoParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix -400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix -400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix -2000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -200
scoreboard players set #asa_child_pos_z AsaMatrix 1900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 700
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -700
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 400
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -400
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1099
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix 1000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -51
scoreboard players set #asa_child_pos_z AsaMatrix 1000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -110
scoreboard players set #asa_child_pos_z AsaMatrix 250
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=ArmR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 4400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 4400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -2200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1701
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=RukoParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
