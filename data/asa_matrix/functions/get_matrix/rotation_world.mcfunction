
# Sinλ Cosλ(Rotation[0])
execute store result score #asa_rotation_0 AsaMatrix run data get entity @s Rotation[0] 1000
data modify storage math: in set from entity @s Rotation[0]
function #math:sin
execute store result score #asa_matrix_sinλ AsaMatrix run data get storage math: out 1000
function #math:cos
execute store result score #asa_matrix_cosλ AsaMatrix run data get storage math: out 1000
data remove storage math: in