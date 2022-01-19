
# 行動カウント増加
scoreboard players add #mhdp_kushala_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_kushala_actcount_phase AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo run function asa_animator:kushala/manager/change_target

# 風纏い・大技
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @s[tag=!IsFlying] if score #mhdp_kushala_actcount_lv AsaMatrix matches 12.. if score #mhdp_kushala_lv AsaMatrix matches ..0 if entity @s[tag=!IsFlying] run tag @s add AnmCharge
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @s[tag=!IsFlying] if score #mhdp_kushala_actcount_lv AsaMatrix matches 30.. if score #mhdp_kushala_lv AsaMatrix matches 1 if entity @s[tag=!IsFlying] run tag @s add AnmCharge
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @s[tag=!IsFlying] if score #mhdp_kushala_actcount_lv AsaMatrix matches 56.. if score #mhdp_kushala_lv AsaMatrix matches 2.. if entity @s[tag=!IsFlying] run tag @s add AnmStride

# フェーズ変更
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if score #mhdp_kushala_actcount_phase AsaMatrix matches 12.. if entity @s[tag=!IsFlying] run function asa_animator:kushala/manager/change_normal/phase
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if score #mhdp_kushala_actcount_phase AsaMatrix matches 5.. if entity @s[tag=IsFlying] run function asa_animator:kushala/manager/change_flying/phase

# 通常時
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @s[tag=!IsFlying] run function asa_animator:kushala/manager/change_normal/change
# 飛行時
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo if entity @s[tag=IsFlying] run function asa_animator:kushala/manager/change_flying/change
