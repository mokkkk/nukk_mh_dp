
execute unless entity @s[tag=Phase2] if predicate asa_animator:random/050 run tag @s add SComboM
execute unless entity @s[tag=SComboM] run tag @s add LComboM
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0