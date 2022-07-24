
# 近距離
execute if predicate asa_animator:zinogre/stay if entity @e[tag=ZinogreAttackTarget,distance=..15] run function asa_animator:zinogre/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if entity @e[tag=ZinogreAttackTarget,distance=..32] run function asa_animator:zinogre/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if entity @e[tag=ZinogreAttackTarget] run function asa_animator:zinogre/manager/change_normal/range_far
