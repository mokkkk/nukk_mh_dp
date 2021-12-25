function #asa_matrix:matrix
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^1.7 ^0 ~ ~
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 2299
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 900
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -900
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix -600
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix -1300
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1199
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 780
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -780
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 500
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 600
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 50
scoreboard players set #asa_child_pos_z AsaMatrix 70
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -550
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -550
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1400
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1400
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1400
scoreboard players set #asa_child_pos_z AsaMatrix -400
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1400
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1600
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1600
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix -1300
function #asa_matrix:rotate
execute as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] run function #asa_matrix:set_child_pos
