
# 怒り時，一定確立で広範囲爆破
execute if entity @s[tag=IsAnger] if predicate asa_animator:random/010 run tag @s add AnmHeadTrap
execute if entity @s[tag=IsAnger] if score #mhdp_brachy_anger_count AsaMatrix matches 17.. run tag @s add AnmHeadTrap

# 粘菌補充
execute if predicate asa_animator:brachy/stay if score #mhdp_brachy_bomb_count AsaMatrix matches 25.. run tag @s add AnmCharge

# 近距離
execute if predicate asa_animator:brachy/stay if entity @e[tag=BrachyAttackTarget,distance=..10] run function asa_animator:brachy/manager/change_normal/range_near
# 中距離
execute if predicate asa_animator:brachy/stay if predicate asa_animator:brachy/combo if entity @e[tag=BrachyAttackTarget,distance=..25] run function asa_animator:brachy/manager/change_normal/range_middle
# 遠距離
execute if predicate asa_animator:brachy/stay if predicate asa_animator:brachy/combo if entity @e[tag=BrachyAttackTarget] run function asa_animator:brachy/manager/change_normal/range_far