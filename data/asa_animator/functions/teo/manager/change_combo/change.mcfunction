
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_teo_actcount_lv AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_teo_anger_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:teo/manager/change_combo/main_a
execute if entity @s[tag=ComboB] run function asa_animator:teo/manager/change_combo/main_b
execute if entity @s[tag=ComboC] run function asa_animator:teo/manager/change_combo/main_c
execute if entity @s[tag=ComboD] run function asa_animator:teo/manager/change_combo/main_d
execute if entity @s[tag=ComboE] run function asa_animator:teo/manager/change_combo/main_e
execute if entity @s[tag=ComboF] run function asa_animator:teo/manager/change_combo/main_f
execute if entity @s[tag=ComboFA] run function asa_animator:teo/manager/change_combo/main_fa
execute if entity @s[tag=ComboFB] run function asa_animator:teo/manager/change_combo/main_fb
execute if entity @s[tag=ComboFC] run function asa_animator:teo/manager/change_combo/main_fc
execute if entity @s[tag=ComboFD] run function asa_animator:teo/manager/change_combo/main_fd
execute if entity @s[tag=ComboBA] run function asa_animator:teo/manager/change_combo/main_ba
execute if entity @s[tag=ComboBB] run function asa_animator:teo/manager/change_combo/main_bb
execute if entity @s[tag=ComboBC] run function asa_animator:teo/manager/change_combo/main_bc

scoreboard players add #mhdp_teo_combo_count AsaMatrix 1