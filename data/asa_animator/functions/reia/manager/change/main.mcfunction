# 近距離
execute if predicate asa_animator:reia/stay if entity @e[tag=ReiaAttackTarget,distance=..7] run function asa_animator:reia/manager/change/range_near

# 中距離
execute if predicate asa_animator:reia/stay if entity @e[tag=ReiaAttackTarget,distance=..18] run function asa_animator:reia/manager/change/range_middle

# 遠距離
execute if predicate asa_animator:reia/stay if entity @e[tag=ReiaAttackTarget] run function asa_animator:reia/manager/change/range_far