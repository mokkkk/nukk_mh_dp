execute at @s run tp @s ~ ~ ~ ~ ~
execute store result score #asa_parent_pos_x AsaMatrix run data get entity @s Pos[0] 1000
execute store result score #asa_parent_pos_y AsaMatrix run data get entity @s Pos[1] 1000
execute store result score #asa_parent_pos_z AsaMatrix run data get entity @s Pos[2] 1000