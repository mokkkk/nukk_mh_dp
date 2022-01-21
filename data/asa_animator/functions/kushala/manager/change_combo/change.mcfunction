
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_kushala_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_kushala_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_kushala_anger_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:kushala/manager/change_combo/main_a
execute if entity @s[tag=ComboB] run function asa_animator:kushala/manager/change_combo/main_b
execute if entity @s[tag=ComboC] run function asa_animator:kushala/manager/change_combo/main_c
execute if entity @s[tag=ComboD] run function asa_animator:kushala/manager/change_combo/main_d
execute if entity @s[tag=ComboE] run function asa_animator:kushala/manager/change_combo/main_e
execute if entity @s[tag=ComboF] run function asa_animator:kushala/manager/change_combo/main_f
execute if entity @s[tag=ComboG] run function asa_animator:kushala/manager/change_combo/main_g
execute if entity @s[tag=ComboH] run function asa_animator:kushala/manager/change_combo/main_h
execute if entity @s[tag=ComboI] run function asa_animator:kushala/manager/change_combo/main_i
execute if entity @s[tag=ComboJ] run function asa_animator:kushala/manager/change_combo/main_j
execute if entity @s[tag=ComboK] run function asa_animator:kushala/manager/change_combo/main_k

scoreboard players add #mhdp_kushala_combo_count AsaMatrix 1