
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_teo_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_teo_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_teo_anger_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:teo/manager/change_combo/main_a
execute if entity @s[tag=ComboB] run function asa_animator:teo/manager/change_combo/main_b
execute if entity @s[tag=ComboC] run function asa_animator:teo/manager/change_combo/main_c
execute if entity @s[tag=ComboD] run function asa_animator:teo/manager/change_combo/main_d

scoreboard players add #mhdp_teo_combo_count AsaMatrix 1