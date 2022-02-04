scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyBreath

# コンボ用
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/cancel_animation

# 非コンボ用
execute if predicate asa_animator:teo/combo if score #mhdp_teo_lv AsaMatrix matches ..1 run tag @s add AnmEndFly
execute if predicate asa_animator:teo/combo if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add AnmFlyTackleC