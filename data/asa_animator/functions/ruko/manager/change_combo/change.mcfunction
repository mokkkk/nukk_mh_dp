
# 行動カウント増加
execute unless entity @s[tag=DestroyHead] run scoreboard players add #mhdp_ruko_actcount_lv AsaMatrix 1
scoreboard players add #mhdp_ruko_actcount_phase AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players remove #mhdp_ruko_anger_count AsaMatrix 1

execute if entity @s[tag=ComboA] run function asa_animator:ruko/manager/change_combo/main_a


scoreboard players add #mhdp_ruko_combo_count AsaMatrix 1