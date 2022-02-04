
# 近距離
execute if predicate asa_animator:teo/stay if entity @e[tag=TeoAttackTarget,distance=..13] run function asa_animator:teo/manager/change_normal/f/range_near
# 中距離
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @e[tag=TeoAttackTarget,distance=..36] run function asa_animator:teo/manager/change_normal/f/range_middle
# 遠距離
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @e[tag=TeoAttackTarget] run function asa_animator:teo/manager/change_normal/f/range_far