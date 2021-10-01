tag @s add RotateChanged
scoreboard players add #asa_zinogre_kindex AsaMatrix 1
scoreboard players set #asa_zinogre_tick_end AsaMatrix 8
scoreboard players operation #asa_zinogre_tick_end AsaMatrix *= #asam_const_1000 AsaMatrix
scoreboard players operation #asa_zinogre_tick_end AsaMatrix /= #asa_zinogre_anmspeed AsaMatrix
scoreboard players set #asa_zinogre_move_pos_x AsaMatrix 0
scoreboard players operation #asa_zinogre_move_pos_x AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_zinogre_move_pos_x AsaMatrix /= #asam_const_1000 AsaMatrix
scoreboard players set #asa_zinogre_move_pos_y AsaMatrix 25
scoreboard players operation #asa_zinogre_move_pos_y AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_zinogre_move_pos_y AsaMatrix /= #asam_const_1000 AsaMatrix
scoreboard players set #asa_zinogre_move_pos_z AsaMatrix -50
scoreboard players operation #asa_zinogre_move_pos_z AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_zinogre_move_pos_z AsaMatrix /= #asam_const_1000 AsaMatrix
data merge storage asa_matrix: {Rotate:[0f,0f,0f]}
scoreboard players set #asa_temp AsaMatrix -2125
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2125
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadL] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -1500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2125
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck2] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -3375
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL2] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR2] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -1250
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 1250
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 2500
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 1250
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -875
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -875
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -4625
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix -4625
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix -3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run function #asa_matrix:animate_setparam
scoreboard players set #asa_temp AsaMatrix 3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[0] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix -3750
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[1] float 1 run scoreboard players get #asa_temp AsaMatrix
scoreboard players set #asa_temp AsaMatrix 0
scoreboard players operation #asa_temp AsaMatrix *= #asa_zinogre_anmspeed AsaMatrix
scoreboard players operation #asa_temp AsaMatrix /= #asam_const_1000 AsaMatrix
execute store result storage asa_matrix: Rotate[2] float 1 run scoreboard players get #asa_temp AsaMatrix
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run function #asa_matrix:animate_setparam
