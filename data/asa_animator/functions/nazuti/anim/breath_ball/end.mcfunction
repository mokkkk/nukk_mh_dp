scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate_reset
tag @s remove AnmBreathB
execute if predicate asa_animator:nazuti/combo if predicate asa_animator:random/070 run function asa_animator:nazuti/manager/change_normal/_/wind