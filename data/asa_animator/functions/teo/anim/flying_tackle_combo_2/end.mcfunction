scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyTackleC2
tag @s remove AnmFlyTackleEnd
kill @e[type=marker,tag=TeoMoveRotate]

# コンボ用
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/cancel_animation