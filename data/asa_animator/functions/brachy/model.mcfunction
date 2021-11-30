function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^1.5 ^0 ~ ~
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 1200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 900
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -900
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 780
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -780
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -51
scoreboard players set #asa_child_pos_z AsaMatrix 370
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1450
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1450
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -800
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -800
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1301
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 50
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix -950
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail3,limit=1] run function #asa_matrix:set_child_pos
