
execute unless entity @s[tag=Phase2] if predicate asa_animator:random/050 run tag @s add SComboD
execute unless entity @s[tag=SComboD] run tag @s add LComboD
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0