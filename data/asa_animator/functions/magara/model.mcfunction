function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body1,limit=1] rotated ~ 0 run tp @s ^0 ^0.5 ^0 ~ ~
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 1400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 150
scoreboard players set #asa_child_pos_z AsaMatrix -800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1200
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1200
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix -100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Body0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix 2700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1100
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 1700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1100
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 1700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 400
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL0,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 400
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 50
scoreboard players set #asa_child_pos_z AsaMatrix 800
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 799
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck0,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Neck0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 700
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=HeadU,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=HeadU,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=HeadU,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 199
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=HeadL,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 1400
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix 1600
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=ArmR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 4000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL1,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 1000
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL000,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 4000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmL2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 500
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 3500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL100,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL100,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL100,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 4250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 260
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL101,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1850
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL110,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 4250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL111,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL000,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL000,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 50
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL001,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 4350
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL010,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 2100
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingL011,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 300
scoreboard players set #asa_child_pos_z AsaMatrix 4000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR1,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -1000
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR000,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 100
scoreboard players set #asa_child_pos_z AsaMatrix 4000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WArmR2,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -500
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 3500
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR100,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR100,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR100,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -4250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 260
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR101,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1850
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR110,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -4250
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR111,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR000,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR000,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix -50
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR001,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -4350
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR010,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix -2100
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix 4300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=WingR011,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1900
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1701
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 0
scoreboard players set #asa_child_pos_z AsaMatrix -1801
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=Tail3,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix -200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegL3,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR0,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR0,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix -200
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR1,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR1,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR1,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 200
scoreboard players set #asa_child_pos_z AsaMatrix -1100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR2,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR2,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR2,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -1100
scoreboard players set #asa_child_pos_z AsaMatrix 100
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=MagaraParts,tag=LegR3,limit=1] run function #asa_matrix:set_child_pos
