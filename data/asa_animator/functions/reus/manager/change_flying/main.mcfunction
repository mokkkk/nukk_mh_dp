# 近距離
execute if entity @e[distance=..11,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_near

# 中距離
execute if entity @e[distance=11.1..26,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_middle

# 遠距離
execute if entity @e[distance=26.1..,tag=ReusAttackTarget] run function asa_animator:reus/manager/change_flying/range_far