function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^0.65 ^0 ~ ~
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 600
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -600
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 550
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -340
scoreboard players set #asa_child_pos_z AsaMatrix 80
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 1500
scoreboard players set #asa_child_pos_y AsaMatrix 1400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -1500
scoreboard players set #asa_child_pos_y AsaMatrix 1400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix 200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix -1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
