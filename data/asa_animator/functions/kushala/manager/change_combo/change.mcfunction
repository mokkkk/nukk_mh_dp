
# 風纏いカウント増加
# scoreboard players add #mhdp_kushala_bomb_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:kushala/manager/change_combo/main_a
execute if entity @s[tag=ComboB] run function asa_animator:kushala/manager/change_combo/main_b
execute if entity @s[tag=ComboC] run function asa_animator:kushala/manager/change_combo/main_c
execute if entity @s[tag=ComboD] run function asa_animator:kushala/manager/change_combo/main_d
execute if entity @s[tag=ComboE] run function asa_animator:kushala/manager/change_combo/main_e
execute if entity @s[tag=ComboF] run function asa_animator:kushala/manager/change_combo/main_f
execute if entity @s[tag=ComboG] run function asa_animator:kushala/manager/change_combo/main_g
execute if entity @s[tag=ComboH] run function asa_animator:kushala/manager/change_combo/main_h

scoreboard players add #mhdp_kushala_combo_count AsaMatrix 1