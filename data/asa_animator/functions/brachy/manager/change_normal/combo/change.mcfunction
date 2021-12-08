
# 粘菌カウント増加
scoreboard players add #mhdp_brachy_bomb_count AsaMatrix 1

execute if entity @s[tag=SComboA] run function asa_animator:brachy/manager/change_normal/combo/a
execute if entity @s[tag=SComboB] run function asa_animator:brachy/manager/change_normal/combo/b
execute if entity @s[tag=SComboC] run function asa_animator:brachy/manager/change_normal/combo/c
execute if entity @s[tag=SComboD] run function asa_animator:brachy/manager/change_normal/combo/d
execute if entity @s[tag=SComboM] run function asa_animator:brachy/manager/change_normal/combo/m
execute if entity @s[tag=LComboA] run function asa_animator:brachy/manager/change_normal/combo/la
execute if entity @s[tag=LComboB] run function asa_animator:brachy/manager/change_normal/combo/lb
execute if entity @s[tag=LComboC] run function asa_animator:brachy/manager/change_normal/combo/lc
execute if entity @s[tag=LComboD] run function asa_animator:brachy/manager/change_normal/combo/ld
execute if entity @s[tag=LComboM] run function asa_animator:brachy/manager/change_normal/combo/lm

scoreboard players add #mhdp_brachy_combo_count AsaMatrix 1