
execute if score #mhdp_brachy_combo_count AsaMatrix matches 0 run function asa_animator:brachyr/manager/change_normal/_/turn
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1.. if entity @e[distance=0..8,tag=BrachyRAttackTarget] run function asa_animator:brachyr/manager/change_normal/_/hook
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1.. if predicate asa_animator:brachy/stay run function asa_animator:brachyr/manager/change_normal/_/punch
execute if score #mhdp_brachy_combo_count AsaMatrix matches 1.. run tag @s remove SComboM