# 近距離
execute if entity @e[tag=DynoAttackTarget,distance=..11] run function asa_animator:dyno/manager/change_normal/range_near
# 中距離
execute if entity @e[tag=DynoAttackTarget,distance=11.1..30] run function asa_animator:dyno/manager/change_normal/range_middle
# 遠距離
execute if entity @e[tag=DynoAttackTarget,distance=31.1..] run function asa_animator:dyno/manager/change_normal/range_far