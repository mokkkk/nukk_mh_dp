
# Calc_Vector
execute store result score #asa_matrix_x_x AsaMatrix store result score #asa_matrix_z_x AsaMatrix run scoreboard players get #asa_move_pos_x AsaMatrix
execute store result score #asa_matrix_x_z AsaMatrix store result score #asa_matrix_z_z AsaMatrix run scoreboard players get #asa_move_pos_z AsaMatrix
execute store result score #asa_move_pos_temp_y AsaMatrix run scoreboard players get #asa_move_pos_y AsaMatrix

# X
scoreboard players operation #asa_matrix_x_x AsaMatrix *= #asa_matrix_cosλ AsaMatrix
scoreboard players operation #asa_matrix_x_z AsaMatrix *= #asa_matrix_sinλ AsaMatrix
scoreboard players operation #asa_matrix_x_x AsaMatrix -= #asa_matrix_x_z AsaMatrix
scoreboard players operation #asa_matrix_x_x AsaMatrix /= #asam_const_1000 AsaMatrix

# Z
scoreboard players operation #asa_matrix_z_x AsaMatrix *= #asa_matrix_sinλ AsaMatrix
scoreboard players operation #asa_matrix_z_z AsaMatrix *= #asa_matrix_cosλ AsaMatrix
scoreboard players operation #asa_matrix_z_z AsaMatrix += #asa_matrix_z_x AsaMatrix
scoreboard players operation #asa_matrix_z_z AsaMatrix /= #asam_const_1000 AsaMatrix

# Set_Vector
execute store result score #asa_move_pos_temp_x AsaMatrix run scoreboard players get #asa_matrix_x_x AsaMatrix
execute store result score #asa_move_pos_temp_z AsaMatrix run scoreboard players get #asa_matrix_z_z AsaMatrix