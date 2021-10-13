execute at @s run tp @s ~ ~ ~ ~ ~
data merge storage asa_matrix: {Pos:[]}
data modify storage asa_matrix: Pos append from entity @s Pos[]
execute store result score #asa_parent_pos_x AsaMatrix run data get storage asa_matrix: Pos[0] 1000
execute store result score #asa_parent_pos_y AsaMatrix run data get storage asa_matrix: Pos[1] 1000
execute store result score #asa_parent_pos_z AsaMatrix run data get storage asa_matrix: Pos[2] 1000