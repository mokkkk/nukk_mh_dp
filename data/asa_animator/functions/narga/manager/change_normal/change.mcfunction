# 近距離
execute if entity @e[tag=NargaAttackTarget,distance=..9] run function asa_animator:narga/manager/change_normal/range_near
# 中距離
execute if entity @e[tag=NargaAttackTarget,distance=9.1..23] run function asa_animator:narga/manager/change_normal/range_middle
# 遠距離
execute if entity @e[tag=NargaAttackTarget,distance=23.1..] run function asa_animator:narga/manager/change_normal/range_far