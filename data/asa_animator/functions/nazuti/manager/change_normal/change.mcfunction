
# 近距離
execute if predicate asa_animator:nazuti/stay if entity @e[tag=NazutiAttackTarget,distance=..13] run function asa_animator:nazuti/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if entity @e[tag=NazutiAttackTarget,distance=..35] run function asa_animator:nazuti/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if entity @e[tag=NazutiAttackTarget] run function asa_animator:nazuti/manager/change_normal/range_far