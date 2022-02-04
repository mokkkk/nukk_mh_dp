
# 一定確立で点火
execute if predicate asa_animator:random/050 if entity @e[type=marker,tag=TeoBomb] run tag @s add AnmIgnite
# 近距離
execute if predicate asa_animator:teo/stay if entity @e[tag=TeoAttackTarget,distance=..17] run function asa_animator:teo/manager/change_normal/b/range_near
# 中距離
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @e[tag=TeoAttackTarget,distance=..36] run function asa_animator:teo/manager/change_normal/b/range_middle
# 遠距離
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @e[tag=TeoAttackTarget] run function asa_animator:teo/manager/change_normal/b/range_far