
# 近距離
execute if predicate asa_animator:ruko/stay if entity @e[tag=RukoAttackTarget,distance=..13] run function asa_animator:ruko/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if entity @e[tag=RukoAttackTarget,distance=..38] run function asa_animator:ruko/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if entity @e[tag=RukoAttackTarget] run function asa_animator:ruko/manager/change_normal/range_far