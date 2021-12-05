
execute unless entity @s[tag=Phase2] if predicate asa_animator:random/050 run tag @s add SComboE
execute unless entity @s[tag=SComboE] run tag @s add LComboE
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0