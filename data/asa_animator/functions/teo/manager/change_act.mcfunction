
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_teo_actcount_lv AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_teo_anger_count AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo run function asa_animator:teo/manager/change_target

# 状態変化・大技
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if score #mhdp_teo_actcount_lv AsaMatrix matches 10.. if score #mhdp_teo_lv AsaMatrix matches ..0 run tag @s add AnmCharge
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if score #mhdp_teo_actcount_lv AsaMatrix matches 22.. if score #mhdp_teo_lv AsaMatrix matches 1 run tag @s add AnmCharge
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if score #mhdp_teo_actcount_lv AsaMatrix matches 50.. if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add AnmSupernova

# 龍炎纏い時
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @s[tag=IsFire] run function asa_animator:teo/manager/change_normal/change_f
# 粉塵纏い時
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo if entity @s[tag=IsBomb] run function asa_animator:teo/manager/change_normal/change_b