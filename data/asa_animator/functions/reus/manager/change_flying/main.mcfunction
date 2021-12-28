# 近距離
execute if predicate asa_animator:reus/stay if entity @e[distance=..11,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_near

# 中距離
execute if predicate asa_animator:reus/stay if entity @e[distance=..26,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_middle

# 遠距離
execute if predicate asa_animator:reus/stay if entity @e[tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_far