function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^0.8 ^-1 ~ ~
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix -400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix -400
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix -2000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -200
scoreboard players set #asa_child_pos_z AsaMatrix 1900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 700
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -700
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 1500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 500
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -500
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1099
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix 1000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -50
scoreboard players set #asa_child_pos_z AsaMatrix 1000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 80
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -700
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1200
scoreboard players set #asa_child_pos_z AsaMatrix 400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3700
scoreboard players set #asa_child_pos_z AsaMatrix -200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3700
scoreboard players set #asa_child_pos_z AsaMatrix -200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -600
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -2300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1701
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
