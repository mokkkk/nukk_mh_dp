
# 近距離
execute if predicate asa_animator:tiga/stay if entity @e[tag=TigaAttackTarget,distance=..10] run function asa_animator:tiga/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:tiga/stay if entity @e[tag=TigaAttackTarget,distance=..30] run function asa_animator:tiga/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:tiga/stay if entity @e[tag=TigaAttackTarget] run function asa_animator:tiga/manager/change_normal/range_far