
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_nazuti_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_nazuti_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_nazuti_anger_count AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo run function asa_animator:nazuti/manager/change_target

# 霞纏い・大技
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if score #mhdp_nazuti_actcount_lv AsaMatrix matches 8.. if score #mhdp_nazuti_lv AsaMatrix matches ..0 if entity @s[tag=!IsFlying] run tag @s add AnmCharge
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if score #mhdp_nazuti_actcount_lv AsaMatrix matches 30.. if score #mhdp_nazuti_lv AsaMatrix matches 1 if entity @s[tag=!IsFlying] run tag @s add AnmCharge
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if score #mhdp_nazuti_actcount_lv AsaMatrix matches 56.. if score #mhdp_nazuti_lv AsaMatrix matches 2.. if entity @s[tag=!IsFlying] run tag @s add AnmStride

# ステルス
# execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if score #mhdp_nazuti_actcount_phase AsaMatrix matches 12.. run function asa_animator:nazuti/manager/change_normal/phase

# 通常時
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if entity @s[tag=!IsFlying] run function asa_animator:nazuti/manager/change_normal/change
# 飛行時
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo if entity @s[tag=IsFlying] run function asa_animator:nazuti/manager/change_flying/change
