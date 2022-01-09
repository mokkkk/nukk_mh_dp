# 超近距離
execute if predicate asa_animator:diablos/stay if entity @e[tag=DiablosAttackTarget,distance=..4] run function asa_animator:diablos/manager/change_normal/range_snear
# 近距離
execute if predicate asa_animator:diablos/stay if entity @e[tag=DiablosAttackTarget,distance=..11] run function asa_animator:diablos/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:diablos/stay if entity @e[tag=DiablosAttackTarget,distance=..22] run function asa_animator:diablos/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:diablos/stay if entity @e[tag=DiablosAttackTarget,distance=..64] run function asa_animator:diablos/manager/change_normal/range_far