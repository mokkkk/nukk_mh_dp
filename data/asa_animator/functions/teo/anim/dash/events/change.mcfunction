# 4 Damage
tag @s remove AnmDash
kill @e[type=marker,tag=TeoDashTarget]

# コンボ用
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/cancel_animation

# 非コンボ用
execute if predicate asa_animator:teo/combo if score #mhdp_teo_lv AsaMatrix matches ..1 run tag @s add AnmDashStop
execute if predicate asa_animator:teo/combo if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add AnmDashFly