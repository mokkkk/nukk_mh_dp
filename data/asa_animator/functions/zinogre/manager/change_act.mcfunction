
# 行動カウント増加
# scoreboard players add #mhdp_zinogre_actcount_lv AsaMatrix 1
# scoreboard players add #mhdp_zinogre_actcount_phase AsaMatrix 1
# execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_zinogre_anger_count AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_target

# 磁力纏い・大技
# execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if score #mhdp_zinogre_actcount_lv AsaMatrix matches 16.. if score #mhdp_zinogre_lv AsaMatrix matches ..0 run tag @s add AnmCharge
# execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if score #mhdp_zinogre_actcount_lv AsaMatrix matches 35.. if score #mhdp_zinogre_lv AsaMatrix matches 1 run tag @s add AnmCharge
# execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if score #mhdp_zinogre_actcount_lv AsaMatrix matches 60.. if score #mhdp_zinogre_lv AsaMatrix matches 2.. run tag @s add AnmSp0

# 磁力解放
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo if score #mhdp_zinogre_lv AsaMatrix matches 2.. if score #mhdp_zinogre_actcount_phase AsaMatrix matches 12.. run tag @s add AnmMagne0

# 通常時
execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_normal/change