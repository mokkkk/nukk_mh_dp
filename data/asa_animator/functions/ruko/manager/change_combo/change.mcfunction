
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_nazuti_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_nazuti_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_nazuti_anger_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:nazuti/manager/change_combo/main_a
execute if entity @s[tag=ComboB] run function asa_animator:nazuti/manager/change_combo/main_b
execute if entity @s[tag=ComboC] run function asa_animator:nazuti/manager/change_combo/main_c
execute if entity @s[tag=ComboD] run function asa_animator:nazuti/manager/change_combo/main_d
execute if entity @s[tag=ComboE] run function asa_animator:nazuti/manager/change_combo/main_e
execute if entity @s[tag=ComboF] run function asa_animator:nazuti/manager/change_combo/main_f
execute if entity @s[tag=ComboG] run function asa_animator:nazuti/manager/change_combo/main_g

scoreboard players add #mhdp_nazuti_combo_count AsaMatrix 1