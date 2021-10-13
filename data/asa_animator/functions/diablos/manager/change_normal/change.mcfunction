# 超近距離
execute if entity @e[tag=DiablosAttackTarget,distance=..3] run function asa_animator:diablos/manager/change_normal/range_snear
# 近距離
execute if entity @e[tag=DiablosAttackTarget,distance=3.1..11] run function asa_animator:diablos/manager/change_normal/range_near
# 中距離
execute if entity @e[tag=DiablosAttackTarget,distance=11.1..18] run function asa_animator:diablos/manager/change_normal/range_middle
# 遠距離
execute if entity @e[tag=DiablosAttackTarget,distance=18.1..] run function asa_animator:diablos/manager/change_normal/range_far