
execute unless entity @s[tag=IsAnger] if predicate asa_animator:random/070 run tag @s add SComboB
execute if entity @s[tag=IsAnger] if predicate asa_animator:random/050 run tag @s add SComboB
execute unless entity @s[tag=SComboB] run tag @s add LComboB
scoreboard players set #mhdp_brachy_combo_count AsaMatrix 0