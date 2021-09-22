
# Calc_Vector
execute store result score #asa_matrix_x_x AsaMatrix store result score #asa_matrix_z_x AsaMatrix run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result score #asa_matrix_x_y AsaMatrix store result score #asa_matrix_y_y AsaMatrix store result score #asa_matrix_z_y AsaMatrix run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result score #asa_matrix_x_z AsaMatrix store result score #asa_matrix_y_z AsaMatrix store result score #asa_matrix_z_z AsaMatrix run scoreboard players get #asa_child_pos_z AsaMatrix

# X
scoreboard players operation #asa_matrix_x_x AsaMatrix *= #asa_matrix_cosΘ AsaMatrix
scoreboard players operation #asa_matrix_x_y AsaMatrix *= #asa_matrix_sinφsinΘ AsaMatrix
scoreboard players operation #asa_matrix_x_z AsaMatrix *= #asa_matrix_cosφsinΘ AsaMatrix
scoreboard players operation #asa_matrix_x_x AsaMatrix -= #asa_matrix_x_y AsaMatrix
scoreboard players operation #asa_matrix_x_x AsaMatrix -= #asa_matrix_x_z AsaMatrix
scoreboard players operation #asa_matrix_x_x AsaMatrix /= #asam_const_1000 AsaMatrix

# Y
scoreboard players operation #asa_matrix_y_y AsaMatrix *= #asa_matrix_cosφ AsaMatrix
scoreboard players operation #asa_matrix_y_z AsaMatrix *= #asa_matrix_sinφ AsaMatrix
scoreboard players operation #asa_matrix_y_y AsaMatrix -= #asa_matrix_y_z AsaMatrix
scoreboard players operation #asa_matrix_y_y AsaMatrix /= #asam_const_1000 AsaMatrix

# Z
scoreboard players operation #asa_matrix_z_x AsaMatrix *= #asa_matrix_sinΘ AsaMatrix
scoreboard players operation #asa_matrix_z_y AsaMatrix *= #asa_matrix_sinφcosΘ AsaMatrix
scoreboard players operation #asa_matrix_z_z AsaMatrix *= #asa_matrix_cosφcosΘ AsaMatrix
scoreboard players operation #asa_matrix_z_x AsaMatrix += #asa_matrix_z_y AsaMatrix
scoreboard players operation #asa_matrix_z_x AsaMatrix += #asa_matrix_z_z AsaMatrix
scoreboard players operation #asa_matrix_z_x AsaMatrix /= #asam_const_1000 AsaMatrix

# Set_Vector
execute store result score #asa_child_pos_x AsaMatrix run scoreboard players get #asa_matrix_x_x AsaMatrix
execute store result score #asa_child_pos_y AsaMatrix run scoreboard players get #asa_matrix_y_y AsaMatrix
execute store result score #asa_child_pos_z AsaMatrix run scoreboard players get #asa_matrix_z_x AsaMatrix