
# 行動カウント増加
    # execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_zinogre_anger_count AsaMatrix 1

# 帯電コンボ
    execute if entity @s[tag=ComboTA] run function asa_animator:zinogre/manager/change_combo/main_ta
    execute if entity @s[tag=ComboTB] run function asa_animator:zinogre/manager/change_combo/main_tb
    execute if entity @s[tag=ComboTC] run function asa_animator:zinogre/manager/change_combo/main_tc
    execute if entity @s[tag=ComboTD] run function asa_animator:zinogre/manager/change_combo/main_td

    # execute if entity @s[tag=ComboA] run function asa_animator:zinogre/manager/change_combo/main_a

scoreboard players add #mhdp_zinogre_combo_count AsaMatrix 1