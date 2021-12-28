scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmBite
execute if entity @e[distance=0..5,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_normal/_/tail