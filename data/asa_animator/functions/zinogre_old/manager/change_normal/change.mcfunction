# 近距離
execute if entity @e[tag=ZinogreAttackTarget,distance=..9] run function asa_animator:zinogre/manager/change_normal/range_near
# 中距離
execute if entity @e[tag=ZinogreAttackTarget,distance=10..23] run function asa_animator:zinogre/manager/change_normal/range_middle
# 遠距離
execute if entity @e[tag=ZinogreAttackTarget,distance=24..] run function asa_animator:zinogre/manager/change_normal/range_far