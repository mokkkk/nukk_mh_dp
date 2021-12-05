
execute unless entity @s[tag=Phase2] if predicate asa_animator:random/050 run tag @s add SComboB
execute unless entity @s[tag=SComboB] run tag @s add LComboB
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0