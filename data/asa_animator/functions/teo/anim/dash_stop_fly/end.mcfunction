scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashFly
tag @s remove IsRight

# コンボ用
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/cancel_animation

# 非コンボ用
# tag @s add AnmFlyTackleC2
