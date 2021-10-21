# 近距離
execute if entity @e[distance=..9,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_normal/range_near

# 中距離
execute if entity @e[distance=9.1..23,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_normal/range_middle

# 遠距離
execute if entity @e[distance=23.1..,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_normal/range_far