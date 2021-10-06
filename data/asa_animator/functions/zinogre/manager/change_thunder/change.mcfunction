# 近距離
execute if entity @e[tag=ZinogreAttackTarget,distance=..9] run function asa_animator:zinogre/manager/change_thunder/range_near
# 中距離
execute if entity @e[tag=ZinogreAttackTarget,distance=9.1..23] run function asa_animator:zinogre/manager/change_thunder/range_middle
# 遠距離
execute if entity @e[tag=ZinogreAttackTarget,distance=23.1..] run function asa_animator:zinogre/manager/change_thunder/range_far