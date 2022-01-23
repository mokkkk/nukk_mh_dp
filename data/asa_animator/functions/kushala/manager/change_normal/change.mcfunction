
# 近距離
execute if predicate asa_animator:kushala/stay if entity @e[tag=KushalaAttackTarget,distance=..13] run function asa_animator:kushala/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @e[tag=KushalaAttackTarget,distance=..36] run function asa_animator:kushala/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @e[tag=KushalaAttackTarget] run function asa_animator:kushala/manager/change_normal/range_far