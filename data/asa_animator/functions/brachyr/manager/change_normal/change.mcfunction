
# 一定確立で大技
execute unless entity @s[tag=Phase2] if score #mhdp_brachyr_act_count AsaMatrix matches 15.. if predicate asa_animator:random/010 run tag @s add AnmChargeBomb
execute unless entity @s[tag=Phase2] if score #mhdp_brachyr_act_count AsaMatrix matches 25.. run tag @s add AnmChargeBomb

execute if entity @s[tag=Phase2] if score #mhdp_brachyr_act_count AsaMatrix matches 3.. if predicate asa_animator:random/020 run function asa_animator:brachyr/manager/change_normal/phase2/change
execute if entity @s[tag=Phase2] if score #mhdp_brachyr_act_count AsaMatrix matches 8.. run function asa_animator:brachyr/manager/change_normal/phase2/change

# 近距離
execute if predicate asa_animator:brachyr/stay if entity @e[tag=BrachyRAttackTarget,distance=..13] run function asa_animator:brachyr/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:brachyr/stay if predicate asa_animator:brachyr/combo if entity @e[tag=BrachyRAttackTarget,distance=..25] run function asa_animator:brachyr/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:brachyr/stay if predicate asa_animator:brachyr/combo if entity @e[tag=BrachyRAttackTarget] run function asa_animator:brachyr/manager/change_normal/range_far