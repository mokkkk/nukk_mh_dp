execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}
execute store result score #asa_rotate_current AsaMatrix run data get entity @s Pose.Head[0] 1000
execute store result score #asa_rotate_add AsaMatrix run data get entity @s ArmorItems[3].tag.RotateX 1000
scoreboard players operation #asa_rotate_current AsaMatrix += #asa_rotate_add AsaMatrix
execute if score #asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #asa_rotate_current AsaMatrix 360000
execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get #asa_rotate_current AsaMatrix

execute store result score #asa_rotate_current AsaMatrix run data get entity @s Pose.Head[1] 1000
execute store result score #asa_rotate_add AsaMatrix run data get entity @s ArmorItems[3].tag.RotateY 1000
scoreboard players operation #asa_rotate_current AsaMatrix += #asa_rotate_add AsaMatrix
execute if score #asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #asa_rotate_current AsaMatrix 360000
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get #asa_rotate_current AsaMatrix

execute store result score #asa_rotate_current AsaMatrix run data get entity @s Pose.Head[2] 1000
execute store result score #asa_rotate_add AsaMatrix run data get entity @s ArmorItems[3].tag.RotateZ 1000
scoreboard players operation #asa_rotate_current AsaMatrix += #asa_rotate_add AsaMatrix
execute if score #asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #asa_rotate_current AsaMatrix 360000
execute store result entity @s Pose.Head[2] float 0.001 run scoreboard players get #asa_rotate_current AsaMatrix