
# Sinφ Cosφ(Pose[0])
data modify storage asa_matrix: Temp set from entity @s
execute if data storage asa_matrix: Temp.Pose.Head run data modify storage math: in set from storage asa_matrix: Temp.Pose.Head[0]
execute unless data storage asa_matrix: Temp.Pose.Head run data modify storage math: in set value 0
function #math:sin
execute store result score #asa_matrix_sinφ AsaMatrix store result score #asa_matrix_sinφsinΘ AsaMatrix store result score #asa_matrix_sinφcosΘ AsaMatrix run data get storage math: out 1000
function #math:cos
execute store result score #asa_matrix_cosφ AsaMatrix store result score #asa_matrix_cosφsinΘ AsaMatrix store result score #asa_matrix_cosφcosΘ AsaMatrix run data get storage math: out 1000

# SinΘ CosΘ(Pose[1])
execute if data storage asa_matrix: Temp.Pose.Head run data modify storage math: in set from storage asa_matrix: Temp.Pose.Head[1]
execute unless data storage asa_matrix: Temp.Pose.Head run data modify storage math: in set value 0
function #math:sin
execute store result score #asa_matrix_sinΘ AsaMatrix run data get storage math: out 1000
function #math:cos
execute store result score #asa_matrix_cosΘ AsaMatrix run data get storage math: out 1000

# Calc_Matrix
scoreboard players operation #asa_matrix_sinφsinΘ AsaMatrix *= #asa_matrix_sinΘ AsaMatrix
scoreboard players operation #asa_matrix_cosφsinΘ AsaMatrix *= #asa_matrix_sinΘ AsaMatrix
scoreboard players operation #asa_matrix_sinφcosΘ AsaMatrix *= #asa_matrix_cosΘ AsaMatrix
scoreboard players operation #asa_matrix_cosφcosΘ AsaMatrix *= #asa_matrix_cosΘ AsaMatrix

scoreboard players operation #asa_matrix_sinφsinΘ AsaMatrix /= #asam_const_1000 AsaMatrix
scoreboard players operation #asa_matrix_cosφsinΘ AsaMatrix /= #asam_const_1000 AsaMatrix
scoreboard players operation #asa_matrix_sinφcosΘ AsaMatrix /= #asam_const_1000 AsaMatrix
scoreboard players operation #asa_matrix_cosφcosΘ AsaMatrix /= #asam_const_1000 AsaMatrix