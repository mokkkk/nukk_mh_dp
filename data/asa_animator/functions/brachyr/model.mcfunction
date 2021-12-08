function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^2.8 ^0 ~ ~
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 1699
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1199
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1200
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix -1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 1200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1180
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1180
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -101
scoreboard players set #asa_child_pos_z AsaMatrix 570
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1750
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1750
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1401
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1401
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail3,limit=1] run function #asa_matrix:set_child_pos
