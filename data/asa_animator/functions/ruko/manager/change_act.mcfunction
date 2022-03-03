
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_ruko_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_ruko_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_ruko_anger_count AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo run function asa_animator:ruko/manager/change_target

# 磁力纏い・大技
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if score #mhdp_ruko_actcount_lv AsaMatrix matches 16.. if score #mhdp_ruko_lv AsaMatrix matches ..0 run tag @s add AnmCharge
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if score #mhdp_ruko_actcount_lv AsaMatrix matches 35.. if score #mhdp_ruko_lv AsaMatrix matches 1 run tag @s add AnmCharge
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if score #mhdp_ruko_actcount_lv AsaMatrix matches 60.. if score #mhdp_ruko_lv AsaMatrix matches 2.. run tag @s add AnmSp0

# 磁力解放
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo if score #mhdp_ruko_lv AsaMatrix matches 2.. if score #mhdp_ruko_actcount_phase AsaMatrix matches 12.. run tag @s add AnmMagne0

# 通常時
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo run function asa_animator:ruko/manager/change_normal/change