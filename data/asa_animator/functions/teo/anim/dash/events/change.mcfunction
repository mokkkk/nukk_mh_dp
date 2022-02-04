# 4 Damage
tag @s remove AnmDash
kill @e[type=marker,tag=TeoDashTarget]

# コンボ用
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/cancel_animation

# 非コンボ用
# tag @s add AnmDashStop
# tag @s add AnmDashFly